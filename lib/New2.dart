// import 'package:ntk_cms_flutter_base/src/controller/base/login_controller.dart';
// import 'package:ntk_cms_flutter_base/src/models/entity/base/captcha_model.dart';
// import 'package:ntk_cms_flutter_base/src/backend/service/splash/auth_service.dart';
// import 'package:ntk_cms_flutter_base/src/view/base_auth_page.dart';
// import 'package:ntk_cms_flutter_base/src/controller/base/login_controller.dart';
// import 'package:ntk_cms_flutter_base/src/backend/api/core/core_auth_api.dart';

// //! login



//   Future<CaptchaModel> getCaptcha() async {
//     var errorException = await directAPI.captcha();
//   }
    

// class LoginState extends BaseAuthScreeen<Login> {

//   final loginController = LoginController();

//   bool userNotValid = false;

//   bool passNotValid = false;

//   bool captchaNotValid = false;

  
// }


// void dispose() {

//     captchaTextController.dispose();
//   }


//    @override
//   loadCaptcha(CaptchaModel chModel) {
//     return loginController.loadCaptcha;
//   }

//    final TextEditingController captchaTextController = TextEditingController();


  










// //!

   



//   Future<bool> registerWithEmail() async {
//     AuthUserSignUpModel req = AuthUserSignUpModel()
//       ..captchaText = captchaTextController.text
//       ..captchaKey = model.key;
//     var res = await AuthService().register(req);
//     if (res.isSuccess) {
//       return true;
//     } else {
//       return false;
//     }
//   }
