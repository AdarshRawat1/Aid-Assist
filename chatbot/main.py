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

from telegram import ForceReply, Update
from telegram.ext import Application, CommandHandler, ContextTypes, MessageHandler, filters
from PIL import Image, ImageDraw, ImageFont
import os

import firebase_admin
from firebase_admin import credentials, firestore

my_bot_token = '6751113963:AAENWjtiK0ywvDida_yC6q0oHi8adDbyfbw'

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
      f"Hi {user.mention_html()}! 👋\n"
      "<b><i>I'm Ada</i></b>, your friendly chat bot 🤖!\n\n"
      "I'm here to help you <b><i>discover social events, community initiatives, and drives</i></b> happening around you.\n"
      "Whether you're looking for <b><i>volunteer opportunities, charity events, or community gatherings</i></b>, I've got you covered!\n\n"
      "Just share your <b><i>location</i></b> or <b><i>community name</i></b> with me, and I'll fetch the <b><i>latest happenings</i></b> in your area.\n"
      "(<i>we are restricted with tasks, so kindly provide only your location in a word or so</i>)\n\n"
      "<b><i>Let's explore together!</i></b> 🌍✨")

  await update.message.reply_html(message,
                                  reply_markup=ForceReply(selective=True))


async def help_command(update: Update,
                       context: ContextTypes.DEFAULT_TYPE) -> None:
  """Send a message when the command /help is issued."""
  await update.message.reply_text("Help!")


async def location_handler(update: Update,
                           context: ContextTypes.DEFAULT_TYPE) -> None:
  user_message = update.message.text.capitalize()

  collection_ref = db.collection("posts")

  city_attribute = "communityName"
  city_operation = "=="

  # Query documents where the 'communityName' field contains the user's message
  documents = collection_ref.where(city_attribute, city_operation,
                                   user_message).limit(5).get()

  # Prepare a reply message with the fetched data
  reply_text = ""
  for document in documents:
    title = document.get("title").capitalize()
    community = document.get("communityName").capitalize()
    description = document.get("description")
    if description :
      description = description.capitalize()
    
    username = document.get("username").capitalize()

    reply_text += (f"<b>📌 Title:</b> {title}\n"
                   f"<b>🌍 Community:</b> {community}\n"
                   f"<b>ℹ️ Description:</b> {description}\n"
                   f"<b>👤 Username:</b> {username}\n\n")

  if not reply_text:
    reply_text = f"<b>No data found for the given location.</b>\n\n<i>Probably you've entered something mismatched, kindly try with something else.</i>"
  else:
    user_message = user_message.capitalize()

    reply_text = f"<b>Here's list of some exciting social drives happening in {user_message}! 🌟</b>\n\n{reply_text}"

  # Split the reply_text into chunks of maximum message length allowed by Telegram
  message_chunks = [
      reply_text[i:i + 4096] for i in range(0, len(reply_text), 4096)
  ]

  # Reply to the user with each chunk separately
  for chunk in message_chunks:
    await update.message.reply_html(chunk)


def main() -> None:
  """Start the bot."""
  # Create the Application and pass it your bot's token.
  application = Application.builder().token(my_bot_token).build()

  # on different commands - answer in Telegram
  application.add_handler(CommandHandler("start", start))
  application.add_handler(CommandHandler("help", help_command))

  # on non command i.e message - echo the message on Telegram
  application.add_handler(
      MessageHandler(filters.TEXT & ~filters.COMMAND, location_handler))

  # Run the bot until the user presses Ctrl-C
  application.run_polling(allowed_updates=Update.ALL_TYPES)


if __name__ == "__main__":
  main()
