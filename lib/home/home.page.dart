import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(250, 128, 114, 1.0),
        leading: const Icon(Icons.arrow_back_ios_new_rounded),
        title: const Text(
          "Share",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
        ),
      ),
      body: Stack(
        children: [
          const Image(
            image:NetworkImage(
                "https://i.pinimg.com/originals/ed/3a/68/ed3a68a0b7bfd64492e139390dc59dbc.jpg"),
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 100.0,
              decoration:const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: <double>[0.5,0.5],
                  colors: <Color>[
                    Colors.black12,
                    Colors.black45,
                  ],
                ),
              ),
              child:const Text("ROSE", style: TextStyle(
                color: Colors.white70,
                fontSize:25.0,
                fontWeight: FontWeight.bold
              ),),
            ),
          )
        ],
      ),
    );
  }
}
