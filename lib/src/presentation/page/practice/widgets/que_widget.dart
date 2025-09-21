import 'package:cloud_certify/src/common/constant.dart';
import 'package:cloud_certify/src/utilities/extensions/sized_box_extension.dart';
import 'package:cloud_certify/src/utilities/theme/app_colors.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class QueWidget extends StatefulWidget {
  final int queNumber;
  final String question;
  final Map<String, String> options;
  final List<String> correctAnswer;
  final bool isMultipleAnswer;
  final bool isAnswered;
  final bool isLoading;
  final AssessmentType assessmentType;
  final List<String> selectedAnswer;
  final Function(String)? onAnswerSelect;

  const QueWidget({
    super.key,
    required this.queNumber,
    required this.question,
    required this.options,
    required this.correctAnswer,
    required this.assessmentType,
    this.isMultipleAnswer = false,
    this.isAnswered = false,
    this.isLoading = false,
    required this.selectedAnswer,
    this.onAnswerSelect,
  });

  @override
  State<QueWidget> createState() => _QueWidgetState();
}

class _QueWidgetState extends State<QueWidget> {
  @override
  Widget build(BuildContext context) {
    final List<MapEntry<String, String>> optionEntries =
        widget.options.entries.toList();

    return Material(
      elevation: 5,
      shadowColor: Colors.grey.shade100,
      borderRadius: BorderRadius.circular(SMALL_RADIUS),
      child: Container(
        padding: EdgeInsets.all(BOX_PADDING),
        decoration: BoxDecoration(
            color: Colors.white,
            // border: Border.all(
            //   color: Colors.grey.shade300,
            //   width: 1.5,
            // ),
            borderRadius: BorderRadius.circular(SMALL_RADIUS)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Question ${widget.queNumber}",
                    style: context.textTheme.headlineSmall
                        ?.copyWith(fontSize: 22)),
                Text(
                  widget.assessmentType == AssessmentType.multiSelect
                      ? "Choose multiple"
                      : "Choose one",
                  style: context.textTheme.titleSmall
                      ?.copyWith(fontSize: 16, color: AppColor.primaryColor),
                ),
              ],
            ),
            10.hx,
            Html(
              data: widget.question.replaceAll("<p><br></p>", " "),
              shrinkWrap: true,
              style: {
                "body": Style(
                  fontSize: FontSize(16),
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.start,
                ),
              },
            ),
            5.hx,
            ...optionEntries.map((entry) {
              final String optionKey = entry.key;
              final String optionText = entry.value;
              final bool isSelected = widget.selectedAnswer.contains(optionKey);
              final bool isCorrect = widget.correctAnswer.contains(optionKey);
              debugPrint("isSelected1: ${widget.selectedAnswer}");
              Color borderColor;
              if (!widget.isAnswered) {
                borderColor =
                    isSelected ? AppColor.primarySecondaryColor : Colors.grey;
              } else {
                if (isCorrect) {
                  borderColor = Colors.green;
                } else if (isSelected && !isCorrect) {
                  borderColor = Colors.red;
                } else {
                  borderColor = Colors.grey;
                }
              }

              return InkWell(
                onTap: () => widget.isAnswered
                    ? null
                    : widget.onAnswerSelect?.call(optionKey),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(SMALL_RADIUS),
                    border: Border.all(
                      color: borderColor,
                      width: (isSelected || (widget.isAnswered && isCorrect))
                          ? 2
                          : 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Text(
                          optionKey,
                          style: context.textTheme.titleMedium,
                        ),
                      ),
                      10.wx,
                      Expanded(
                        child: Html(
                          data: optionText.replaceAll("<br>", " "),
                          onLinkTap: (url, attributes, element) => launchUrl(
                            Uri.parse(url ?? ""),
                            mode: LaunchMode.externalApplication,
                          ),
                          style: {
                            "body": Style(
                              fontSize: FontSize(14),
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              textAlign: TextAlign.start,
                            ),
                          },
                        ),
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
