import 'package:anasgame/data/models/genres/result.dart';
import 'package:flutter/material.dart';


class Cat extends StatelessWidget {
  final Results results;

  const Cat({super.key, required this.results});

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: const EdgeInsets.only(top: 10,),
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/games.png',height: 100,),
            //SizedBox(height: 10,),
            Center(
              child: Column(
                children: [
                  Container(
                      decoration: const BoxDecoration(

                      ),
                      padding: const EdgeInsets.symmetric(
                           horizontal: 5),
                      child: Text(
                        '${results.name}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
