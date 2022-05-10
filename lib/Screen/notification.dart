import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPG extends StatefulWidget {
  @override
  _NotificationPGState createState() => _NotificationPGState();
}

class _NotificationPGState extends State<NotificationPG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
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
              Text('Notifications',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17.28,
                      color: Color(0xff252627))),
              GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20.0,
                  child: Image(
                    image: AssetImage(
                      'assets/brush.png',
                    ),
                    width: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                child: Container(
                  height: 60,
                  color: Colors.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 12, top: 12, right: 12),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Sajan Nepali',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'NunitoSans',
                                    fontWeight: FontWeight.w600,
                                    color: Color(
                                      0xff252627,
                                    ),
                                  ),
                                ),
                                Text(
                                  ' has requested to leave.',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'NunitoSans',
                                    fontWeight: FontWeight.w400,
                                    color: Color(
                                      0xff252627,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 8,
                                  color: Colors.blue,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              '1 min ago.',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'NunitoSans',
                                fontWeight: FontWeight.w400,
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
                padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
                child: Container(
                  height: 60,
                  color: Colors.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 12, top: 12, right: 12),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Review request for',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'NunitoSans',
                                    fontWeight: FontWeight.w400,
                                    color: Color(
                                      0xff252627,
                                    ),
                                  ),
                                ),
                                Text(
                                  ' Avash Shrestha',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'NunitoSans',
                                    fontWeight: FontWeight.w600,
                                    color: Color(
                                      0xff252627,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 8,
                                  color: Colors.grey,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              '2 hrs ago.',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'NunitoSans',
                                fontWeight: FontWeight.w400,
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
                padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
                child: Container(
                  height: 60,
                  color: Colors.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 12, top: 12, right: 12),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Review request for',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'NunitoSans',
                                    fontWeight: FontWeight.w400,
                                    color: Color(
                                      0xff252627,
                                    ),
                                  ),
                                ),
                                Text(
                                  ' Suman Shrestha',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'NunitoSans',
                                    fontWeight: FontWeight.w600,
                                    color: Color(
                                      0xff252627,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 8,
                                  color: Colors.grey,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              '2 hrs ago.',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'NunitoSans',
                                fontWeight: FontWeight.w400,
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
      ),
    );
  }
}
