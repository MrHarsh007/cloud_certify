import 'dart:io';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../common/constant.dart';
import '../secure_storage/path_storage.dart';
import '../theme/app_colors.dart';

class CommonAssets {
  static const String defaultImageMain = "assets/png/logo.png";

  /// Generates FirebaseStorage URL for the given icon.
  static Future<String?> getGCSUrl(String? icon) async {
    if (icon == null || icon.isEmpty) {
      icon = "assets/images/biya_circle_icon.svg";
    }
    try {
      String url = await FirebaseStorage.instance.ref(icon).getDownloadURL();
      PathStorage.savePath(icon, url);
      return url;
    } catch (e) {
      debugPrint('Error occurred: $e');
      return null;
    }
  }

  /// Returns a widget displaying an SVG image from assets.
  static Widget getAssetsSvgImage(String imagePath,
      {double height = 40, double width = 40, Color? color}) {
    return SvgPicture.asset(
      imagePath,
      height: height,
      width: width,
      fit: BoxFit.cover,
      color: color,
    );
  }

  /// Returns a widget displaying an image from assets.
  static Widget getAssetsImage({
    String imagePath = "",
    double height = 40,
    double width = 40,
    BoxFit fit = BoxFit.cover,
    required Alignment alignment,
    Color? color,
  }) {
    return Image.asset(
      imagePath.isEmpty ? defaultImageMain : imagePath,
      height: height,
      width: width,
      fit: fit,
      alignment: alignment,
      color: color,
    );
  }

  /// Returns a widget displaying a network image with a fallback to a default image.
  static Widget getNetworkImage(String imageUrl,
      {String defaultImage = "assets/logo/logo.png",
      double height = 90,
      double width = 90,
      BoxFit fit = BoxFit.cover,
      required Alignment alignment}) {
    return imageUrl.isNotEmpty
        ? CachedNetworkImage(
            imageUrl: imageUrl,
            height: height,
            width: width,
            fit: fit,
            filterQuality: FilterQuality.medium,
            errorWidget:
                (BuildContext context, String exception, dynamic stackTrace) {
              return getAssetsImage(
                  height: height, width: width, alignment: alignment);
            },
          )
        : getAssetsImage(height: height, width: width, alignment: alignment);
  }

