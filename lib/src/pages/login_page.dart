import 'package:flutter/material.dart';
import 'package:flutterflix/src/pages/select_profile_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/imgs/logo.png",),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.15,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xff333333),
                        borderRadius: BorderRadius.circular(6)),
                    child: TextField(
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                      cursorColor: Colors.grey,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(16),
                          labelText: "Email ou número de telefone",
                          labelStyle: TextStyle(
                            color: Colors.white38,
                            fontSize: 18,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.15,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xff333333),
                        borderRadius: BorderRadius.circular(6)),
                    child: TextField(
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                      cursorColor: Colors.grey,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(16),
                          labelText: "Senha",
                          labelStyle: TextStyle(
                            color: Colors.white38,
                            fontSize: 18,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.15,
                    height: 60,
                    child: OutlineButton(
                      highlightColor: Color(0xff2d3436),
                      splashColor: Color(0xff2d3436),
                      highlightedBorderColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      color: Colors.white,
                      borderSide: BorderSide(width: 1.5, color: Colors.grey),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => SelectProfilePage())
                        );
                      },
                      child: Text(
                        "Entrar",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Precisa de ajuda?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Novo por aqui? Inscreva-se agora.",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
