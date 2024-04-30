#!/usr/bin/env python
# pyright: reportUnusedVariable=false, reportGeneralTypeIssues=false

import logging
from google.cloud.firestore_v1 import collection

from telegram import __version__ as TG_VER

try:
  from telegram import __version_info__
except ImportError:
  __version_info__ = (0, 0, 0, 0, 0)  # type: ignore[assignment]

if __version_info__ < (20, 0, 0, "alpha", 1):
  raise RuntimeError(
      f"This example is not compatible with your current PTB version {TG_VER}. To view the "
      f"{TG_VER} version of this example, "
      f"visit https://docs.python-telegram-bot.org/en/v{TG_VER}/examples.html")

from telegram import InlineKeyboardButton, InlineKeyboardMarkup, ForceReply, Update, Location 
from telegram.ext import Application, CommandHandler, ContextTypes, MessageHandler, filters, CallbackQueryHandler
import os

import firebase_admin
from firebase_admin import credentials, firestore

my_bot_token = 'paste-your-bot-token-here'

# Enable logging
logging.basicConfig(
    format="%(asctime)s - %(name)s - %(levelname)s - %(message)s",
    level=logging.INFO)
# set higher logging level for httpx to avoid all GET and POST requests being logged
logging.getLogger("httpx").setLevel(logging.WARNING)

logger = logging.getLogger(__name__)

# Initialize Firebase
cred = credentials.Certificate("./service.json")
firebase_admin.initialize_app(cred)
db = firestore.client()


# Define a few command handlers. These usually take the two arguments update and
# context.
async def start(update: Update, context: ContextTypes.DEFAULT_TYPE) -> None:

  user = update.effective_user
  message = (
    f"Hello {user.mention_html()}! 👋\n"
    "I'm <b>Ada</b>, Your Helpful Friend! 🌟\n\n"
    "I'm here to assist you in <i>discovering community initiatives</i> and <i>offering your valuable support to those in need</i>.\n\n"
    "We're collaborating with the <b>Uttarakhand government</b> and focusing on four major cities <i>to streamline the donation and drive process</i>. Explore the options below.\n\n"
    "<i>Let's make a difference together!</i> 🛤️✨\n\n"
  )

  keyboard = [
    [
      InlineKeyboardButton("Dehradun", callback_data="Dehradun"),
      InlineKeyboardButton("Haridwar", callback_data="Haridwar"),
    ],
    [
      InlineKeyboardButton("Nainital", callback_data="Nainital"),
      InlineKeyboardButton("Roorkee", callback_data="Roorkee"),
    ],
    [
      InlineKeyboardButton("Make Dondation, Offer support", callback_data="Donate"),
    ]
  ]

  reply_markup = InlineKeyboardMarkup(keyboard)

  await update.message.reply_html(message, reply_markup=reply_markup)


async def send_location(update: Update,
                       context: ContextTypes.DEFAULT_TYPE) -> None:

  await update.callback_query.message.reply_venue(30.332301277525875, 78.05103631121074, "CM Donation Collection Center", "Uttarakhand CM Secretariat, 4 Subash Road, Dehradun, Uttarakhand 248001")

async def button(update: Update, context: ContextTypes.DEFAULT_TYPE) -> None:

  query = update.callback_query.data

  if query == "Donate":
    await send_location(update, context)
  else:
    await location_handler(update, query, context)


async def location_handler(update: Update, location, context: ContextTypes.DEFAULT_TYPE) -> None:
  
  print(update.message)

  collection_ref = db.collection("posts")

  city_attribute = "communityName"
  city_operation = "=="

  # Query documents where the 'communityName' field contains the user's message
  documents = collection_ref.where(city_attribute, city_operation, location).limit(5).get()

  if not documents:
    reply_text = f"There's no social drive in <b>{location}</b> right now,\n<i>but keep on checking; we will add drives regularly! 😊</i>"

    await update.callback_query.message.reply_html(reply_text)

    return

  # Prepare a reply message with the fetched data
  reply_text = ""
  for document in documents:
    title = document.get("title").capitalize()
    community = document.get("communityName").capitalize()

    description = document.get("description")
    if description :
      description = description.capitalize()
    username = document.get("username").capitalize()

    reply = (f"<b>{title}</b>, by <i>{username}</i>\n"
            f"<i>In 🌍 {community}</i>\n\n"
            f"ℹ️ {description}\n\n\n")

    await update.callback_query.message.reply_html(reply)

  text = "More events will be added regularly.\n<i>Thanks for your time! Keep on checking! </i>🎉"

  await update.callback_query.message.reply_html(text)

def main() -> None:
  """Start the bot."""
  # Create the Application and pass it your bot's token.
  application = Application.builder().token(my_bot_token).build()

  # on different commands - answer in Telegram
  application.add_handler(CommandHandler("start", start))
  application.add_handler(CallbackQueryHandler(button))

  # on non command i.e message - echo the message on Telegram
  # application.add_handler(
  #     MessageHandler(filters.TEXT & ~filters.COMMAND, location_handler))

  # Run the bot until the user presses Ctrl-C
  application.run_polling(allowed_updates=Update.ALL_TYPES)


if __name__ == "__main__":
  main()
