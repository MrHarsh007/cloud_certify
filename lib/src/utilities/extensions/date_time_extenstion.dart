import 'package:intl/intl.dart';

extension FormateDate on int {
  String get datetime {
    return DateFormat(
      'MMM dd, yyyy',
    ).format(DateTime.fromMillisecondsSinceEpoch(this));
  }
}
