import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignInPageState();
  }
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    var upperPadding = MediaQuery.of(context).size.height * 0.2;
    var sidePadding = MediaQuery.of(context).size.width * 0.15;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.fromLTRB(sidePadding, upperPadding, sidePadding, 0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign In',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            // TODO: Make row for leading icon and TextFormFeild
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter Number',
                icon: Container(
                  // color: Colors.white,
                  child: Image.asset('asset/icons/mobile-test.png'),
                  height: 40,
                  width: 30,
                ),
              ),
              validator: (value) {
                if (value == '') {
                  return 'Enter number';
                }
              },
              onChanged: (value) {
                print(value);
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            // TODO: Make row for leading icon and TextFormFeild
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter OTP',
                icon: Container(
                  // color: Colors.white,
                  child: Image.asset('asset/icons/otp.png'),
                  height: 40,
                  width: 30,
                ),
              ),
              onChanged: (value) {
                print(value);
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Container(
              padding: EdgeInsets.only(left: 195),
              child: TextButton(
                onPressed: () {
                  print('Resending OTP');
                },
                child: Text('Resend OTP'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Center(
              child: ElevatedButton(
                child: Container(
                  padding: EdgeInsets.fromLTRB(90, 8, 90, 8),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                onPressed: () {
                  print('Data Submitted');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
