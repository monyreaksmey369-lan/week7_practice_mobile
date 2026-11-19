import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: Column(
          children: [
            Container(
                // YOUR CODE
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(5),
                child: Column(
                  spacing: 20,
                  children: [
                    FavoriteCard(
                      title: "title",
                      description: "description",
                    ),
                    FavoriteCard(
                      title: "title",
                      description: "description",
                    ),
                    FavoriteCard(
                      title: "title",
                      description: "description",
                    )
                  ]
                )
            )
          ],
        ),
      ),
    ));

class FavoriteCard extends StatefulWidget {
  final String title;
  final String description;
  const FavoriteCard({super.key, required this.title, required this.description});

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title, style: const TextStyle(fontSize: 20, color: Colors.blue),),
                Text(widget.description),
              ],
            )
          ),
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color : isFavorite ? Colors.red : null,
            ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
          ),
        ],
      ),
    );
  }
}