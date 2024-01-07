import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/profile_page.dart';
import 'package:untitled/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<StatefulWidget> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>  {
    //The pages in our app
    final List _pages = [
      //Home Page
      HomePage(),

      //Profile Page
      ProfilePage(),

      //Settings Page
      SettingsPage()
    ];

    int _selectedIndex = 0;

    void _navigateBottomBar(int selectedIndex) {
      setState(() {
        _selectedIndex = selectedIndex;
      });
    }

    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        appBar: AppBar(
          title: Text("First Page"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          items: [
            // Home
            BottomNavigationBarItem(icon: Icon(
                Icons.home
            ),
                label: "Home"),
            //Profile
            BottomNavigationBarItem(icon: Icon(
                Icons.person
            ),
                label: "Profile"),
            //Settings
            BottomNavigationBarItem(icon: Icon(
                Icons.settings
            ),
                label: "Settings"),
          ],
        ),
        drawer: Drawer(
        backgroundColor: Colors.lightBlue[500],
        child: Column(
          children: [
            DrawerHeader(
                child: Column(
              children: [
                Icon(
                  Icons.account_balance_outlined,
                  color: Colors.white,
                  size: 80,
                ),
                Text(
                  "Humayun Sikander",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                )
              ],
            )),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "H O M E",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
              ),
              onTap: () {
                //Pop drawer first
                Navigator.pop(context);
                //Navigate to Home page
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text(
                  "S E T T I N G S",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600)
              ),
                onTap: () {
                  //Pop drawer first
                  Navigator.pop(context);
                  //Navigate to Settings page
                  Navigator.pushNamed(context, '/settingspage');
                }
            )
          ],
        ),
      ),
        body: Center(
          child: _pages[_selectedIndex],
        ),
      );
    }
}