import 'package:flutter/material.dart';
import 'package:uniconnect/views/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.transparent), // Removes the top border
        ),
      ),
      child: BottomNavigationBar(
        elevation: 0, // Removes the default elevation shadow
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
      ),
    ),
      appBar: AppBar(
        leadingWidth: 250,
        leading: const Padding(
          padding: EdgeInsets.only(top: 12.0, left: 12),
          child: Text('Account', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage('images/profile.jpeg'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: const Text('Raghav Singh',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26), ),
            ),
            const Text('raghav93@gmail.com'),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  
                ),
                child: const Row(
                  children: [Icon(Icons.copy), Text("Copy ID to Clipboard")],
                ),
              ),
            ),
            const Row(
              children: [
                Row(
                  children: [Icon(Icons.star_half), Text('Theme')],
                ),
                Row(
                  children: [],
                )
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Log out',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Delete Account',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
