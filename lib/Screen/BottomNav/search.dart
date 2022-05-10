import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../leavereq.dart';
import '../profilesecond.dart';

//Imp padding
/*
padding: EdgeInsets.only(
bottom:
MediaQuery.of(context)
.viewInsets
    .bottom),
*/

class search extends StatelessWidget {
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
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 24, bottom: 18.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(width: 0.9, color: Color(0xffD8DDE0))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(width: 0.9, color: Color(0xffD8DDE0))),
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0,
                        fontFamily: 'NunitoSans',
                        color: Color(0xff8A8C8F)),
                    hintText: 'Search Personnel',
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
                  ),
                ),
              ),
              SearchResult(
                'assets/rick.png',
                'Avash Shrestha',
                'Mobile Developer',
                () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProfileSec();
                  }));
                },
              ),
              SearchResult(
                'assets/sajan.png',
                'Sajan Nepal',
                'UI Engineer',
                () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProfileSec();
                  }));
                },
              ),
              SearchResult(
                'assets/bandana.png',
                'Bandana Bajracharya',
                'Senior UI/UX Engineer',
                () {
                  Navigator.pop(context);
                },
              ),
              SearchResult(
                'assets/sagar.png',
                'Sagar Sahi',
                'UI Engineer',
                () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
