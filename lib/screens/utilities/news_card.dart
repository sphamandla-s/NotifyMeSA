import 'package:flutter/material.dart';

class NewsCard extends StatefulWidget {
  const NewsCard({Key? key}) : super(key: key);

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const Image(
                  image:
                      AssetImage('images/vincenzo-malagoli-flfhAlEwDq4-unsplash.jpg'),
                ),
              ),
            ),
            const Text(
              'A South African Scientist discovered a new planet and named it after himself.',
              style: TextStyle(fontSize: 25.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: CircleAvatar(
                        radius: 10.0,
                        foregroundImage: AssetImage(
                            'images/vincenzo-malagoli-flfhAlEwDq4-unsplash.jpg'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Text(
                        'Space News24/7.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Text(
                      '3 h',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.heart_broken)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
