import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_system/Screen/checkedin.dart';

//Imp padding
/*
padding: EdgeInsets.only(
bottom:
MediaQuery.of(context)
.viewInsets
    .bottom),
*/

class cibottom_sheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: Container(
        color: Color(0x00000000),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffF0F0F0),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 24, bottom: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Task to do',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'NutinoSans',
                          color: Color(0xff252627),
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 4,
                        bottom: 16,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                            height: 1.4,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0,
                            fontFamily: 'NunitoSans',
                            color: Colors.black),
                        textAlignVertical: TextAlignVertical.top,
                        minLines: 2,
                        maxLines: 5,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(8, 12, 8, 90.0),
                          fillColor: Colors.white,
                          filled: true,
                          hintText:
                              'Excepteur tempor sit veniam exercitation laboris irure sit ullamco nostrud nisi enim Lorem eu. Veniam sunt ipsum mollit aute eiusmod tempor. ',
                          hintStyle: TextStyle(
                            height: 1.4,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0,
                            fontFamily: 'NunitoSans',
                            color: Color(0xff71777C),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CheckedIn();
                        }));
                      },
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
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