  /// Returns a widget displaying a network image from Google Cloud Storage with a fallback to a default image.
  static Widget getGCSNetworkImage(String imageUrl,
      {String? defaultImage,
      double height = 40,
      double width = 40,
      double radius = 50,
      Alignment alignment = Alignment.center,
      BoxFit fit = BoxFit.cover}) {
    try {
      if (imageUrl.isEmpty) {
        return getAssetsImage(
            height: height,
            width: width,
            alignment: alignment,
            imagePath: defaultImage ?? defaultImageMain,
            fit: fit);
      } else {
        final data = PathStorage.readPathIfAvailable(imageUrl);

        if (data.isNotEmpty) {
          return getNetworkImage(
            data.toString(),
            height: height,
            width: width,
            fit: fit,
            alignment: alignment,
            defaultImage: defaultImage ?? defaultImageMain,
          );
        } else {
          return FutureBuilder(
            future: getGCSUrl(imageUrl),
            builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
              if (snapshot.hasError) {
                debugPrint("Error while loading image: ${snapshot.error}");
              }
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.data == null) {
                  return getAssetsImage(
                      height: height,
                      width: width,
                      alignment: alignment,
                      imagePath: defaultImage ?? defaultImageMain,
                      fit: fit);
                }
                return getNetworkImage(snapshot.data.toString(),
                    height: height,
                    width: width,
                    fit: fit,
                    alignment: alignment);
              } else {
                return getAssetsImage(
                    height: height,
                    width: width,
                    alignment: alignment,
                    imagePath: defaultImage ?? defaultImageMain,
                    fit: fit);
              }
            },
          );
        }
      }
    } on Exception {
      return getAssetsImage(
          height: height,
          width: width,
          alignment: alignment,
          imagePath: defaultImage ?? defaultImageMain,
          fit: fit);
    }
  }

  /// Copies the given text to the clipboard.
  static void copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
  }

  static List<String> monthList = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  /// Converts a timestamp to a formatted date string.
  static String timestampToDate(int timestamp) {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    List<String> months = [
      "",
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec"
    ];
    int day = dateTime.day;
    int month = dateTime.month;
    int year = dateTime.year;
    return '$day ${months[month]} $year';
  }

  /// Validates the given password against a regex pattern.
  static bool validatePassword(String password) {
    String pattern = r'^.{6,}$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(password);
  }

  /// Extracts the first name from a full name string.
  static String getFirstName(String displayName) {
    List<String> names = displayName.split(" ");
    return names.isNotEmpty ? names[0] : " ";
  }

  /// Extracts the last name from a full name string.
  static String getLastName(String displayName) {
    List<String> names = displayName.split(" ");
    return names.length > 1 ? names[1] : " ";
  }

  /// Returns a container decoration with optional border radius.
  static Decoration containerDecoration({double? radius}) {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? RADIUS),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 10,
              spreadRadius: 2,
              color: Colors.grey.withOpacity(0.1))
        ]);
  }

  /// Validates the given phone number against a regex pattern.
  static bool isPhoneNumberValid(String phoneNumber) {
    final phoneNumberPattern = RegExp(r'^\d{10}$');
    return phoneNumberPattern.hasMatch(phoneNumber);
  }

  /// Validates the given email address against a regex pattern.
  static bool isEmailValid(String email) {
    final emailPattern = RegExp(r'^[\w\.-]+@[a-zA-Z\d\.-]+\.[a-zA-Z]{2,}$');
    return emailPattern.hasMatch(email);
  }

  /// Extracts initials from a full name string.
  static String getInitials(String fullName) {
    List<String> nameParts = fullName.split(" ");
    String initials = '';
    for (var part in nameParts) {
      if (part.isNotEmpty) {
        initials += part[0].toUpperCase();
      }
    }
    return initials;
  }

  /// Formats a timestamp into a readable date and time string.
  static String formatTimestamp(int timestamp) {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    String formattedDate =
        "${dateTime.day} ${_getMonthName(dateTime.month)} ${dateTime.year}";
    String formattedTime = _formatTime(dateTime.hour, dateTime.minute);
    return "$formattedDate $formattedTime";
  }

  /// Helper function to get the month name from a month index.
  static String _getMonthName(int month) {
    List<String> months = [
      "",
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December"
    ];
    return months[month];
  }

  /// Helper function to format time in 12-hour format.
  static String _formatTime(int hour, int minute) {
    String period = hour >= 12 ? "PM" : "AM";
    int formattedHour = hour % 12 == 0 ? 12 : hour % 12;
    String formattedMinute = minute.toString().padLeft(2, '0');
    return "$formattedHour:$formattedMinute $period";
  }

  /// Formats a timestamp into a JSON object with date and time.
  static Map<String, String> formatTimestampJson(int timestamp) {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    String formattedDate =
        "${dateTime.day} ${_getMonthName(dateTime.month)} ${dateTime.year}";
    String formattedTime = _formatTime(dateTime.hour, dateTime.minute);
    return {
      "date": formattedDate,
      "time": formattedTime,
    };
  }

  static Color getRandomDarkColor() {
    // Generate a random dark color
    final random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(100), // Red (0-99 for dark shades)
      random.nextInt(100), // Green (0-99 for dark shades)
      random.nextInt(100), // Blue (0-99 for dark shades)
    );
  }

  static String getUserInitial(String userName) {
    // Get the first character of the user's name
    return userName.isNotEmpty ? userName[0].toUpperCase() : "?";
  }
}

/// Displays a dialog requesting camera permission.
void showDialogCameraPermission(
    {String? subTitle, required BuildContext context}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const SizedBox(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Allow Camera access'),
                ],
              ),
            ),
          ),
          content: Text(
            subTitle ??
                'If you want to use the QR code scanner, click on the below button to go to the app setting and allow camera access.',
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Cancel'),
              ),
              onPressed: () {
                context.pop();
              },
            ),
            CupertinoDialogAction(
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Go to Setting'),
              ),
              onPressed: () {
                context.pop();
                openAppSettings();
              },
            ),
          ],
        );
      });
}

