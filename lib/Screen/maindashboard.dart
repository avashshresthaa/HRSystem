import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hr_system/Screen/BottomNav/search.dart';
import 'package:hr_system/Screen/leavereq.dart';
import 'package:hr_system/Screen/notification.dart';
import 'package:hr_system/Screen/profile.dart';
import 'package:hr_system/Screen/settings.dart';
import 'package:intl/intl.dart';
import '../constants.dart';
import 'Draggable/draggable.dart';

class MainDashboard extends StatefulWidget {
  @override
  _MainDashboardState createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  DateTime now = DateTime.now();

  List months = [
    'JAN',
    'FEB',
    'MAR',
    'APR',
    'MAY',
    'JUN',
    'JUL',
    'AUG',
    'SEP',
    'OCT',
    'NOV',
    'DEC'
  ];

  Widget makeDismissible({required Widget child}) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context).pop(),
        child: GestureDetector(
          onTap: () {},
          child: child,
        ),
      );
  @override
/*  void dispose() {
    // TODO: implement dispose
    super.dispose();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  }*/

  @override
  Widget build(BuildContext context) {
    print("----sdsdsdh");
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // status bar color
        brightness: Brightness.dark,
        automaticallyImplyLeading: false, // removes the back button
        actions: [
          //Search Icon
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                enableDrag: false,
                backgroundColor: Color(0xff252627).withOpacity(0.5),
                context: context,
                builder: (context) => SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: search(),
                  ),
                ),
              );
            }, //0xff3A00BF
            child: Image(
              image: AssetImage(
                'assets/search.png',
              ),
              width: 40,
            ),
          ),
          SizedBox(
            width: 16,
          ),
          //Notification Icon
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NotificationPG();
              }));
            },
            child: Image(
              image: AssetImage(
                'assets/wbell.png',
              ),
              width: 40,
            ),
          ),
          SizedBox(
            width: 16,
          ),
        ],
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Date
                Expanded(
                  child: Column(
                    children: [
                      StreamBuilder(
                          // real time ko lai
                          stream: Stream.periodic(const Duration(seconds: 1)),
                          builder: (context, snapshot) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 32.0, top: 50.0),
                                  child: Text(
                                      DateFormat('EEEE')
                                          .format(now)
                                          .toUpperCase(),
                                      style: kStyleTime),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 32.0, top: 8.0),
                                  child: Text(
                                      DateFormat('dd ').format(DateTime.now()) +
                                          months[now.month - 1],
                                      style: kStyleTime),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 32.0, top: 8.0),
                                  child: Text(
                                      DateFormat('hh:mm:ss')
                                          .format(DateTime.now()),
                                      style: kStyleTime),
                                ),
                              ],
                            );
                          }),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ChoiceBox(
                                'assets/leave.png',
                                'Leave',
                                () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return ApplyLeave();
                                  }));
                                },
                              ),
                              //SizedBox(width: 8.0),
                              ChoiceBox(
                                'assets/profile.png',
                                'Profile',
                                () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Profile();
                                  }));
                                },
                              ),
                              // SizedBox(width: 8.0),
                              ChoiceBox(
                                'assets/review.png',
                                'Review',
                                () {},
                              ),
                              //SizedBox(width: 8.0),
                              ChoiceBox(
                                'assets/setting.png',
                                'Settings',
                                () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Settings();
                                  }));
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          DraggableWidget(),
        ],
      ),
    );
  }
}

class ChoiceBox extends StatelessWidget {
  ChoiceBox(this.contentimage, this.task, this.onPress);

  final String contentimage;
  final String task;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xff252627), borderRadius: BorderRadius.circular(16)),
        height: 76.0,
        width: 76.0,
        child: Padding(
          padding: EdgeInsets.only(top: 12.0, bottom: 8.0),
          child: Column(
            children: <Widget>[
              Image.asset(
                contentimage,
                width: 18,
              ),
              SizedBox(height: 18.0),
              Expanded(
                  child: Text(task,
                      style: TextStyle(fontSize: 12, color: Colors.white)))
            ],
          ),
        ),
      ),
    );
  }
}
