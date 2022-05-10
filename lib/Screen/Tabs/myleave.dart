import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_system/Screen/BottomNav/leavereqdetail.dart';
import '../../constants.dart';

class MyLeave extends StatefulWidget {
  @override
  _MyLeaveState createState() => _MyLeaveState();
}

class _MyLeaveState extends State<MyLeave> with SingleTickerProviderStateMixin {
  Widget makeDismissible({required Widget child}) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context).pop(),
        child: GestureDetector(
          onTap: () {},
          child: child,
        ),
      );

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.only(
                top: 16,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: TabBar(
                    isScrollable: true,
                    labelPadding:
                        EdgeInsets.only(bottom: 10, left: 24, right: 8),
                    labelColor: Colors.black,
                    unselectedLabelColor: Color(0xff8A8C8F),
                    indicatorWeight: 1.5,
                    indicatorPadding: EdgeInsets.only(
                      left: 16,
                    ),
                    tabs: [
                      Text(
                        'My Leave',
                        style: TextStyle(
                          fontFamily: 'NunitoSans',
                          fontSize: 14.4,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Leave Request',
                        style: TextStyle(
                          fontFamily: 'NunitoSans',
                          fontSize: 14.4,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24, top: 16),
                        child: Text(
                          'Pending',
                          style: TextStyle(
                            color: Color(0xff71777C),
                            fontWeight: FontWeight.w700,
                            fontSize: 14.28,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 12, left: 16, right: 16),
                        child: Container(
                          height: 70,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 12, top: 12, right: 12),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '1D, 2020-01-17 to 2020-01-17, Full Day',
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            fontFamily: 'NunitoSans',
                                            fontWeight: FontWeight.w600,
                                            color: Color(
                                              0xff71777C,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        'assets/greytick.png',
                                      ),
                                      width: 13.3,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Personal Leave',
                                      style: TextStyle(
                                        fontSize: 14.4,
                                        fontFamily: 'NunitoSans',
                                        fontWeight: FontWeight.w600,
                                        color: Color(
                                          0xff252627,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 24, top: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'History',
                              style: TextStyle(
                                color: Color(0xff71777C),
                                fontWeight: FontWeight.w700,
                                fontSize: 14.4,
                              ),
                            ),
                            Text(
                              'JULY',
                              style: TextStyle(
                                color: Color(0xff71777C),
                                fontWeight: FontWeight.w700,
                                fontSize: 17.28,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 12, left: 16, right: 16),
                        child: Container(
                          height: 70,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 12, top: 12, right: 12),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '1D, 2020-01-17 to 2020-01-17, Full Day',
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              fontFamily: 'NunitoSans',
                                              fontWeight: FontWeight.w600,
                                              color: Color(
                                                0xff71777C,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image(
                                        image: AssetImage(
                                          'assets/greentick.png',
                                        ),
                                        width: 13.3,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Personal Leave',
                                        style: TextStyle(
                                          fontSize: 14.4,
                                          fontFamily: 'NunitoSans',
                                          fontWeight: FontWeight.w600,
                                          color: Color(
                                            0xff252627,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 12, left: 16, right: 16),
                        child: Container(
                          height: 70,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 12, top: 12, right: 12),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '1D, 2020-01-17 to 2020-01-17, Full Day',
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            fontFamily: 'NunitoSans',
                                            fontWeight: FontWeight.w600,
                                            color: Color(
                                              0xff71777C,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        'assets/wrong.png',
                                      ),
                                      width: 13.3,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Sick Leave',
                                      style: TextStyle(
                                        fontSize: 14.4,
                                        fontFamily: 'NunitoSans',
                                        fontWeight: FontWeight.w600,
                                        color: Color(
                                          0xff252627,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LeaveNotification(
                      name: 'Sajan Nepali',
                      text: '1D, 2020-01-17 to 2020-01-17, Full Day',
                      image: 'assets/suman.jpg',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: LeaveNotification(
                      name: 'Lasata Tuladhar',
                      text: '1D, 2020-01-17 to 2020-01-17, Full Day',
                      image: 'assets/sulav.jpg',
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LeaveNotification extends StatefulWidget {
  final name, text, image;
  LeaveNotification({this.name, this.text, this.image});

  @override
  _LeaveNotificationState createState() => _LeaveNotificationState();
}

class _LeaveNotificationState extends State<LeaveNotification> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
              child: leavereqdetail(),
            ),
          ),
        );
      },
      child: Row(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundImage: AssetImage(widget.image),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.name,
                                style: kMyLeaveGrey.copyWith(
                                    color: Color(0xff252627))),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child:
                                  Text(widget.text, style: kMyLeaveLightGrey),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Color(0xff71777C),
                    size: 20,
                  )
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
