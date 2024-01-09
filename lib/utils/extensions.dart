import 'package:flutter/material.dart';
import 'package:dalmiabot/values/app_constants.dart';

extension NavigationThroughString on String {
  Future<dynamic> pushName({dynamic data}) async {
    return AppConstants.navigationKey.currentState
        ?.pushNamed(this, arguments: data);
  }

  Future<dynamic> replaceNamed() async {
    return AppConstants.navigationKey.currentState?.pushReplacementNamed(
      this,
    );
  }
}

extension ContextExtension on BuildContext {
  Size get mediaQuerySize => MediaQuery.of(this).size;

  void showSnackBar(String? message, {bool isError = false}) =>
      ScaffoldMessenger.of(this)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(message ?? ''),
          ),
        );
}
