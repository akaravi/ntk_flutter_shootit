import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:shootto/constant.dart';
import 'package:shootto/global_data.dart';
import 'package:shootto/screens/login2.dart';
import 'package:ntk_cms_flutter_base/src/controller/base/login_controller.dart';
import 'package:ntk_cms_flutter_base/src/models/entity/base/captcha_model.dart';
import 'package:ntk_cms_flutter_base/src/backend/api/core/core_auth_api.dart';
import 'package:ntk_cms_flutter_base/src/view/base_auth_page.dart';
import 'package:ntk_cms_flutter_base/src/view/capcha_widget.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  //controller object for login form
  final loginController = LoginController();
  late AuthMethodApi directAPI;
  bool captchaNotValid = false;
  late CaptchaModel captchaModel;

  @override
  void dispose() {
    loginController.dispose();
    super.dispose();
  }

  Future<CaptchaModel> getCaptcha() async {
    var errorException = await directAPI.captcha();
    if (errorException.isSuccess) {
      return errorException.item ?? CaptchaModel();
    } else {
      throw Exception(errorException.errorMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    getCaptcha().then((value) => captchaModel = value);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Blue,
      ),
      body: Container(
          margin: EdgeInsets.only(top: 40),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/share.webp',
                  fit: BoxFit.fitHeight,
                  width: 165,
                  height: 165,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'ShootTo',
                style: TextStyle(
                    color: Gray1, fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(right: 40),
                child: Text(
                  'تلفن همراه',
                  style: TextStyle(fontSize: 20, color: Gray2),
                ),
              ),
              Container(
                width: 270,
                height: 55,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(46, 158, 158, 158),
                    border: Border.all(width: 3, color: Blue),
                    borderRadius: BorderRadius.circular(30)),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: '+98 9 - - - - - - - - -',
                      hintStyle: TextStyle(color: Gray2, fontSize: 17),
                      border: InputBorder.none),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(right: 40),
                child: Text(
                  'عبارت مقابل را وارد کنید',
                  style: TextStyle(fontSize: 20, color: Gray2),
                ),
              ),
              Container(
                width: 300,
                height: 70,
                child: Row(
                  children: [
                    Container(
                      width: 145,
                      child: Image.network(captchaModel.image.toString()),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 125,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(46, 158, 158, 158),
                          border: Border.all(width: 3, color: Blue),
                          borderRadius: BorderRadius.circular(30)),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: ' - - - - -',
                            hintStyle: TextStyle(color: Gray2, fontSize: 20),
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 270,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Login2();
                    }));
                  },
                  child: Text(
                    'ارسال کد',
                    style: TextStyle(
                        color: Gray1,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1, color: Blue))),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 18, color: Gray2),
                          children: [
                            TextSpan(text: ' حساب کاربری ندارید؟'),
                            TextSpan(
                              text: ' ثبت نام',
                              style: TextStyle(color: Blue),
                            ),
                            TextSpan(text: ' کنید')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Widget getCaptchaWidget(TextEditingController captchaTextController,
      {void Function(CaptchaModel chModel)? func}) {
    // func ??= loadCaptcha;
    return captchaInputLayout(captchaTextController, func);
  }

  static captchaInputLayout(TextEditingController captchaTextController,
      void Function(CaptchaModel chModel)? func) {
    Color gray = GlobalColor.colorTextPrimary.withOpacity(.8);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: gray,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(4.0),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: IntrinsicHeight(
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Icon(
                Icons.verified_user_outlined,
                color: gray,
              ),
            ),
            Container(
              height: 30.0,
              width: 1.0,
              color: gray.withOpacity(0.5),
              margin: const EdgeInsets.only(left: 00.0, right: 10.0),
            ),
            SizedBox(
              width: 4,
            ),
            Expanded(
              child: TextField(
                controller: captchaTextController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: GlobalString.enterCaptcha,
                  hintStyle: TextStyle(color: GlobalColor.colorPrimary),
                ),
              ),
            ),
            CaptchaWidget(func)
          ],
        ),
      ),
    );
  }
}
