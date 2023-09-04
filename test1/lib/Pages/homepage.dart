import 'package:flutter/material.dart';
import 'package:test1/Pages/newpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 211, 198, 237),
        drawer: Drawer(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Funny Enough",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          backgroundColor: const Color.fromRGBO(81, 19, 103, 1),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 250,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Image.network(
                      'https://media.tenor.com/xjYMUqvC1SQAAAAC/shaktimaan-tv.gif'),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(81, 19, 103, 1),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.open_in_new,
                        size: 50,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => NewPage()));
                      },
                    ))
              ],
            )
          ],
        ));
  }
}
