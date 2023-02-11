import 'package:flutter/material.dart';
import 'package:notify_me_sa/screens/utilities/news_card.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _searchController;
  }

  @override
  Widget build(BuildContext context) {
    var tt = [
      const NewsCard(),
      const NewsCard(),
      const NewsCard(),
    ];

    Widget tabs(String label) {
      return Container(
        margin: const EdgeInsets.only(left: 10.0),
          height: 10.0,
          child: TextButton(
              onPressed: () {},
              child: Text(
                label,
                style: const TextStyle(fontSize: 20.0,),
              )));
    }

    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                radius: 25.0,
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 15.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade100),
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        suffix: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.mic_none_outlined),
                          color: Colors.blueAccent,
                        ),
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Search for News'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.maxFinite,
            height: 50.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                tabs('All'),
                tabs('Technology'),
                tabs('Science'),
                tabs('Finance'),
                tabs('Sports')
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Center(child: tt[index]);
              },
              itemCount: tt.length,
            ),
          )
        ],
      ),
    ));
  }
}
