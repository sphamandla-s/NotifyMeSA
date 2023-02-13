import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:share_plus/share_plus.dart';

class NewsCard extends StatefulWidget {
  const NewsCard({Key? key}) : super(key: key);

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const Image(
                  image: AssetImage(
                      'images/vincenzo-malagoli-flfhAlEwDq4-unsplash.jpg'),
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
                    const LikeButton(),
                    IconButton(
                      onPressed: () {
                        Share.share('Some text');
                      },
                      icon: const Icon(Icons.share),
                    ),
                    IconButton(
                      onPressed: () {
                        showBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return _bottomSheet();
                            });
                      },
                      icon: const Icon(Icons.more_vert_rounded),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _bottomSheet() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("More options"),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.close_outlined)),
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.white60))),
            ),
            _bottomSheetContent(
                Icons.not_interested, 'Not interested in this'),
            _bottomSheetContent(Icons.not_interested,
                'Don\'t show content from Space News24/7'),
            _bottomSheetContent(Icons.manage_search, 'Manage your interest'),
            _bottomSheetContent(
                Icons.help_outline_rounded, 'About this source & topic'),
            _bottomSheetContent(Icons.flag, 'Report this'),
            _bottomSheetContent(Icons.feedback_outlined, 'Send feedback'),
          ],
        ),
      ),
    );
  }

  Widget _bottomSheetContent(IconData iconData, String label) {
    return Expanded(
      child: GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            Icon(iconData),
            const SizedBox(
              width: 15.0,
            ),
            Text(label),
          ],
        ),
      ),
    );
  }

}
