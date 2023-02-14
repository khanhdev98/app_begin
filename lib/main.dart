import 'package:config/bootstrap/bootstrap.dart';
import 'package:widget/di/auth_router.dart';
import 'package:widget/di/service_register.dart';
import 'app_ota/app_product.dart';

void main() => AppBootstrap.start(
  appRegisters: [
    AppCommon(),
    ServiceRegister(),
  ],
  builder: (onGenerate) {
    return AppProduct(onGenerate: onGenerate,);
  },
);
