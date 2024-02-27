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
   <a href="./Aid-Employ-MVP.apk">View APK</a>
    ·
    <a href="https://github.com/AdarshRawat1/Solution-challenge-Aid-Assist/issues">Report Bug / Request Feature</a> 
  </p>

<br>

![906a0524-3253-407d-8e72-512bb39a9b9d](https://github.com/AKACHI-4/Aid-Employ/assets/99159580/531b33d4-b0fd-4f86-bd88-d7885288e5b4)


[Ada Telegram Chatbot](https://t.me/Ada_R01_bot)

![image](https://github.com/AdarshRawat1/Aid-Assist/assets/100958893/dad9ad43-45d3-4712-a29d-41010e12a74e)

## Overview

- Streamlining support for local welfare initiatives on social media.
- Connect volunteers and sponsors easily.
- Features include:
  - Mobile Application
  - Telegram chatbot
  - Gemini Pro Chat Model for efficient tagging
- Enhance post visibility with image generation. _(Currently in development)_

## Project Details
### UN Sustainable Development Goals

The project aligns with four SDGs: No Poverty, Zero Hunger, Quality Education, and Decent Work and Economic Growth.
<!-- GOALS -->
## Our Goals
No Poverty               | Zero Hunger             |   Quality Education                  |  Decent Work and Economic Growth
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:|
![](https://developers.google.com/community/images/gdsc-solution-challenge/goal-01_480.png?raw=true)|![](https://developers.google.com/community/images/gdsc-solution-challenge/goal-02_480.png?raw=true)|![](https://developers.google.com/community/images/gdsc-solution-challenge/goal-04_480.png?raw=tru)|![](https://developers.google.com/community/images/gdsc-solution-challenge/goal-08_480.png?raw=true)|

### Problem Statement

In the crowded social media space, local initiatives often struggle for visibility, limiting the impact of social welfare efforts.

### Solution

Aid-Employ provides a dedicated platform using AI to connect users with relevant drives in their area.

### Impact

The platform centralizes information, connecting helping minds within specific areas. Initial goals include empowering users to post and discover drives seamlessely.

![8b824041-82c0-4d61-9aee-5cdc44270a4d](https://github.com/AKACHI-4/Aid-Employ/assets/99159580/4c4ee604-0c73-42db-b0ef-5ceaffdc592b)

### Architecture

Architecture mirrors social media platform, with users and communities posting social drives. Backend processes and Gemini-Pro chat model assist in getting users drives data efficiently.

### Technology Stack

- Frontend: Flutter, Routemaster, Riverpod 2.0,
- Backend: Firebase (Auth, Storage , Firestore)
- AI Model: Gemini-Pro Chat
- Chatbot: Telegram, Google Compute Engine

### Challenges
The primary challenge was with Gemini-Pro's unavailability for fine-tuning. The team considers move ahead with a python script based telegram chatbot.
Multimodal Tasks with the Gemini API [firestore-multimodal-genai@0.0.8] Extension for the filtering and tagging of posts .

### Future Steps
**Under Development**
-  Integrating Google Maps to platform so that users can perform food/Cloth/toy deliver volunteering while going on evening walk. (resources available for charity can be posted in platform with pickup location).

**Potential Scaling**
The team envisions direct government involvement, allowing efficient management of government-owned and local social welfare programs. 
Integration of AI models for program verification is a potential future enhancement.

### Scaling

To scale further, we are planning to keep the user interface minimal, implement automation for faster build and release, and ensure accessibility across devices (cross-origin support).

## Getting Started

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

List of Communities             | List of Users 
:-------------------------:|:-------------------------:|
![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Firebase_1.png?raw=true)|![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Firebase_3.png?raw=true)|

Posts on Platform [Tagged using Gemini]             | Usage Analytics
:-------------------------:|:-------------------------:|
![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Firebase_2.png?raw=true)|![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Firebase_4.png?raw=true)|

<!-- SCREENSHOTS -->
## Screenshots of Application [APK]

Sign IN Screen              | Home Screen            | User's Community list                | Seach Option for Community Search
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_1.jpg?raw=true)|![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_2.jpg?raw=true)|![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_3.jpg?raw=true)|![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_4.jpg?raw=true)|

 Add Post Screen  | Text With link Post Screen        | Image Post Screen           | Text With Description post 
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_5.jpg?raw=true)|![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_6.jpg?raw=true)|![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_7.jpg?raw=true)|![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_8.jpg?raw=true)|

Profile Dashboard with Reputation          |    User Profile Drawer          | Home Screen Light mode     
:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_9.jpg?raw=true)|![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_10.jpg?raw=true)|![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Apk_11.jpg?raw=true)|

<!-- SCREENSHOTS -->
## Screenshots of Telegram Bot [APK]

Initial             | First Response          | List of Drives Based on location [Community]              
:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Tele_1.jpg?raw=true)|![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Tele_2.jpg?raw=true)|![](https://github.com/AdarshRawat1/Aid-Assist/blob/main/screenshots/Tele_3.jpg?raw=true)|



<!-- YOUTUBE -->
## 📌 JOURNEY
- Final Submission Video [YouTube](https://youtu.be/YZhykdsAA7E)
- Regional Bootcamp Submission [YouTube](https://youtu.be/e0kt3fsICAI)

## License

This project is licensed under the [MIT License](./LICENSE).

## Acknowledgments

We appreciate the support from the open-source community and look forward to making a positive impact together.
