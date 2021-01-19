import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

/// extensions on [BuildContext]
extension BuildContextX on BuildContext {
  /// show [SnackBar]
  void showSnackbar({@required String message}) => ScaffoldMessenger.of(this)
    ..removeCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
      ),
    );

  /// parse [time] to format -> e.g. Mon, Jan 16, 2021
  String parseTimestamp(String time) {
    var millis = DateTime.tryParse(time).millisecondsSinceEpoch;
    return Jiffy.unix(millis).yMMMEd;
  }
}

extension ListX on List<dynamic> {
  void addIfDoesNotExist(dynamic item) {
    if (!contains(item)) add(item);
  }

  void update(dynamic item) {
    if (contains(item)) {
      remove(item);
    } else {
      add(item);
    }
  }
}
