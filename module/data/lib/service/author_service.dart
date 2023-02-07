import 'package:dio/dio.dart';

import '../models/sign_in_param.dart';
import '../models/token_model.dart';

/// @author : Nguyen

abstract class AuthorService {
  AuthorService(Dio dio);

  /// Token ========================================================================================
  /// ==============================================================================================
  Future<TokenModel> signIn(TokenParam body);

  Future<TokenModel> signInNonLogin(TokenParam body);

  /// Đăng nhập với 2FA code */
  // Future<TokenModel> signInWith2FA(SignIn2FAParam body);

  Future<TokenModel> freshToken(RefreshTokenParam body);

  Future<TokenModel> checkToken();

  /// Checking if the email is already registered or not.
  // Future<IdAccountExistModel> isAccountExist(String email);

  /// This is a function to finish the recover process.
  // Future<AccountModel> finishRecover(InfoAccountParam param);

  /// This is a function to remove account.
  // Future<AccountModel>

      /// This is a function to remove account.
      // removeAccount(InfoAccountParam param);

  // Future<TokenModel> signup(SignUpParam body);

  Future<TokenModel> logOut();

  /// Đăng xuất toàn bộ thiết bị */
  Future<dynamic> logOutAllDevice();

  // Future<TokenModel> loginWith2FA(SendCodeParam body);

  /// VERIFY =======================================================================================
  /// ==============================================================================================

  /// A function to send OTP code to user's email
  /// or phone number.
  // Future<SendCodeModel> sendOtp(SendCodeParam body);

  /// A function to send OTP code to user's email
  /// or phone number.
  // Future<SendCodeModel> sendOtpV2(SendCodeParam body);

  // Future<TokenModel> verifyOtp(VerifyParam param);

  // Future<TokenModel> verifyOtpV2(VerifyParam param);
}
