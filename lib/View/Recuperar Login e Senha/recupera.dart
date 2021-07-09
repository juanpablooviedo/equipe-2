import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecuperaSenha extends StatefulWidget {
  const RecuperaSenha({Key? key}) : super(key: key);

  @override
  _RecuperaSenha createState() => _RecuperaSenha();
}

class _RecuperaSenha extends State<RecuperaSenha> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFA901F7),
        body: Column(
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
                    child: Image.network(
                        "https://i.giphy.com/media/XDdsJoGvQ8Z42M8s1h/giphy.webp"),
                  ),
                  Text(
                    "Lovepeople",
                    style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF3101B9)),
                  ),
                  Container(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed("login");
                      },
                      child: Text(
                        "Voltar",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat-SemiBold"),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF3101B9)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                      color: Colors.white, width: 2)))),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/image/beleza.png',
                ),
              ),
            ),
            Center(
              child: Text(
                'Vixi,esqueceu a senha!! , nem eu sei também kkk..Boa sorte!',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "Montserrat-SemiBold"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
