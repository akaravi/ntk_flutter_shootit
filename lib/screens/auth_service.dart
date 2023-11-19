import 'package:ntk_cms_flutter_base/src/models/entity/base/captcha_model.dart';

Future<CaptchaModel> getCaptcha() async {
  var errorException = await directAPI.captcha();
  if (errorException.isSuccess) {
    return errorException.item ?? CaptchaModel();
  } else {
    throw Exception(errorException.errorMessage);
  }
}
