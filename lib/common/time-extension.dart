import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class TimeExtension {
  static String getDateInBeautyWay(String time) {
    try {
      var parse = DateTime.parse(time);
      var difference = DateTime.now().difference(parse);
      if (difference.inMinutes <= 5) {
        return "قبل لحظات";
      } else if (difference.inMinutes <= 60) {
        return "قبل ${difference.inMinutes} دقيقة";
      } else if (difference.inHours < 24) {
        return "قبل ${difference.inHours} ساعة";
      } else {
        return DateFormat.yMMMMd('en_US').format(parse);
      }
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
    return "---";
  }
}
