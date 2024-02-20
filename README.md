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

## Overview
Aid Employ is a cross-platform solution designed to address the challenges faced by local welfare initiatives in getting attention and support on mainstream social media. The platform allows users and organizations to post and discover social drives, connecting volunteers and sponsors for collaborative efforts.The project incorporates a chatbot using Gemini Pro, fine-tuned for seamless navigation. Features include description and title improvement, image generation, and more to enhance the visibility and effectiveness of social drive posts _(in working)_.

## Project Details

### Problem Statement
In the vast landscape of social media, local initiatives often get lost, hindering the impact of social welfare drives. Aid-Employ aims to provide a dedicated space for these initiatives, leveraging generative AI to guide users to platform with providing relevant drives in their area.

### Impact
The platform centralizes information, connecting helping minds within specific areas. Initial goals include empowering users to post and discover drives. Quantifiable data is collected through Firebase Firestore, filtering location-specific posts. Tools such as Makersuite Gemini, Google Colab, Android, and Flutter drive the project's impact.

![8b824041-82c0-4d61-9aee-5cdc44270a4d](https://github.com/AKACHI-4/Aid-Employ/assets/99159580/4c4ee604-0c73-42db-b0ef-5ceaffdc592b)

### UN Sustainable Development Goals
The project aligns with four SDGs: No Poverty, Zero Hunger, Quality Education, and Decent Work and Economic Growth. It addresses the separation between economic classes, facilitating efficient social welfare drives.

### Architecture
Solution's architecture mirrors a basic social media platform, with normal users and communities posting social drives. Backend processes and the Gemini-Pro model assist in guiding users, maintaining rules, and providing AI-driven insights.

### Technology Stack
- Frontend: Flutter, Routemaster, Riverpod 2.0, 
- Backend: Firebase (Auth, Storage , Firestore)
- AI Model: Gemini-Pro Chat & Vision
- Model Tuning: Google Cloud Platform

![d61a7a49-89d7-4395-abb2-25e204d0c8db](https://github.com/AKACHI-4/Aid-Employ/assets/99159580/9b1c4640-b104-4ba1-8e9a-6b7564ceba70)

### Challenges
The primary challenge is with Gemini-Pro's unavailability for fine-tuning, making it difficult to train the model effectively. The team considers alternative models or awaits fine-tuning support.

### Future Steps
The team envisions direct government involvement, allowing efficient management of government-owned social welfare programs. Integration of AI models for program verification is a potential future enhancement.

### Scaling
To scale further, we are planning to keep the user interface minimal, implement post filtering options, and ensure accessibility across browsers and iOS devices.

## Getting Started
1. Clone the repository:
   ```bash
   git clone https://github.com/AdarshRawat1/Solution-challenge-Aid-Assist.git
   ```
- Create Firebase Project
- Enable Authentication (Google Sign In, Guest Sign In)
- Make Firestore Rules
- Create Android, iOS & Web Apps
- Use FlutterFire CLI to add the Firebase Project to this app.

2. Install dependencies:
   ```bash
   cd Aid-Employ
   cd app
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```
4. <optional> for iOS Simulator:
   ```bash
   open -a simulator 
   ```

5. to see the Web Output 
  ```bash
   flutter run -d chrome --web-renderer html 
  ```
### License
This project is licensed under the [MIT License](./LICENSE).

### Acknowledgments
We appreciate the support from the open-source community and look forward to making a positive impact together.