/// Displays a dialog requesting gallery permission.
void showDialogGalleryPermission(
    {String? subTitle, required BuildContext context}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const SizedBox(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Allow Gallery access'),
                ],
              ),
            ),
          ),
          content: Text(
            subTitle ??
                "If you want to use the Upload Photo, click on the below button to go to the app setting and allow Photo Gallery access.",
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Cancel'),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Go to Setting'),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                openAppSettings();
              },
            ),
          ],
        );
      });
}

PermissionStatus? status;

/// Handles permission requests and actions based on the permission status.
Future<void> permission({
  required Future<PermissionStatus> status,
  required Function onTap,
  required Function onTapShowDialog,
}) async {
  if ((await status) == PermissionStatus.granted) {
    onTap();
    if (kDebugMode) {
      print('Permission granted');
    }
  } else if ((await status) == PermissionStatus.denied) {
    if (kDebugMode) {
      print('Permission denied');
    }
  } else if ((await status) == PermissionStatus.permanentlyDenied) {
    if (kDebugMode) {
      print('Permission permanently denied');
    }
    onTapShowDialog();
  } else if ((await status) == PermissionStatus.limited) {
    onTap();
    if (kDebugMode) {
      print('Permission limited');
    }
  }
}

/// Retrieves a media file from the gallery or camera.
void getMediaFile(bool isGallery,
    {Function(XFile)? onCallBack, int? isNumber, context}) async {
  final ImagePicker picker = ImagePicker();
  XFile? imageFile;
  if (isGallery) {
    imageFile = await picker.pickImage(
      imageQuality: 50,
      maxHeight: 480,
      maxWidth: 640,
      source: ImageSource.gallery,
    );
  } else {
    imageFile = await picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
      maxHeight: 480,
      maxWidth: 640,
    );
  }

  if (imageFile != null) {
    if (isNumber == 1) {}
    if (onCallBack != null) {
      onCallBack(imageFile);
    }
  }
}

/// Checks if media permission is granted.
Future<bool> checkMediaPermission() async {
  return checkPermission([Permission.photos]);
}

/// Checks if camera permission is granted.
Future<bool> checkCameraPermission() async {
  return checkPermission([Permission.camera]);
}

/// Checks if the specified permissions are granted.
Future<bool> checkPermission(List<Permission> list) async {
  if (Platform.isAndroid) {
    for (int i = 0; i < list.length; i++) {
      if (await list[i].status == PermissionStatus.granted) {
        list.removeAt(i);
      }
    }
    if (list.isNotEmpty) {
      Map<Permission, PermissionStatus> permission = await list.request();
      bool isGranted = true;
      for (int i = 0; i < list.length; i++) {
        if (permission[list[i]] != PermissionStatus.granted) {
          isGranted = false;
        }
      }
      return isGranted;
    } else {
      return true;
    }
  } else {
    return true;
  }
}

/// Displays an image picker dialog.
void showImagePickerDialog(
  BuildContext context,
  Function(XFile) onImageSelected,
) {
  showDialog(
    context: context,
    builder: (dialogContext) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(RADIUS),
      ),
      title: Text(
        "Select Image",
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
      ),
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(
                Icons.photo_size_select_actual_outlined,
                color: AppColor.primaryColor,
              ),
              title: Text(
                "Gallery",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              onTap: () {
                getMediaFile(true, onCallBack: (file) {
                  onImageSelected(file);
                });
                Navigator.pop(dialogContext);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.camera_alt_outlined,
                color: AppColor.primaryColor,
              ),
              title: Text(
                "Camera",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              onTap: () {
                getMediaFile(false, onCallBack: (file) {
                  onImageSelected(file);
                });
                Navigator.pop(dialogContext);
              },
            ),
          ],
        ),
      ),
    ),
  );
}

MarkdownStyleSheet markdownStyleSheet = MarkdownStyleSheet(
  h1: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  ),
  h2: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.green,
  ),
  p: TextStyle(
    fontSize: 16,
    color: Colors.black,
  ),
  blockquote: TextStyle(
    fontSize: 16,
    color: Colors.grey,
    fontStyle: FontStyle.italic,
  ),
  strong: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
  listBullet: TextStyle(
    fontSize: 16,
    color: Colors.black,
  ),
  code: TextStyle(
    fontFamily: 'Courier',
    fontSize: 16,
    color: Colors.blueAccent,
    backgroundColor: Colors.grey[200],
  ),
  blockSpacing: 12.0,
  listIndent: 20.0,
);
