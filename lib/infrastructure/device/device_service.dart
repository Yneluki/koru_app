import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:koru/domain/auth/model/auth_user.dart';
import 'package:koru/domain/device/device_service.dart';
import 'package:koru/infrastructure/core/response.dart';
import 'package:pushy_flutter/pushy_flutter.dart';

class PushyDeviceService implements DeviceService {
  final String baseUrl;

  PushyDeviceService({
    required this.baseUrl,
  });

  @override
  Future<Either<DeviceServiceFailure, Unit>> register({
    required AuthUser user,
  }) async {
    try {
      final device = await Pushy.register();
      return await _saveDevice(device: device, user: user);
    } on PlatformException catch (error) {
      print(error);
      return left(const DeviceServiceFailure.internal());
    }
  }

  Future<Either<DeviceServiceFailure, Unit>> _saveDevice({
    required String device,
    required AuthUser user,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/devices'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'cookie': user.token.value
        },
        body: jsonEncode(<String, String>{
          'device': device,
        }),
      );

      switch (response.statusCode) {
        case 200:
          var resp = ServerResponse<MessageData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          return right(unit);
        case 400:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          return left(
              DeviceServiceFailure.validation(error: resp.data.error));
        case 401:
          return left(const DeviceServiceFailure.unauthorized());
        case 500:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          print("500 error:" + resp.data.error);
          return left(const DeviceServiceFailure.internal());
        default:
          return left(const DeviceServiceFailure.internal());
      }
    } catch (e) {
      return left(DeviceServiceFailure.network(
        error: e.toString(),
      ));
    }
  }

  Future<Either<DeviceServiceFailure, Unit>> unregister({
    required AuthUser user,
  }) async {
    try {
      final response = await http.delete(
        Uri.parse('$baseUrl/devices'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'cookie': user.token.value
        },
      );

      switch (response.statusCode) {
        case 204:
          return right(unit);
        case 401:
          return left(const DeviceServiceFailure.unauthorized());
        case 500:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          print("500 error:" + resp.data.error);
          return left(const DeviceServiceFailure.internal());
        default:
          return left(const DeviceServiceFailure.internal());
      }
    } catch (e) {
      return left(DeviceServiceFailure.network(
        error: e.toString(),
      ));
    }
  }
}
