import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hr_system/Screen/maindashboard.dart';
import 'BottomNav/search.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHiddenPassword = true;
  bool isChecked = false;

  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              // status bar color
              brightness: Brightness.light,
              automaticallyImplyLeading: false,
              actions: [],
            ),
            extendBodyBehindAppBar: true,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background.png'),
                    fit: BoxFit.fill),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/logo.png',
                            width: 160,
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            'Human Resource System',
                            style: TextStyle(
                              fontFamily: 'NunitoSans',
                              fontSize: 17.28,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff252627),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 32.0,
                          right: 24.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 20.74,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff252627),
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              'Please sign in to continue',
                              style: TextStyle(
                                fontSize: 14.4,
                                color: Color(0xff71777C),
                              ),
                            ),
                            SizedBox(
                              height: 32.0,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  border: InputBorder.none,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 0.1, color: Colors.white),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 0.1, color: Colors.white),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  hintText: 'Email',
                                  contentPadding:
                                      EdgeInsets.fromLTRB(8, 12, 8, 0),
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.grey,
                                  )),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                TextFormField(
                                  obscureText: isHiddenPassword,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    border: InputBorder.none,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 0.1, color: Colors.white),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 0.1, color: Colors.white),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    hintText: 'Password',
                                    contentPadding:
                                        EdgeInsets.fromLTRB(8, 12, 8, 0),
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 12),
                                  child: InkWell(
                                    onTap: _togglePasswordView,
                                    child: Icon(
                                      isHiddenPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                      child: Checkbox(
                                        value: isChecked,
                                        activeColor: Colors.lightBlueAccent,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isChecked = value!;
                                          });
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        'Remember me',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff71777C),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff71777C),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 116),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return MainDashboard();
                                  }));
                                },
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: Ink(
                                  decoration: BoxDecoration(
                                      color: Color(0xff52BD2C),
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 40,
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Login',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
