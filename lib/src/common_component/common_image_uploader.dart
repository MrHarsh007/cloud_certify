import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../common/constant.dart';
import '../common_component/common_button.dart';
import '../utilities/constants/common_assets.dart';
import '../utilities/theme/app_colors.dart';
import '../utilities/extensions/sized_box_extension.dart';

class CommonImageUploaderWidget extends StatelessWidget {
  final String title;
  final String imgUrl;
  final bool isImagePicked;
  final XFile? image;
  final VoidCallback onRemove;
  final Function(XFile) onSelect;
  final bool isOnlyCamera;
  final String text;

  const CommonImageUploaderWidget({
    super.key,
    required this.title,
    required this.imgUrl,
    required this.isImagePicked,
    required this.image,
    required this.onRemove,
    required this.onSelect,
    this.isOnlyCamera = false,
    this.text = "Select Image or Open Camera",
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () => isOnlyCamera
          ? getMediaFile(false, onCallBack: onSelect)
          : showImagePickerDialog(context, onSelect),
      child: (imgUrl.isNotEmpty && !isImagePicked)
          ? ClipRRect(
              borderRadius: BorderRadius.circular(RADIUS),
              child: CommonAssets.getGCSNetworkImage(
                imgUrl,
                fit: BoxFit.cover,
                height: 150,
                width: double.infinity,
              ),
            )
          : isImagePicked
              ? FutureBuilder<Uint8List>(
                  future: kIsWeb ? image!.readAsBytes() : null,
                  builder: (context, snapshot) {
                    Widget imageWidget;

                    if (kIsWeb) {
                      // Web: Load image as bytes
                      if (snapshot.connectionState == ConnectionState.done &&
                          snapshot.hasData) {
                        imageWidget = Image.memory(
                          snapshot.data!,
                          fit: BoxFit.cover,
                          height: 150,
                          width: double.infinity,
                        );
                      } else {
                        imageWidget = const CircularProgressIndicator();
                      }
                    } else {
                      // Mobile: Load image from File
                      imageWidget = Image.file(
                        File(image!.path),
                        fit: BoxFit.cover,
                        height: 150,
                        width: double.infinity,
                      );
                    }

                    return ClipRRect(
                      borderRadius: BorderRadius.circular(RADIUS),
                      child: SizedBox(
                        height: 150,
                        width: double.infinity,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            imageWidget,
                            InkWell(
                              onTap: onRemove,
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Icon(
                                  Icons.delete_outline_outlined,
                                  color: AppColor.primaryColor,
                                  size: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              : CustomElevatedButton(
                  onTap: () => isOnlyCamera
                      ? getMediaFile(false, onCallBack: onSelect)
                      : showImagePickerDialog(context, onSelect),
                  radius: RADIUS,
                  borderColor: AppColor.primaryColor,
                  backgroundColor: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.upload_file,
                        color: AppColor.primaryColor,
                        size: 20,
                      ),
                      10.wx,
                      Text(
                        text,
                        style: textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColor.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
    );
  }
}
