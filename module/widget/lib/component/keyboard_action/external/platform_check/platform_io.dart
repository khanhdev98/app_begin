import 'dart:io';
import 'platform_check.dart';

PlatformCheckType get currentPlatform {
  if (Platform.isWindows) return PlatformCheckType.windows;
  if (Platform.isFuchsia) return PlatformCheckType.fuchsia;
  if (Platform.isMacOS) return PlatformCheckType.macos;
  if (Platform.isLinux) return PlatformCheckType.linux;
  if (Platform.isIOS) return PlatformCheckType.ios;
  return PlatformCheckType.android;
}
