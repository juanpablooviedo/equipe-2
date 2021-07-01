import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/login_access.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA901F7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 50),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                    bottomRight: Radius.circular(200)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: Image.asset('assets/images/logo_lovepeople.png'),
                  ),
                  Text(
                    "Lovepeople",
                    style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF3101B9)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              "Que bom que voltou!",
              style: GoogleFonts.montserrat(
                color: Color(0xFFFFFFFF),
                fontSize: 31,
                fontWeight: FontWeight.w500,
              ),
            ),
            LoginAccess(),
          ],
        ),
      ),
    );
  }
}
