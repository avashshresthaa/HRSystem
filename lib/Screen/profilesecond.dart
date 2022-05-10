import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_system/Screen/profile.dart';
import 'package:hr_system/constants.dart';
import 'package:hr_system/Screen/maindashboard.dart';

class ProfileSec extends StatefulWidget {
  @override
  _ProfileSecState createState() => _ProfileSecState();
}

class _ProfileSecState extends State<ProfileSec> {
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
                  backgroundColor: Colors.white.withOpacity(0.2),
                  radius: 20.0,
                  child: Image(
                    image: AssetImage(
                      'assets/arrow1.png',
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
          SafeArea(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16)),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                          child: Container(
                            color: Color(0xff252627).withOpacity(0.6),
                            child: ListView(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 70),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Rick Sanchez',
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'NunitoSans',
                                            ),
                                          ),
                                          Text(
                                            'Senior UI/UX Engineer',
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'NunitoSans',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 24),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              //margin: EdgeInsets.all(20),
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  border: Border.all(
                                                      width: 1,
                                                      color: Colors.white)),
                                              child: Icon(
                                                Icons.mail,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              //margin: EdgeInsets.all(20),
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  border: Border.all(
                                                      width: 1,
                                                      color: Colors.white)),
                                              child: Icon(
                                                Icons.phone,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 24,
                                        left: 32,
                                        right: 32,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Employee ID',
                                            style: kStyleProfileLeft,
                                          ),
                                          Text(
                                            '201',
                                            style: kStyleProfileRight,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8,
                                        left: 16,
                                        right: 19,
                                      ),
                                      child: Divider(color: Color(0xff8A8C8F)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8,
                                        left: 32,
                                        right: 32,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Contact no.',
                                            style: kStyleProfileLeft,
                                          ),
                                          Text(
                                            '9851028309',
                                            style: kStyleProfileRight,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8,
                                        left: 16,
                                        right: 19,
                                      ),
                                      child: Divider(color: Color(0xff8A8C8F)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8,
                                        left: 32,
                                        right: 32,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'DOB',
                                            style: kStyleProfileLeft,
                                          ),
                                          Text(
                                            '21-04-2001',
                                            style: kStyleProfileRight,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8,
                                        left: 16,
                                        right: 19,
                                      ),
                                      child: Divider(color: Color(0xff8A8C8F)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8,
                                        left: 32,
                                        right: 32,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Blood Type',
                                            style: kStyleProfileLeft,
                                          ),
                                          Text(
                                            'B+',
                                            style: kStyleProfileRight,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8,
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
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      'assets/rick.png',
                    ),
                  ),
                ),
              ],
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
