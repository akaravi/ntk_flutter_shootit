import 'package:flutter/material.dart';
import 'package:shootto/constant.dart';
import 'package:shootto/screens/login2.dart';

class Login1 extends StatelessWidget {
  const Login1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Blue,
      ),
      body: Container(
          margin: EdgeInsets.only(top: 40),
          child: Column(
            children: [
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
                      child: Image.asset('assets/images/captcha.webp'),
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
}
