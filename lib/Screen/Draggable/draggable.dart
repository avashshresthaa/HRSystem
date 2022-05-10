import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_system/Screen/BottomNav/checkintdo.dart';
import '../../constants.dart';
import '../settings.dart';

class DraggableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                Text('You haven \'t checked in.',
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
                                width: 115,
                                //Check In
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                              side: BorderSide(
                                                  color: Color(0xff2F9BF2))))),
                                  onPressed: () {
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      enableDrag: false,
                                      backgroundColor:
                                          Color(0xff252627).withOpacity(0.5),
                                      context: context,
                                      builder: (context) =>
                                          SingleChildScrollView(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              bottom: MediaQuery.of(context)
                                                  .viewInsets
                                                  .bottom),
                                          child: cibottom_sheet(),
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'CHECK IN',
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
                                          MaterialPageRoute(builder: (context) {
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 28,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Leaves Taken', style: kStyleCheckedIn),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
}
