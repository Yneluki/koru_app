import 'package:pushy_flutter/pushy_flutter.dart';

class PushyNotificationService {

  PushyNotificationService(){
    Pushy.listen();
    Pushy.setNotificationListener(_backgroundNotificationListener);
  }

}

@pragma('vm:entry-point')
void _backgroundNotificationListener(Map<String, dynamic> data) {
  String? message = data['message'];
  if (message == null) {
    print("Failed to parse notification, no message");
  } else {
    final parts = message.split("|");
    if (parts.length != 2) {
      print("Failed to parse notification");
    } else {
      final title = parts[0];
      final text = parts[1];
      Pushy.notify(title, text, data);
      Pushy.clearBadge();
    }
  }
}
