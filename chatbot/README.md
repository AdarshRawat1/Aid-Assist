## Welcome to Ada

Ada is a Telegram chatbot designed to keep main application users updated about drives.

### Want to try

- **Start with here** (click the link): [Ada](https://t.me/Ada_R01_bot)

- Trigger the chatbot using the `/start` command.

### Features

- **Stay informed** : Ada keeps you updated with the latest drive events.
- **Easy interaction** : Navigate with Ada effortlessly using Inline buttons.

### Contribution Guidelines

- **Requirements**: Python 3.10 and pip installed

1. Change your directory to chatbot

   ```bash
   cd chatbot
   ```

2. Install the virtual environment

   ```bash
   python -m venv venv
   ```

3. Activate the virtual environment

   ```bash
   source venv/bin/activate
   ```

4. Install necessary dependencies

   ```bash
   pip install -r requirements.txt
   ```

5. Get the bot token: [obtain-your-bot-token](https://core.telegram.org/bots/tutorial/#obtain-your-bot-token)

6. Make a Firebase project and download the service keys: [firebase-setup](https://firebase.google.com/docs/admin/setup)

7. After downloading the service keys file, rename it to `service.json` and move it to the current working directory.

7. Run your bot using
   ```bash
   python main.py
   ```
