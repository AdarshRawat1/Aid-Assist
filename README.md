<h1 align="center">Aid Assist</h1> <br>
<h3 align="center"> Assisting the aid to ensure every step forward is a leap towards brighter futures. </h3>
<p align="center">
  <a href="https://github.com/AKACHI-4/Aid-Employ/releases">
    <img wwidth="120" height="120" alt="Aid Assist" src="https://github.com/AdarshRawat1/Solution-challenge-Flutter/assets/100958893/064dd7be-022b-4920-9ab2-412f283a1b1e">
  </a>
</p>

<p align="center">
  A flutter-based Machine learning powered cross platform social app that provides a platform for Aiding driven community discussions and content sharing. 
</p>

 <p align="center">
    <br />
    <a href="https://drive.google.com/file/d/1Ljn3FPYshn7CR5IN_f8OcxU-pO9WF7yq/view?usp=sharing">View Demo</a>
    ·
   <a href="https://github.com/AdarshRawat1/Aid-Assist/releases/download/Latest/app-release.V1.2.2.apk"> Download APK</a>
    ·
    <a href="https://github.com/AdarshRawat1/Solution-challenge-Aid-Assist/issues">Report Bug / Request Feature</a> 
   - 
   <a href="https://t.me/Ada_R01_bot">Ada Telegram Chatbot</a> 
   - 
   <a href="https://appdistribution.firebase.dev/i/4f015736bd30df0b"> Click here to become a tester </a> 
  </p>

<br>


## Overview

- Streamlining support for local welfare initiatives on social media.
- Connect volunteers and sponsors easily.
- Features include:
  - Mobile Application
  - Telegram chatbot
  - Gemini Pro Chat Model for efficient tagging
- Locate Government donation centers and support reachout points easily

## Project Details
### UN Sustainable Development Goals

