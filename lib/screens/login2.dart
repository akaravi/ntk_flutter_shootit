import 'package:flutter/material.dart';
import 'package:shootto/constant.dart';
import 'package:shootto/screens/homescreen.dart';
import 'package:shootto/screens/login1.dart';

class Login2 extends StatelessWidget {
  const Login2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Blue,
      ),
      body: SingleChildScrollView(
        child: Container(
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
                  'کد ارسال شده را وارد نمایید',
                  style: TextStyle(fontSize: 20, color: Gray2),
                ),
              ),
              Container(
                width: 270,
                height: 60,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(46, 158, 158, 158),
                    border: Border.all(width: 3, color: Blue),
                    borderRadius: BorderRadius.circular(30)),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: ' - - - - - - - - -',
                      hintStyle: TextStyle(color: Gray2, fontSize: 25),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Login1();
                      }));
                    },
                    child: Text(
                      'ارسال مجدد کد',
                      style: TextStyle(color: Gray2, fontSize: 20),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 270,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }));
                  },
                  child: Text(
                    'ورود',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
