import 'package:flutter/material.dart';
import 'package:shootto/constant.dart';
import 'package:shootto/screens/historyscreen.dart';
import 'package:shootto/screens/sendscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Blue,
        title: Row(
          children: [
            Image.asset(
              'assets/images/share-white.webp',
              width: 40,
              height: 40,
              alignment: Alignment.topLeft,
            ),
            Spacer(),
            const Text(
              'ShootTo',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Spacer(),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      endDrawer: Drawer(
          // backgroundColor: Colors.black,
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ));
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: CircleBorder(), // Circular shape
                padding: EdgeInsets.all(
                    MediaQuery.of(context).size.height * 0.043), // Button size
              ),
              child: Icon(Icons.send_to_mobile_outlined, size: 45),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.011),
            Text(
              'Send',
              style: TextStyle(
                color: textColor,
                fontSize: 21,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: CircleBorder(), // Circular shape
                padding: EdgeInsets.all(
                    MediaQuery.of(context).size.height * 0.043), // Button size
              ),
              child: Icon(Icons.download, size: 45),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.011),
            Text(
              'Received',
              style: TextStyle(
                color: textColor,
                fontSize: 21,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => historyScreen()));
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Gray2,
                shape: CircleBorder(), // Circular shape
                padding: EdgeInsets.all(
                    MediaQuery.of(context).size.height * 0.043), // Button size
              ),
              child: Icon(Icons.history, size: 45),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.011),
            Text(
              'History',
              style: TextStyle(
                color: Gray1,
                fontSize: 21,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          ],
        ),
      ),
    );
  }
}