The project aligns with four SDGs: No Poverty, Zero Hunger, Quality Education, and Decent Work and Economic Growth.
<!-- GOALS -->
### Our Goals
No Poverty               | Zero Hunger             |   Quality Education                  |  Decent Work and Economic Growth
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:|
![](https://developers.google.com/community/images/gdsc-solution-challenge/goal-01_480.png?raw=true)|![](https://developers.google.com/community/images/gdsc-solution-challenge/goal-02_480.png?raw=true)|![](https://developers.google.com/community/images/gdsc-solution-challenge/goal-04_480.png?raw=tru)|![](https://developers.google.com/community/images/gdsc-solution-challenge/goal-08_480.png?raw=true)|

### Problem Statement

In the crowded landscape of social media, local initiatives often struggle for visibility, limiting the impact of social welfare efforts.

### Solution

Aid-Assist provides a dedicated platform using AI to connect users with relevant drives in their area.

### Impact

The platform centralizes information, connecting helping minds within communities. Initial goals include empowering users to post and discover drives seamlessely.

### Architecture

Architecture mirrors social media platform, with users and communities posting social drives. Backend processes and Gemini-Pro chat model assist in getting users drives data efficiently.
Including a telegram bot "ADA" deployed on Google Compute Engine.

### Technology Stack

- Frontend: Flutter, Routemaster, Riverpod 2.0
- Backend: Firebase (Auth, Storage , Firestore, Crashlytics, App Distribution, Test lab)
- AI Model: Gemini-Pro Chat
- Chatbot: Telegram, Google Compute Engine

### Future Steps
**Potential Scaling**
The team envisions direct government involvement, allowing efficient management of government-owned and local social welfare programs. 
Integration of AI models for program verification is a potential future enhancement.

### Scaling

To scale further, we are planning to keep the user interface minimal, implement automation for faster build and release, and ensure accessibility across devices (cross-origin support).

## Getting Started

> [!IMPORTANT]
> To set up the Telegram Bot, please refer to the guide here : [chatbot/README.md](https://github.com/AdarshRawat1/Aid-Assist/blob/main/chatbot/README.md)

### Prerequisites

To run any Android application built with Flutter you need to configure the enviroments in your machine, you can do this following the the tutorial provided by Google in [Flutter website](https://flutter.dev/docs/get-started/install)

- Flutter SDK
- Android Studio (to download Android SDK) [Installation Guide](https://developer.android.com/studio/install) 
- Xcode (for iOS development only) 
- Any IDE with Flutter SDK installed (ie. IntelliJ, Android Studio, VSCode etc)

### Flutter

- Clone the repository:
  ```bash
  git clone https://github.com/AdarshRawat1/Solution-challenge-Aid-Assist.git
  cd aid-assist-app
  ```
- Install dependencies:
  ```bash
  flutter pub get
  ```
- Run the app:
  ```bash
  flutter run
  ```
- for iOS Simulator (optional):
  ```bash
  open -a simulator
  ```
- to see the Web Output
  ```bash
  flutter run -d chrome --web-renderer html
  ```

<!-- FIREBASE -->
## Firebase

List of Communities             | Posts on Platform [Tagged using Gemini]
:-------------------------:|:-------------------------:|
![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Firebase_1.png?raw=true)|![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Firebase_3.png?raw=true)|

Test Lab [Multi-Device Testing]             | Usage Analytics
:-------------------------:|:-------------------------:|
![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Firebase_2.png?raw=true)|![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Firebase_4.png?raw=true)|

<!-- SCREENSHOTS -->
## Screenshots of Application [APK]

| Sign IN Screen              | Home Screen            | User's Community list                | Seach Option for Community Search |
|:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:|
|<img src="https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_1.jpg?raw=true" alt="Sign IN Screen" width="900"/>|<img src="https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_2.jpg?raw=true" alt="Home Screen" width="900"/>|<img src="https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_3.jpg?raw=true" alt="User's Community list" width="900"/>|<img src="https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_4.jpg?raw=true" alt="Search Option for Community Search" width="900"/>|

| Add Post Screen  | Text With link Post Screen        | Image Post Screen           | Text With Description post |
|:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:|
|<img src="https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_5.jpg?raw=true" alt="Add Post Screen" width="900"/>|<img src="https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_6.jpg?raw=true" alt="Text With link Post Screen" width="900"/>|<img src="https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_7.jpg?raw=true" alt="Image Post Screen" width="900"/>|<img src="https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_8.jpg?raw=true" alt="Text With Description post" width="900"/>|

| User Location Marker on Map        | Donation center Marker          | Support Outreach Marker   | Donation Map Screen [Zoomed out]  |
|:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:|
|<img src="https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_18.jpg?raw=true" alt=" User Location Marker on Map" width="900"/>|<img src="https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_17.jpg?raw=true" alt="Donation center Marker  " width="900"/>|<img src="https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_16.jpg?raw=true" alt="Support Outreach Marker" width="900"/>|<img src="https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_14.jpg?raw=true" alt="Donation Map Screen [Zoomed out] " width="900"/>|

| Profile Dashboard with Reputation          |    User Profile Drawer          | Home Screen Light mode     |
|:-------------------------:|:-------------------------:|:-------------------------:|
|<img src="https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_9.jpg?raw=true" alt="Profile Dashboard with Reputation" width="900"/>|<img src="https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_10.jpg?raw=true" alt="User Profile Drawer" width="900"/>|<img src="https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_11.jpg?raw=true" alt="Home Screen Light mode" width="900"/>|


<!-- SCREENSHOTS -->
## Screenshots of Telegram Bot [APK]

Get Started | Find Recent Drives of Cities | Locate Donation Centers [Community]              
:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Tele_1.jpg?raw=true)|![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Tele_2.jpg?raw=true)|![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Tele_3.jpg?raw=true)|


## Testing and Feedback 

We value your input and strive to make our app the best it can be. If you're interested in helping us test new features and provide feedback, we invite you to join our list of testers.

By becoming a tester, you'll get the opportunity to experience beta testing and try out upcoming features before they're released to the public. Meanwhile, stable releases can be found in the [Releases section](https://github.com/AdarshRawat1/Aid-Assist/releases/tag/Stable) . You can also contribute by building the app locally and testing specific functionalities to help us find and fix bugs. Alternatively, you can join our testing app group to access beta releases and provide [feedback directly](https://github.com/AdarshRawat1/Aid-Assist/issues).

To join our testing program, click [here](https://appdistribution.firebase.dev/i/4f015736bd30df0b) and become a part of shaping the future of our app!


<!-- YOUTUBE -->
## 📌 JOURNEY
- Global top 10 Submission video [YouTube](https://youtu.be/wdaK0qTUtWU)
- Global top 100 Video [YouTube](https://youtu.be/YZhykdsAA7E)
- Regional Bootcamp Submission [YouTube](https://youtu.be/e0kt3fsICAI)

## License

This project is licensed under the [MIT License](./LICENSE).

## Acknowledgments

We appreciate the support from the open-source community and look forward to making a positive impact together.
