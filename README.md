# Cloud Certify 🏆

A comprehensive Flutter application for Google Cloud certification preparation, featuring practice tests, AI-powered chatbot assistance, and comprehensive learning resources.

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Firebase](https://img.shields.io/badge/Firebase-039BE5?style=for-the-badge&logo=Firebase&logoColor=white)](https://firebase.google.com)
[![Google Cloud](https://img.shields.io/badge/GoogleCloud-%234285F4.svg?style=for-the-badge&logo=google-cloud&logoColor=white)](https://cloud.google.com)

## ✨ Features

- 🎯 **Practice Tests** - Comprehensive practice exams for various Google Cloud certifications
- 🤖 **AI Chatbot** - Intelligent assistant for learning support and doubt resolution
- 📊 **Analytics Dashboard** - Track your progress, scores, and improvement areas
- 🏆 **Leaderboards** - Compete with other learners globally
- 📚 **Resource Library** - Curated study materials and documentation
- 🔥 **Daily Streaks** - Daily questions to maintain consistent learning
- 🎨 **Modern UI** - Clean, intuitive interface with dark/light mode support
- 🔐 **Secure Authentication** - Firebase Auth with social login options

## 🚀 Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:
- **Flutter SDK** (3.6.1 or higher)
- **Dart SDK** (included with Flutter)
- **VS Code** or **Android Studio** with Flutter extensions
- **Git**
- **Chrome** (for web development and testing)

### 🔧 Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/MrHarsh007/cloud_certify.git
   cd cloud_certify
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure Firebase** (Required)
   
   Since this app uses Firebase for authentication and our Cloud Run service for the API, you need to set up Firebase:
   
   a. **Create a Firebase project**
      - Go to [Firebase Console](https://console.firebase.google.com/)
      - Create a new project or use an existing one
      - Enable Authentication, Firestore, and Storage
   
   b. **Add Web app to Firebase**
      - Add Web app with your domain
      - Copy the Firebase configuration
   
   c. **Update configuration files**
      - Update `lib/firebase_options.dart` with your Firebase web config
      - Update `web/index.html` if needed for Firebase hosting
   
   d. **Configure authentication providers**
      - Enable Email/Password authentication
      - Enable Google Sign-in (optional)
      - Configure authorized domains for web authentication
      - **Important**: Add `localhost:8000` to authorized domains for development

4. **Generate required code**
   ```bash
   # Generate all required code (API client + freezed)
   ./generate.sh all
   
   # Or generate individually:
   ./generate.sh api      # Generate OpenAPI client
   ./generate.sh freezed  # Generate freezed/injectable code
   ```

5. **Run the application**
   ```bash
   # Run in debug mode (will use localhost:8000 by default)
   flutter run -d chrome
   
   # Run on specific port
   flutter run -d chrome --web-port=8000
   
   # Access the app at: http://localhost:8000
   ```

## 🏗️ Project Structure

```
cloud_certify/
├── api/                          # Generated API client
│   └── cloud_certify_service_api/
├── assets/                       # Static assets
│   ├── fonts/                   # Custom fonts (Outfit family)
│   ├── json/                    # Lottie animations
│   ├── logo/                    # App logos and branding
│   ├── png/                     # PNG images
│   ├── social/                  # Social login icons
│   ├── svg/                     # SVG icons and illustrations
│   └── test_stats/              # Test statistics icons
├── lib/
│   ├── src/
│   │   ├── common/              # Common utilities and enums
│   │   ├── features/            # Feature-based modules
│   │   ├── shared/              # Shared widgets and utilities
│   │   └── ...
│   ├── gen/                     # Generated code (assets, etc.)
│   ├── injection/               # Dependency injection setup
│   ├── firebase_options.dart    # Firebase configuration
│   ├── main.dart               # App entry point
│   └── open_api_generator.dart # OpenAPI generation config
├── generate.sh                  # Code generation script
└── pubspec.yaml                # Dependencies and project config
```

## 🛠️ Development

### Development Server

When running in debug mode, the application will be available at:
- **Local URL**: `http://localhost:8000`
- **Network URL**: `http://your-ip:8000` (accessible from other devices on same network)

### Code Generation

This project uses several code generation tools. Use the provided script for easy management:

```bash
# Generate OpenAPI client from remote API
./generate.sh api

# Generate freezed models, injectable dependencies, etc.
./generate.sh freezed

# Generate everything
./generate.sh all

# Show help
./generate.sh help
```

### State Management

- **BLoC Pattern** - Using `flutter_bloc` for predictable state management
- **GetX** - For simple state management and navigation
- **Injectable** - Dependency injection

### Architecture

- **Clean Architecture** - Separation of concerns with clear boundaries
- **Feature-based Structure** - Each feature is self-contained
- **Repository Pattern** - Data layer abstraction

## 🌐 API Integration

The app integrates with our custom Cloud Run service hosted on Google Cloud Platform:

- **Base URL**: `https://base-service-6070296894.us-central1.run.app`
- **API Documentation**: Available via OpenAPI spec at `/openapi.json`
- **Authentication**: Firebase Auth tokens for secure API access

The API client is automatically generated using OpenAPI Generator and provides:
- Type-safe API calls
- Automatic serialization/deserialization
- Built-in error handling
- Request/response logging (in debug mode)

## 🔐 Security

- **Firebase Authentication** - Secure user authentication
- **API Token Validation** - All API calls are authenticated
- **Data Encryption** - Sensitive data is encrypted at rest
- **Privacy Controls** - GDPR compliant data handling

## 📱 Supported Platforms

- ✅ **Web** (Progressive Web App)
- 🔄 **Desktop** (Windows/macOS/Linux - Coming soon)

## 🎨 Design System

- **Typography**: Custom Outfit font family
- **Color Scheme**: Adaptive design with light/dark mode
- **Components**: Reusable UI components following Material Design 3
- **Animations**: Smooth micro-interactions using Lottie and custom animations

## 🧪 Testing

```bash
# Run unit tests
flutter test

# Run widget tests
flutter test test/

# Run tests in Chrome
flutter test -d chrome

# Generate test coverage
flutter test --coverage
```

## 🚢 Deployment

### Web
```bash
# Build for production
flutter build web --release

# Build with custom base href (for subdirectory hosting)
flutter build web --release --base-href="/your-app-path/"

# Serve locally for testing
flutter build web && python -m http.server 8000 -d build/web
```

### Firebase Hosting (Recommended)
```bash
# Install Firebase CLI
npm install -g firebase-tools

# Login to Firebase
firebase login

# Initialize Firebase hosting in your project directory
firebase init hosting

# During initialization, configure:
# - Select your Firebase project
# - Set public directory to: build/web
# - Configure as single-page app: Yes
# - Set up automatic builds and deploys with GitHub: Optional

# Build the Flutter web app
flutter build web --release

# Deploy to Firebase
firebase deploy

# Your app will be available at: https://your-project-id.web.app
```

**Firebase Hosting Configuration Tips:**
- Public directory should be `build/web`
- Enable single-page app (SPA) configuration for Flutter routing
- Add custom domain in Firebase Console if needed
- Set up GitHub Actions for automatic deployment (optional)

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Team

- **Author**: Aviato Consultancy
- **Maintainer**: [MrHarsh007](https://github.com/MrHarsh007)

## 📞 Support

For support, email us at support@cloudcertify.com or join our [Discord community](https://discord.gg/cloudcertify).

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Firebase for backend infrastructure
- Google Cloud Platform for hosting our API services
- The open-source community for various packages used in this project

---

**Happy Learning! 🚀**
