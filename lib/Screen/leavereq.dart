import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_system/Screen/maindashboard.dart';
import '../constants.dart';
import 'BottomNav/search.dart';
import 'leavelisting.dart';

enum Time { fullDay, firstHalf, secondHalf }

class ApplyLeave extends StatefulWidget {
  @override
  _ApplyLeaveState createState() => _ApplyLeaveState();
}

class _ApplyLeaveState extends State<ApplyLeave> {
  Time selectedTime = Time.fullDay;
  DateTime? _dateTime;
  DateTime? _dateTime1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F0F0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
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
            Text('Apply Leave',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17.28,
                    color: Color(0xff252627))),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LeaveListing();
                }));
              },
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20.0,
                child: Image(
                  image: AssetImage(
                    'assets/menu.png',
                  ),
                  width: 20,
                ),
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff2F9BF2),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            // height: 80,
                            // width: 160,

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Text('Leave Left', style: kStyleLeave),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 15.0, right: 16.0),
                                      child:
                                          Text('18', style: kStyleLeaveNumber),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Color(0xffEC5151),
                            ),
                            // height: 80,
                            // width: 152,

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child:
                                      Text('Leaves Taken', style: kStyleLeave),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 15.0, right: 16.0),
                                      child: Text(
                                        '0',
                                        style: kStyleLeaveNumber,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Leave Approver',
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Avash Shrestha',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff71777C)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Divider(
                      color: Color(0xffBBBFC2),
                      thickness: 1.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      'Leave Type',
                      style: TextStyle(
                          color: Color(0xff252627),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        filled: true,
                        contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              BorderSide(width: 012, color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              BorderSide(width: 0.1, color: Colors.white),
                        ),
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                          fontFamily: 'NunitoSans',
                          color: Color(0xff71777C),
                        ),
                        hintText: 'Casual Leave (sick+emergency)'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0, bottom: 4.0),
                    child: Text(
                      'Leave For',
                      style: TextStyle(
                          color: Color(0xff252627),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    children: [
                      ReusableCard(
                        onPressed: () {
                          setState(() {
                            selectedTime = Time.fullDay;
                          });
                        },
                        colour: selectedTime == Time.fullDay
                            ? Color(0xff2F9BF2)
                            : Color(0xffFFFFFF),
                        text: 'Full Day',
                        colorText: selectedTime == Time.fullDay
                            ? Color(0xffFFFFFF)
                            : Color(0xff000000),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      ReusableCard(
                          onPressed: () {
                            setState(() {
                              selectedTime = Time.firstHalf;
                            });
                          },
                          colour: selectedTime == Time.firstHalf
                              ? Color(0xff2F9BF2)
                              : Color(0xffFFFFFF),
                          text: 'First Half',
                          colorText: selectedTime == Time.firstHalf
                              ? Color(0xffFFFFFF)
                              : Color(0xff000000)),
                      SizedBox(
                        width: 8.0,
                      ),
                      ReusableCard(
                          onPressed: () {
                            setState(() {
                              selectedTime = Time.secondHalf;
                            });
                          },
                          colour: selectedTime == Time.secondHalf
                              ? Color(0xff2F9BF2)
                              : Color(0xffFFFFFF),
                          text: 'Second Half',
                          colorText: selectedTime == Time.secondHalf
                              ? Color(0xffFFFFFF)
                              : Color(0xff000000)),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0, bottom: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Text('From')),
                        Text('To')
                      ],
                    ),
                  ),
                  //Calender
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            FocusScope.of(context)
                                .requestFocus(new FocusNode());
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2100),
                            ).then((date) {
                              setState(() {
                                _dateTime = date!;
                              });
                            });
                          },
                          child: Container(
                            color: Colors.white,
                            height: 40.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 9.41,
                                    ),
                                    child: Text(
                                      _dateTime == null
                                          ? ''
                                          : _dateTime!.day.toStringAsFixed(0) +
                                              '/' +
                                              _dateTime!.month
                                                  .toStringAsFixed(0) +
                                              '/' +
                                              _dateTime!.year
                                                  .toStringAsFixed(0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 9.41,
                                    left: 9.41,
                                  ),
                                  child: Image(
                                    image: AssetImage(
                                      'assets/calendar.png',
                                    ),
                                    width: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            FocusScope.of(context)
                                .requestFocus(new FocusNode());
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2100),
                            ).then((date) {
                              setState(() {
                                _dateTime1 = date!;
                              });
                            });
                          },
                          child: Container(
                            color: Colors.white,
                            height: 40.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 9.41,
                                    ),
                                    child: Text(
                                      _dateTime1 == null
                                          ? ''
                                          : _dateTime1!.day.toStringAsFixed(0) +
                                              '/' +
                                              _dateTime1!.month
                                                  .toStringAsFixed(0) +
                                              '/' +
                                              _dateTime1!.year
                                                  .toStringAsFixed(0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 9.41,
                                    left: 9.41,
                                  ),
                                  child: Image(
                                    image: AssetImage(
                                      'assets/calendar.png',
                                    ),
                                    width: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 4.0),
                    child: Text(
                      'Substitute Personnel',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff252627)),
                    ),
                  ),
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
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            child: search(),
                          ),
                        ),
                      );
                    },
                    child: Container(
                      color: Colors.white,
                      height: 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 9.41,
                            ),
                            child: Image(
                              image: AssetImage(
                                'assets/searchuser.png',
                              ),
                              width: 15,
                            ),
                          ),
                        ],
                        /* decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          filled: true,
                          contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide:
                                BorderSide(width: 0.1, color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide:
                                BorderSide(width: 0.1, color: Colors.white),
                          ),
                          suffixIcon: Icon(Icons.person),
                        ),*/
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 4.0),
                    child: Text(
                      'Current Status',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff252627)),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide: BorderSide(width: 0.1, color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 4.0),
                    child: Text(
                      'Reason for Leave',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff252627)),
                    ),
                  ),
                  SizedBox(
                    // height: 200,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.top,
                      minLines: 2,
                      maxLines: 5,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(8, 12, 8, 60.0),
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              BorderSide(width: 0.1, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 48.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MainDashboard();
                        }));
                      }, //0xff3A00BF
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Ink(
                          decoration: BoxDecoration(
                              color: Color(0xff52BD2C),
                              borderRadius: BorderRadius.circular(4)),
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'Apply',
                                style: TextStyle(color: Colors.white),
                              ))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.onPressed,
      required this.colour,
      required this.text,
      required this.colorText});
  final onPressed;
  final Color colour;
  final String text;
  final Color colorText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 32,
        width: text == 'Second Half' ? 90 : 73,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              fontSize: 12, color: colorText, fontWeight: FontWeight.w400),
        )),
      ),
    );
  }
}

// Color(0xff2F9BF2)
class SearchResult extends StatelessWidget {
  SearchResult(this.image, this.name, this.role, this.onPress);

  final image;
  final name;
  final role;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: name == 'Avash Shrestha' ? Color(0xffECF1F5) : Colors.white,
          borderRadius: BorderRadius.vertical(),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 3.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 24.0,
              backgroundImage: AssetImage(image),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                      fontFamily: 'NunitoSans',
                      color: Color(0xff252627)),
                ),
                Text(
                  role,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.0,
                      fontFamily: 'NunitoSans',
                      color: Color(0xff71777C)),
                ),
              ],
            ),
            trailing: Icon(
              name == 'Avash Shrestha' ? Icons.check : null,
              color: Color(0xff52BD2C),
            ),
          ),
        ),
      ),
    );
  }
}
