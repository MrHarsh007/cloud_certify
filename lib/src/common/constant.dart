// ignore_for_file: constant_identifier_names

import 'dart:io';
import 'package:flutter/material.dart';

const double MARGIN = 18;
const double RADIUS = 16;
const double SMALL_RADIUS = 8;
const double SPACE8 = 8;
const double SPACE4 = 4;
const double BOX_PADDING = 16;
const double SPACE12 = 12;
const double SPACE15 = 15;
const double SPACE25 = 25;

/// ------------------------------------ All Screen Padding ------------------------
EdgeInsets allScreenPadding({
  double iosTop = 60.0,
  double androidTop = 50.0,
  double androidBottom = 16.0,
  double iosBottom = 16.0,
  double left = 16.0,
  double right = 16.0,
}) {
  double top = Platform.isIOS ? iosTop : androidTop;
  double bottom = Platform.isIOS ? iosBottom : androidBottom;
  return EdgeInsets.only(right: right, left: left, top: top, bottom: bottom);
}

/// ------------------------------------ App Constants ------------------------
const String APP_NAME = 'Cloud Certify';
const String APP_SUPPORT_EMAIL = 'harsh@aviato.consulting';
const double SPACE_BETWEEN_WIDGET = 15;
const List<String> countryCodes = ['+91', '+61', '+1'];

const String TERMS_CONDITION = 'https://cloudcertify.web.app/landing/terms';
const String PRIVACY_POLICY = 'https://cloudcertify.web.app/landing/privacy';

/// ------------------------------------ Authentication Constants ------------------------
const String PASSWORD_INSTRUCTION =
    'Enter at least 8 characters with uppercase, lowercase, a number, and a symbol.';
const String CONFIRM_PASSWORD_INSTRUCTION =
    'Confirm Password must match Password.';

/// ------------------------------------ Query Constants ------------------------
const String QUERY_UNIQUE_ID = "unique_id";

///------------------------------------ for Image or video upload  type ------------------------

const String IMAGE_TYPE = "image";
const String VIDEO_TYPE = "video";

///------------------------------------ for Image or video upload  folder ------------------------

const String PROFILE_FOLDER = "profile_image";
const String COVER_FOLDER = "cover_image";
const String POST_FOLDER = "post_image";
const String SUPPORT_FOLDER = "support_image";
const String DEFAULT_FOLDER = "default";

/// ------------------------------------ Stripe Redirect Urls ------------------------
const String STRIPE_REDIRECT_URL = "https://example.com/success";
const String STRIPE_BACK_URL = "https://example.com/cancel";

/// ------------------------------------ Sharepref const ------------------------
const String IS_FIRST_TIME_USER = 'is_first_time_user';
const String IS_KYC_COMPLETED = 'is_kyc_completed';

//  ------------------------------------ route parameter constants ------------------------
const String IS_COMPLETE_PROFILE = 'is_complete_profile';

//  ------------------------------------ Activity Constants ------------------------
const String ACCOUNT_CREATED_ACTIVITY = "Account Successfully Created";
const String ACCOUNT_LOGIN_ACTIVITY = "Account Successfully Logged In";
const String ACCOUNT_LAST_ACCESS_ACTIVITY = "Last Accessed Website";
const String STREAK_ANSWER_CORRECT_ACTIVITY =
    "Daily Quiz Attempt Logged – Correct Answer";
const String STREAK_ANSWER_WRONG_ACTIVITY =
    "Daily Quiz Attempt Logged – Incorrect Answer";

const List<String> certificationsList = [
  "Google Cloud Certified - Cloud Engineer",
  "Google Cloud Certified - Professional Cloud Architect",
  "Google Cloud Certified - Professional Data Engineer",
  "Google Cloud Certified - Professional Cloud Developer",
  "Google Cloud Certified - Professional Network Engineer",
  "Google Cloud Certified - Professional Security Engineer",
  "Google Cloud Certified - Professional ML Engineer",
  "Google Cloud Certified - Professional DevOps Engineer",
  "Other",
];

List<String> releaseNotes = [
  "Introduced daily quiz feature to help users build consistent study habits and maintain streaks.",
  "Added Test Library with filtering by certification (AWS, Azure, GCP, etc.) and test popularity.",
  "Implemented Exam Screen with intuitive navigation, timer, and question panel layout.",
  "Enabled Test History view with performance stats, score analysis, and attempt tracking.",
  "Launched Resources hub with curated courses, PDFs, and articles for certification prep.",
  "Developed profile management and Settings screen with update and About Us section.",
];

