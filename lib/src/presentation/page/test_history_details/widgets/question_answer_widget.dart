import 'package:url_launcher/url_launcher.dart';
import '../../../all_export.dart';

class QuestionAnswerWidget extends StatefulWidget {
  final int questionNumber;
  final String question;
  final String answer;
  final String correctAnswer;
  final String explanation;
  final bool isCorrect;
  final String topic;
  final Map<String, String> options;

  const QuestionAnswerWidget({
    super.key,
    required this.questionNumber,
    required this.question,
    required this.answer,
    required this.correctAnswer,
    required this.explanation,
    required this.isCorrect,
    required this.options,
    required this.topic,
  });

  @override
  State<QuestionAnswerWidget> createState() => _QuestionAnswerWidgetState();
}

class _QuestionAnswerWidgetState extends State<QuestionAnswerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: _textColor.withOpacity(0.3)),
      ),
      child: Theme(
        data: ThemeData.light().copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          childrenPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          leading: _buildTileIcon(),
          title: _buildTitle(context),
          children: [
            _buildQuestion(),
            const SizedBox(height: 10),
            if (widget.answer.isEmpty)
              SizedBox(width: 110, child: _buildUnattemptedLabel())
            else
              _buildAnswer(),
            const SizedBox(height: 20),
            _buildExplanation(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Helper to get the text color based on correctness
  Color get _textColor => widget.isCorrect ? Colors.green : Colors.red;

  // Helper to build the leading icon
  Widget _buildTileIcon() {
    return widget.isCorrect
        ? const Icon(Icons.check_circle, color: Colors.green)
        : const Icon(Icons.cancel, color: Colors.red);
  }

  // Builds the title of the ExpansionTile
  Widget _buildTitle(BuildContext context) {
    return Row(
      children: [
        Text(
          "Question ${widget.questionNumber}",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: _textColor,
              ),
        ),
        20.wx,
        _buildTopicTags(context),
        if (widget.answer.isEmpty) ...[
          const Spacer(),
          _buildUnattemptedLabel(),
        ],
      ],
    );
  }

  // Builds the topic tags
  Widget _buildTopicTags(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: widget.topic.split(",").map((e) {
        final topic = e.trim().toLowerCase();
        final color = CommonUtilities.getConsistentColor(topic);
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: color.withOpacity(0.2),
          ),
          child: Text(
            e.capitalize ?? "",
            style: context.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w500,
              color: color,
            ),
          ),
        );
      }).toList(),
    );
  }

  // Builds the "Unattempted" label
  Widget _buildUnattemptedLabel() {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.redAccent.withOpacity(0.2),
      ),
      child: Text(
        "Unattempted",
        style: context.textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.w500,
          color: Colors.red,
        ),
      ),
    );
  }

  // Builds the question content
  Widget _buildQuestion() {
    return Html(
      data: widget.question.replaceAll("<p><br></p>", " "),
      onLinkTap: (url, attributes, element) => launchUrl(
        Uri.parse(url ?? ""),
        mode: LaunchMode.externalApplication,
      ),
      style: {
        "body": Style(
          fontSize: FontSize(16),
          padding: HtmlPaddings.all(0),
          margin: Margins.all(0),
          color: Colors.black,
          fontWeight: FontWeight.w500,
          textAlign: TextAlign.start,
        ),
      },
    );
  }

  // Builds the answer section
  Widget _buildAnswer() {
    final selectedKeys = _parseAnswerKeys(widget.answer);
    final selectedTexts = _mapKeysToTexts(selectedKeys, widget.options);
    final selectedAnswer = selectedTexts.join('\n\n');

    return Row(
      children: [
        const SizedBox(width: 4),
        if (!widget.isCorrect) ...[
          Expanded(
              child:
                  _buildAnswerBox("Your Answer:", selectedAnswer, Colors.red)),
          20.wx,
        ],
        Expanded(
          child: _buildAnswerBox(
            widget.isCorrect ? "Your Answer:" : "Correct Answer:",
            _mapKeysToTexts(
              _parseAnswerKeys(widget.correctAnswer),
              widget.options,
            ).join('\n\n'),
            Colors.green,
          ),
        ),
      ],
    );
  }

  // Helper to parse answer keys from a string
  List<String> _parseAnswerKeys(String answer) {
    return answer
        .replaceAll('[', '')
        .replaceAll(']', '')
        .split(',')
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toList();
  }

  // Helper to map keys to option texts
  List<String> _mapKeysToTexts(List<String> keys, Map<String, String> options) {
    return keys.map((key) => options[key] ?? '').toList();
  }

  // Builds a styled answer box
  Widget _buildAnswerBox(String title, String content, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        5.hx,
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(color: color.withOpacity(0.1)),
          child: Html(
            data: content,
            onLinkTap: (url, attributes, element) => launchUrl(
              Uri.parse(url ?? ""),
              mode: LaunchMode.externalApplication,
            ),
            style: {
              'body': Style(
                fontSize: FontSize(14),
                padding: HtmlPaddings.all(0),
                margin: Margins.all(0),
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            },
          ),
        ),
      ],
    );
  }

  // Builds the explanation section
  Widget _buildExplanation() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Explanation:",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.blue),
          ),
          const SizedBox(height: 5),
          // MarkdownBody(
          //   data: html2md.convert(widget.explanation),
          //   selectable: true,
          //   shrinkWrap: true,
          // )
          Html(
            data: widget.explanation.replaceAll("<br>", " "),
            shrinkWrap: true,
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
        ],
      ),
    );
  }
}

class TotalQuestionDetail {
  final String question;
  final String answer;
  final String correctAnswer;
  final String explanation;
  final bool isCorrect;
  final String topic;
  final Map<String, String> options;

  TotalQuestionDetail({
    required this.question,
    required this.answer,
    required this.correctAnswer,
    required this.explanation,
    required this.isCorrect,
    required this.topic,
    required this.options,
  });
}
