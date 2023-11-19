import 'package:ntk_cms_flutter_base/src/models/entity/base/captcha_model.dart';

part 'core_auth_api.g.dart';

@RestApi()
abstract class AuthMethodApi {
  factory AuthMethodApi.create(Dio dio, {String baseUrl}) = _AuthMethodApi;

  AuthMethodApi();

  @GET("api/v1/auth/captcha")
  Future<ErrorException<CaptchaModel>> captcha();
}
