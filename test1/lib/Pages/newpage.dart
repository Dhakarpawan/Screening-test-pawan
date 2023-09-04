import 'package:flutter/material.dart';
import 'package:test1/Pages/homepage.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(81, 19, 103, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ),
      body: Center(
          child: Image.network(
              'https://media.tenor.com/5pxLY5DGvmkAAAAd/clone_shaktimaan-clone-shaktimaan.gif')),
    );
  }
}
