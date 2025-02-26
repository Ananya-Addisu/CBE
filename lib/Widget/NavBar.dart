import 'package:CBE_CLONE/Home.dart';
import 'package:CBE_CLONE/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:CBE_CLONE/constants/App_Colors.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[AppColors.primary, AppColors.primary]),
                  image: const DecorationImage(
                      image: AssetImage('assets/icons/worldmap-06.png'))),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/Dj6xJ2dX0AADlPv-removebg-preview.png',
                            height: 80,
                            width: 80,
                          ),
                          Column(
                            children: [
                              Text(
                                'Commercial Bank of Ethiopia',
                                style: TextStyle(
                                    color: AppColors.secondary,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'The Bank You can always Rely on!',
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 253, 233, 164),
                                    fontSize: 10.0),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          ListTile(
            leading: Icon(Icons.mosque),
            iconColor: AppColors.primary,
            title: Text('CBE NOOR'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.lock_reset),
            iconColor: AppColors.primary,
            title: Text('Change PIN'),
            onTap: () => print('object'),
          ),
          ListTile(
            leading: Icon(Icons.logout_outlined),
            iconColor: AppColors.primary,
            title: Text('Logout'),
            onTap: () => {
                  
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (_) => LoginScreen()),
                              (route) => false)
                        
            }
            
          ),
          ListTile(
            leading: Icon(Icons.assignment_late),
            iconColor: AppColors.primary,
            title: Text('FAQ'),
            onTap: () => print('object'),
          ),
          ListTile(
            leading: Icon(Icons.assignment_late),
            iconColor: AppColors.primary,
            title: Text('About'),
            onTap: () => print('object'),
          ),
          ListTile(
            leading: Icon(Icons.star),
            iconColor: AppColors.primary,
            title: Text('Rate this app'),
            onTap: () => print('object'),
          ),
          ListTile(
            leading: Icon(Icons.devices),
            iconColor: AppColors.primary,
            title: Text('Unsubscribe'),
            onTap: () => print('object'),
          )
        ],
      ),
    );
  }
}
