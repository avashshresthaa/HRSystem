import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_system/Screen/profile.dart';
import 'package:hr_system/constants.dart';
import 'package:hr_system/Screen/maindashboard.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
                left: 4,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20.0,
                  child: Image(
                    image: AssetImage(
                      'assets/arrow.png',
                    ),
                    width: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/backgroundimg.png',
            fit: BoxFit.cover,
          ),
          DraggableScrollableSheet(
            maxChildSize: 0.85,
            minChildSize: 0.85,
            initialChildSize: 0.85,
            builder: (context, controller) => ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  color: Color(0xff252627).withOpacity(0.6),
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView(
                      controller: controller,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //Settings
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text(
                                'Settings',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'NunitoSans',
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Profile();
                                    },
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 18.0, top: 24),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.person,
                                          color: Colors.white,
                                          size: 19,
                                        ),
                                        SizedBox(
                                          width: 17.41,
                                        ),
                                        Text(
                                          'Profile',
                                          style: TextStyle(
                                            fontSize: 14.4,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'NunitoSans',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 16,
                                left: 16,
                                right: 19,
                              ),
                              child: Divider(color: Color(0xff8A8C8F)),
                            ),
                            //Auto Check-In
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 18.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.manage_accounts,
                                        color: Colors.white,
                                        size: 19,
                                      ),
                                      SizedBox(
                                        width: 17.41,
                                      ),
                                      Text(
                                        'Auto Check-in',
                                        style: TextStyle(
                                          fontSize: 14.4,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'NunitoSans',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 38),
                                  child: Row(
                                    children: [
                                      Transform.scale(
                                        scale: 0.7,
                                        child: Switch(
                                          value: isSwitched,
                                          onChanged: (value) {
                                            setState(() {
                                              isSwitched = value;
                                            });
                                          },
                                          activeTrackColor: Color(0xff2F9BF2),
                                          activeColor: Colors.blue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 16,
                                right: 19,
                              ),
                              child: Divider(color: Color(0xff8A8C8F)),
                            ),
                            //Display Wallpaper
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 18.0, top: 16),
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.photo,
                                            color: Colors.white,
                                            size: 19,
                                          ),
                                          SizedBox(
                                            width: 17.41,
                                          ),
                                          Text(
                                            'Display Wallpaper',
                                            style: TextStyle(
                                              fontSize: 14.4,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'NunitoSans',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 16.0,
                                      bottom: 8.0,
                                      left: 16.0,
                                      right: 16.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ChangeBackground(
                                          image: 'assets/addimg.png'),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      ChangeBackground(image: 'assets/bg1.png'),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      ChangeBackground(image: 'assets/bg1.png'),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      ChangeBackground(image: 'assets/bg1.png'),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ChangeBackground(image: 'assets/bg1.png'),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      ChangeBackground(image: 'assets/bg1.png'),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      ChangeBackground(image: 'assets/bg1.png'),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      ChangeBackground(image: 'assets/bg1.png'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 16,
                                left: 16,
                                right: 19,
                              ),
                              child: Divider(color: Color(0xff8A8C8F)),
                            ),
                            //Logout
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 18.0, top: 16),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.logout,
                                        color: Colors.white,
                                        size: 19,
                                      ),
                                      SizedBox(
                                        width: 17.41,
                                      ),
                                      Text(
                                        'Logout',
                                        style: TextStyle(
                                          fontSize: 14.4,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'NunitoSans',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 16,
                                left: 16,
                                right: 19,
                              ),
                              child: Divider(color: Color(0xff8A8C8F)),
                            ),
                            //About App
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 18.0, top: 16),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.info_outline,
                                        color: Colors.white,
                                        size: 19,
                                      ),
                                      SizedBox(
                                        width: 17.41,
                                      ),
                                      Text(
                                        'About App',
                                        style: TextStyle(
                                          fontSize: 14.4,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'NunitoSans',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 16,
                                left: 16,
                                right: 19,
                              ),
                              child: Divider(color: Color(0xff8A8C8F)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChangeBackground extends StatelessWidget {
  ChangeBackground({required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
          onTap: () {},
          child: Container(
              height: 64.0,
              decoration: BoxDecoration(
                color: image == 'assets/plus.png' ? Colors.white : null,
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                child: Image.asset(
                  image,
                  scale: image == 'assets/plus.png' ? 0.7 : 0.8,
                  fit: image == 'assets/plus.png' ? BoxFit.none : BoxFit.fill,
                ),
              ))),
    );
  }
}

class SettingContent extends StatelessWidget {
  SettingContent({required this.icon, this.text});
  final IconData icon;
  final text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MainDashboard();
          }));
        },
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(
              width: 17.41,
            ),
            Text(
              text,
              style: kStyleLeave,
            )
          ],
        ),
      ),
    );
  }
}

/*Padding(
                                  padding: EdgeInsets.only(left: 32, top: 16),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset('assets/bg1.png'),
                                            Image.asset('assets/bg1.png'),
                                            Image.asset('assets/bg1.png'),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),*/
