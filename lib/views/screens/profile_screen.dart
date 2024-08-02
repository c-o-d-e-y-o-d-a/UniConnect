import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uniconnect/views/colors.dart';
import 'package:uniconnect/views/widgets/navbar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isDarkMode = false;
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: NavBar(),
      
      appBar: AppBar(
        leadingWidth: 250,
        leading: const Padding(
          padding: EdgeInsets.only(top: 12.0, left: 12),
          child: Text(
            'Account',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
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
            const SizedBox(height: 5,),
            Padding(  
              padding: const EdgeInsets.only(top: 8.0),
              child: const Text(
                'Raghav Singh',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            const Text('raghav93@gmail.com'),
                        const SizedBox(
              height: 12,
            ),

            Center(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                  
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                  decoration: BoxDecoration(

                    color: Color.fromRGBO(238, 238, 238, 1),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.copy, color: Color.fromRGBO(0, 133, 255, 1)),
                      SizedBox(width: 4),
                      Text(" Copy ID to Clipboard", style: TextStyle(
                        color: Color.fromRGBO(0, 133, 255, 1),
                        fontSize: 17
                        
                      ),),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              
                  const Icon(Icons.star_half),
                  const SizedBox(width: 8),
                  const Text('Theme', style: TextStyle(fontWeight: FontWeight.bold),),
                  Spacer(),
                  ToggleButtons(
                    borderRadius: BorderRadius.circular(26),
                    borderWidth: 1,
                    constraints: BoxConstraints(minWidth: 64, maxWidth: 90),
                    selectedBorderColor: Colors.transparent,
                    borderColor: Colors.transparent,
                    fillColor: Colors.black,
                    
                    selectedColor: Colors.black,
                    color: Colors.black,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Dark',
                          style: TextStyle(
                            fontWeight:
                                isSelected[0] ? FontWeight.bold : FontWeight.normal,
                            color: isSelected[0] ? Colors.white : Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Light',
                          style: TextStyle(
                            fontWeight:
                                isSelected[1] ? FontWeight.bold : FontWeight.normal,
                            color: isSelected[1] ? Colors.white : Colors.grey,
                          ),
                        ),
                      ),
                    ],
                    isSelected: isSelected,
                    onPressed: (int newIndex) {
                      setState(() {
                        for (int index = 0; index < isSelected.length; index++) {
                          if (index == newIndex) {
                            isSelected[index] = true;
                          } else {
                            isSelected[index] = false;
                          }
                        }
                        isDarkMode = newIndex == 1;
                        // Add your theme change logic here
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width - 200,
              decoration: const BoxDecoration(
                
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(24))),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 11.0),
                child: Text(
                  'Log Out',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width - 200,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 91,91, 1),
                  borderRadius: BorderRadius.all(Radius.circular(24))),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 11.0),
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
