import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hr_system/Screen/leavereq.dart';
import 'package:hr_system/Screen/notification.dart';
import 'package:hr_system/Screen/profile.dart';
import 'package:hr_system/Screen/settings.dart';
import 'package:intl/intl.dart';
import '../constants.dart';
import 'BottomNav/checkintdo.dart';
import 'BottomNav/checkouttdo.dart';
import 'BottomNav/search.dart';

class CheckedIn extends StatefulWidget {
  @override
  _CheckedInState createState() => _CheckedInState();
}

class _CheckedInState extends State<CheckedIn> {
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
          DraggableScrollableSheet(
            maxChildSize: 0.5,
            minChildSize: 0.15,
            initialChildSize: 0.15,
            builder: (context, controller) => ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Container(
                  color: Color(0xff252627).withOpacity(0.5), //0.8
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView(
                      controller: controller,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 40,
                              width: 48,
                              child: Divider(
                                color: Color(0xff8A8C8F),
                                thickness: 4.0,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Hello, Avash!',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'NunitoSans',
                                        ),
                                      ),
                                      SizedBox(height: 8.0),
                                      Text(
                                          'Checked In, ${DateFormat('hh:mm').format(DateTime.now())}',
                                          style: TextStyle(
                                              fontFamily: 'NunitoSans',
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 131,
                                      //Check In
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Color(0xffB8863A)),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                    side: BorderSide(
                                                        color: Color(
                                                            0xffB8863A))))),
                                        onPressed: () {
                                          showModalBottomSheet(
                                            isScrollControlled: true,
                                            enableDrag: false,
                                            backgroundColor: Color(0xff252627)
                                                .withOpacity(0.5),
                                            context: context,
                                            builder: (context) =>
                                                SingleChildScrollView(
                                              child: Container(
                                                padding: EdgeInsets.only(
                                                    bottom:
                                                        MediaQuery.of(context)
                                                            .viewInsets
                                                            .bottom),
                                                child: cobottom_sheet(),
                                              ),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'CHECK OUT',
                                          style: TextStyle(
                                            fontSize: 14.4,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'NunitoSans',
                                          ),
                                        ),
                                      ),
                                    ),

                                    //Settings Icon
                                    Column(
                                      children: [
                                        IconButton(
                                          icon: Icon(Icons.settings),
                                          onPressed: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return Settings();
                                            }));
                                          },
                                          color: Colors.white,
                                          iconSize: 16.33,
                                        ),
                                        Container(height: 20)
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 16,
                                right: 19,
                              ),
                              child: Divider(color: Color(0xff8A8C8F)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 28.0,
                                bottom: 16,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 28,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text('Leaves Taken',
                                            style: kStyleCheckedIn),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          '0.0',
                                          style: kStyleCheckedInValue,
                                        ),
                                        SizedBox(
                                          height: 32,
                                        ),
                                        Text('Employees on Leave',
                                            style: kStyleCheckedIn),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          '1',
                                          style: kStyleCheckedInValue,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 36,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text('Remaining Leaves',
                                            style: kStyleCheckedIn),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          '18.0',
                                          style: kStyleCheckedInValue,
                                        ),
                                        SizedBox(
                                          height: 32,
                                        ),
                                        Text('Pending Leave Request',
                                            style: kStyleCheckedIn),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          '2',
                                          style: kStyleCheckedInValue,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
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
