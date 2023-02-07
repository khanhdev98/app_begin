import 'package:config/bootstrap/bootstrap.dart';
import 'package:flutter/material.dart';
import 'package:widget/di/auth_router.dart';
import 'app_ota/app_product.dart';

final List<LocalizationsDelegate> localizationDelegates = [];
void main() => AppBootstrap.start(
  appRegisters: [
    AppCommon(),
  ],
  builder: (onGenerate) {
    return AppProduct(onGenerate: onGenerate,);
  },
);
