import 'package:anasgame/data/models/results.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Gam extends StatelessWidget {
  final Result res;

  const Gam({required this.res, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: Colors.white12,
        ),
      ),
      margin: const EdgeInsets.only(top: 8),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10)),
            child: Image.network(
              '${res.backgroundImage}',
              width: 55,
              height: 55,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${res.name}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  '${res.genres[0].name}',
                  style: const TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    RatingBarIndicator(
                      rating: res.rating,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 15,
                      direction: Axis.horizontal,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .45,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'GamesDetail',arguments: res);
                      },
                      child: const Text(
                        'ViewMore',
                        style: TextStyle(fontSize: 9,color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        minimumSize: const Size(4, 4),
                        backgroundColor: Colors.yellow[500],
                        padding: const EdgeInsets.all(16),
                      ),
                    ),
                  ],
                )
              ]),
        ],
      ),
    );
  }
}
