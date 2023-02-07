import 'package:data/models/sign_in_param.dart';
import 'package:data/models/token_model.dart';
import 'package:data/service/author_service.dart';
import 'package:dio/dio.dart';

class AuthorServiceImpl implements AuthorService{
  AuthorServiceImpl();

  @override
  Future<TokenModel> checkToken() {
    // TODO: implement checkToken
    throw UnimplementedError();
  }

  @override
  Future<TokenModel> freshToken(RefreshTokenParam body) {
    // TODO: implement freshToken
    throw UnimplementedError();
  }

  @override
  Future<TokenModel> logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  Future logOutAllDevice() {
    // TODO: implement logOutAllDevice
    throw UnimplementedError();
  }

  @override
  Future<TokenModel> signIn(TokenParam body) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<TokenModel> signInNonLogin(TokenParam body) {
    // TODO: implement signInNonLogin
    throw UnimplementedError();
  }

}