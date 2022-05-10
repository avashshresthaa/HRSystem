import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_system/Screen/Tabs/myleave.dart';

class LeaveListing extends StatefulWidget {
  @override
  _LeaveListingState createState() => _LeaveListingState();
}

class _LeaveListingState extends State<LeaveListing> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          brightness: Brightness.light,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(
              top: 16,
            ),
            child: Row(
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
                Text('Leave Listings',
                    style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontWeight: FontWeight.w600,
                        fontSize: 17.28,
                        color: Color(0xff252627))),
                CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 20.0,
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 32,
          ),
          child: TabBarView(
            children: [
              MyLeave(),
            ],
          ),
        ),
      ),
    );
  }
}
