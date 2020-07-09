import 'package:flutter/material.dart';

class SelectProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Image.asset(
          "assets/imgs/logo.png",
          height: 45,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(25),
          color: Colors.black,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Text(
                "Quem está assistindo?",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(5, (index) {
                    return Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10, right: 18, left: 18, bottom: 30),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: ExactAssetImage(
                                      "assets/imgs/profile_${index + 1}.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Perfil ${index + 1}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )),
                      ],
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
