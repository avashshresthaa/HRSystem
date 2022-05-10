import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_system/Screen/checkedin.dart';

import '../../constants.dart';

//Imp padding
/*
padding: EdgeInsets.only(
bottom:
MediaQuery.of(context)
.viewInsets
    .bottom),
*/

class leavereqdetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: Container(
        color: Color(0x00000000),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 24, bottom: 18.0),
                child: Container(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12, right: 12),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 40),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Rick Sanchez',
                                                  style: TextStyle(
                                                    fontSize: 14.4,
                                                    fontFamily: 'NunitoSans',
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(
                                                      0xff252627,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 40, top: 4),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Senior UI Engineer',
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                fontFamily: 'NunitoSans',
                                                fontWeight: FontWeight.w600,
                                                color: Color(
                                                  0xff71777C,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(
                              'assets/rick.png',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Total Days', style: kMyLeaveGrey),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // height: 80,
                              // width: 152,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Leaves For', style: kMyLeaveGrey),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('1 day', style: kMyLeaveLightGrey),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // height: 80,
                              // width: 152,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Full Day', style: kMyLeaveLightGrey),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Leave Type', style: kMyLeaveGrey),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // height: 80,
                              // width: 152,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Substitute Personnel',
                                      style: kMyLeaveGrey),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Unpaid Leave',
                                      style: kMyLeaveLightGrey),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // height: 80,
                              // width: 152,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Avash Shrestha',
                                      style: kMyLeaveLightGrey),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Duration', style: kMyLeaveGrey),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('2020-01-17 to 2020-01-17',
                                      style: kMyLeaveLightGrey),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Reason to leave', style: kMyLeaveGrey),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Color(0xffD8DDE0))),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(12, 12, 28, 12),
                              child: Text(
                                'Excepteur tempor sit veniam exercitation laboris irure sit ullamco nostrud nisi enim Lorem eu. Veniam sunt ipsum mollit aute eiusmod tempor.',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'NunitoSans',
                                  fontWeight: FontWeight.w400,
                                  color: Color(
                                    0xff71777C,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    child: Ink(
                                        decoration: BoxDecoration(
                                            color: Color(0xffEC5151),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 40,
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Reject',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ))),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Container(
                              // height: 80,
                              // width: 152,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    child: Ink(
                                        decoration: BoxDecoration(
                                            color: Color(0xff52BD2C),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 40,
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Approve',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ))),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