String aboutUs =
    '''CloudCertify is a modern certification preparation platform designed to help individuals master Google Cloud Platform (GCP) certifications with confidence. The platform delivers an engaging, user-friendly experience that supports daily practice, full-length test simulations, and access to curated learning materials tailored to certification success.

Founded in 2025 by [Yash Rai](https://www.linkedin.com/in/yashrai1224) and [Harsh Porwal](https://www.linkedin.com/in/erharshporwal), CloudCertify was created to address the real challenges candidates face when preparing for cloud certifications—such as lack of consistency, outdated materials, and limited performance tracking. With CloudCertify, users are encouraged to stay committed through daily quizzes that maintain preparation streaks, simulated exams that closely mimic real test environments, and comprehensive insights into their progress.

The platform also features a dedicated resources section that includes carefully selected courses, PDFs, and articles to enrich the learner’s journey. Users can track their test history and performance metrics to better understand their strengths and focus areas.

CloudCertify’s front end is developed using Flutter, offering a seamless cross-platform experience on both mobile and web. The backend leverages FastAPI for high-performance APIs and Firebase for secure authentication and real-time data management.

While CloudCertify currently focuses on GCP certifications, the platform is built with scalability in mind and will soon expand to include certifications from other major cloud providers such as AWS and Azure. Our mission is to become the go-to platform for cloud certification aspirants worldwide.''';

String examInstruction = '''
1. **Starting the Exam:**
   - Click the **Start Test** button at the top-right corner of the screen to begin your practice session.

2. **Answering Questions:**
   - Select your answer by clicking on one of the options.
   - Click **Check Answer** to submit and immediately see if your selection was correct or incorrect.
   - The correct answer and an explanation will be displayed after submission.

3. **Navigating Between Questions:**
   - Use the **question grid** on the left sidebar to navigate through the 60 questions.
   - Question statuses are color-coded:
     - **Blue** – Current question.
     - **Green** – Correctly answered.
     - **Red** – Incorrectly answered.
     - **Gray** – Not yet attempted.

4. **Tracking Progress:**
   - Your progress, score, and number of attempts are shown in real time in the left sidebar.
   - The exam is divided by question number, and you can revisit any question at any time.

5. **Viewing Explanations:**
   - After answering, an explanation is provided beneath the selected answer to help you understand the concept.

6. **Exiting or Completing the Test:**
   - Click the **Back Arrow** or **Close Button** to exit the test. Your progress will be saved.
   - Click **Finish Test** once you've completed all questions. Results and statistics will be shown, but the test cannot be resumed afterward.

7. **Repeating the Test:**
   - You can retake the same test multiple times to strengthen your understanding and track improvement.

''';

const List<String> resourcesFilter = ["All", "Most Popular", "Most Viewed"];

const List<Map<String, dynamic>> recentActivity = [
  {"activity": "Accessed GCP Console", "timestamp": 1696154400},
  {
    "activity": "Completed 'Associate Cloud Engineer' quiz",
    "timestamp": 1696161000
  },
  {
    "activity": "Reviewed 'Professional Cloud Architect' material",
    "timestamp": 1696230900
  },
];

const List<Map<String, dynamic>> recommendedTests = [
  {
    "testName": "Associate Cloud Engineer Practice Test",
    "numberOfQuestions": 50,
    "durationInHours": 2,
    "type": "Recommended"
  },
  {
    "testName": "Professional Cloud Architect Mock Exam",
    "numberOfQuestions": 60,
    "durationInHours": 3,
    "type": "New"
  },
  {
    "testName": "Professional Data Engineer Quiz",
    "numberOfQuestions": 40,
    "durationInHours": 1.5,
    "type": "Recommended"
  },
  {
    "testName": "Machine Learning Engineer Assessment",
    "numberOfQuestions": 45,
    "durationInHours": 2,
    "type": "Trending"
  },
  {
    "testName": "Network Engineer Certification Test",
    "numberOfQuestions": 55,
    "durationInHours": 2.5,
    "type": "Recommended"
  },
  {
    "testName": "Security Engineer Practice Exam",
    "numberOfQuestions": 50,
    "durationInHours": 2,
    "type": "Popular"
  },
  {
    "testName": "Cloud Fundamentals Quiz",
    "numberOfQuestions": 30,
    "durationInHours": 1,
    "type": "New"
  },
  {
    "testName": "Advanced Cloud Architecting Test",
    "numberOfQuestions": 70,
    "durationInHours": 3.5,
    "type": "Recommended"
  },
];
