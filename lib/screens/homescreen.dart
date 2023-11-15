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
                  fontSize: 18, color: Gray1, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Spacer(),
          ],
        ),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 108, 103, 103)),
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
              title: Text('Destination Folder'),
            ),
            ListTile(
              title: Text('Website'),
            ),
            ListTile(
              title: Text('Invite'),
            ),
            ListTile(
              title: Text('Rate us'),
            ),
            ListTile(
              title: Text('About'),
            ),
          ],
        ),
      ),
      // body: MainScreen(),
    );
  }
}

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int currentIndex = 0;
//   Widget body = const HomeScreen();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       bottomNavigationBar: AnimatedBottomNavigationBar(
//         inactiveColor: Colors.black54,
//         icons: [Icons.home, Icons.settings, Icons.account_balance_rounded],
//         activeIndex: currentIndex,
//         gapLocation: GapLocation.end,
//         notchSmoothness: NotchSmoothness.smoothEdge,
//         onTap: (index) {
//           setState(() {
//             if (index == 0) {
//               body = const HomeScreen();
//             } else if (index == 1) {
//               body = const SettingsScreen();
//             } else {
//               body = const ProfileScreen();
//             }

//             currentIndex = index;
//           });
//         },
//       ),
//       body: body,
//     );
//   }
// }
