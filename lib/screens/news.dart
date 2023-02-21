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

    Widget tabs(String label, VoidCallback onTap) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.only(left: 10.0),
            height: 10.0,
            child: Text(
                  label,
                  style: const TextStyle(fontSize: 20.0,),
                )),
      );
    }

    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.menu)),
              const Text('News Today', style: TextStyle(fontSize: 20.0,),),
              IconButton(onPressed: (){}, icon: const Icon(Icons.search))
            ],
          ),
          SizedBox(
            width: double.maxFinite,
            height: 50.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                tabs('All', (){} ),
                tabs('Technology', (){} ),
                tabs('Science', (){} ),
                tabs('Finance', (){} ),
                tabs('Sports', (){} )
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
