+++
title = "My notes for Google I/O 2019 Developer Keynote Day 2"
#description = "This is a showcase post."
date = 2019-05-09T16:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["notes", "googleio"]

[extra]
ToC = false
+++

- Kotlin is the focus for Android development from now.
- Android Jetpack
  - CameraX
- Android Studio
  - Fixed over 400+ bugs
  - Instant Run is great but not reliable. They rebuilt the foundation of Instant Run.
  - 3.5 Beta launches today
  - New in AS 3.5
    - Memory usage
    - CPU performanc
    - Build speed
    - UI responsiveness
    - Apply changes
    - Project upgrades
    - Gradle sync
    - Deployment flow
    - https://g.co/androidstudio/preview
- Google Assistant
  - Content Creators
    - HowTo Template
  - App developers
    - App Actions (https://g.co/appactions)
      - Health & fitness
      - Finance
      - Ridesharing
      - Food ordering
    - Interactive Canvas (https://g.co/interactivecanvas)
      - Games
- Open web
  - Latest improvements to Chrome and their developer tools:
    - Faster experiences
    - Powerful capabilities
    - User trust and safety
  - Chrome 74 startup time - web page loads almost half the time.
    - This speed ups are partly due to V8 - 2X faster JS parsing, 20% less memory usage
  - Image lazy loading
    ```html
    <img src="io2019ftw.png" alt="Google I/O 2019" loading="lazy" />
    ```
  - Lighthouse
    - Tool to audit websites
    - Performance budgets
  - PWA
  - User trust and safety
    - Private and secure cookies by default
    - Easy to use privacy controls
    - Anti-fingerprinting protection
  - Keep track the latest features and best practices of the web
    - New website called https://web.dev to help.
  - Chrome OS
    - Linux for Chromebooks.
    - Android Studio is now available with one-click install.
    - All Chromebooks launch this year will be Linux-ready right out of the box.
- Machine Learning
  - Google AI
    - Out of the box - ML Kit
    - Performance - Google Cloud
    - Flexibility - TensorFlow
    - ML Kit
      - Vision
        - Landmark detection
        - Image labeling
        - Barcode scanning
        - Face detection
      - Natural Language
        - Language identification
        - Smart Reply
      - Custom
        - Model Serving
      - New features
        - On-device translation.
        - Object detection and tracking API.
          - Pair with Google Cloud Product Search API.
        - You can get started using these new APIs today through Firebase (https://g.co/mlkit).
    - Google Cloud (https://g.co/cloud/ai)
      - For developer who needs more performance for large ML workloads, Google Cloud provides a complete set of AI tools and this includes Cloud AutoML.
      - Cloud AutoML Tables
      - Cloud AutoML Video Intelligence
      - Cloud TPU Pods beta
    - TensorFlow
      - TensorFlow 2.0 alpha (all about usability)
        - More intuitive APIs
        - Less code
        - Portability
      - TensorFlow.JS
        - Build, train and deploy custom models right in the browser and on the Node.js platform.
        - Build custom models
        - Train new models or retrain existing models
        - Deploy with JavaScript
      - TensorFlow Lite
        - For developers working with on-device platform such as mobile devices and IoT
        - Demo of "Dance Like", an app by Google. All on device, simultaneously in real-time. The 5 on-device tasks running at the same time:
          - Running two body-part segmentation models
          - Matching the segmentation models
          - Running dynamic time warping
          - Playing a video
          - Encoding a video
        - It's that cool!?
- Firebase
  - Build your app with fully managed backend:
    - Build better apps
    - Improve app quality
    - Engage your users
  - Firebase + ML Kit make it easy for you to bring ML to your app regardless of expertise
    - Today we are expanding ML Kit with AutoML Vision Edge
      - Demo
  - Firebase Performance Monitoring for Android, iOS and the web.
- Flutter for web technical preview available today
- 10 years of Google Developer community
