import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shootto/constant.dart';
import 'package:shootto/screens/profile.dart';
import 'package:shootto/screens/settings.dart';

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
              'assets/images/share.webp',
              width: 40,
              height: 40,
              alignment: Alignment.topLeft,
            ),
            Spacer(),
            Text(
              'ShootTo',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Spacer(),
          ],
        ),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Account Name'),
              accountEmail: Text('+98 9 - -  - - - - - - -'),
              currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              leading: Icon(Icons.folder_open_outlined),
              title: Text('Destination Folder'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.language_outlined),
              title: Text('Website'),
            ),
            ListTile(
              leading: Icon(Icons.send_to_mobile_rounded),
              title: Text('Invite'),
            ),
            ListTile(
              leading: Icon(Icons.rate_review_outlined),
              title: Text('Rate us'),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('About'),
            ),
          ],
        ),
      ),
      body: NavigationBar(),
    );
  }
}

class NavigationBar extends StatefulWidget {
  const NavigationBar({super.key});

  @override
  State<NavigationBar> createState() => _NavigationBar();
}

class _NavigationBar extends State<NavigationBar> {
  int currentIndex = 0;
  Widget body = const HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        inactiveColor: Colors.black54,
        icons: [Icons.home, Icons.settings, Icons.person],
        activeIndex: currentIndex,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.smoothEdge,
        onTap: (index) {
          setState(() {
            if (index == 0) {
              body = const HomeScreen();
            } else if (index == 1) {
              body = const SettingsScreen();
            } else {
              body = const ProfileScreen();
            }

            currentIndex = index;
          });
        },
      ),
      // body: body,
    );
  }
}
