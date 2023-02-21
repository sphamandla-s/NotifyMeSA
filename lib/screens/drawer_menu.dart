import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
              const Text(
                "Profile",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(
                width: 20.0,
              )
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              children: [
                const CircleAvatar(),
                const SizedBox(
                  width: 18.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Sphamandla'),
                    Text('mdletshespha38@gmail.com')
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(top: BorderSide(color: Colors.black26))),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Settings & Functions', style: TextStyle(fontSize: 25.0),),
                  const SizedBox(
                    height: 20.0,
                  ),
                  settingsCards(Icons.notifications, 'Notifications', (){}),
                  settingsCards(Icons.security, 'Security', (){}),
                  settingsCards(Icons.help, 'Help Center', (){}),
                  settingsCards(Icons.report, 'Report', (){}),
                  settingsCards(Icons.rate_review, 'Rate Us', (){}),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget settingsCards(IconData iconData, String label, VoidCallback function){
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).cardColor, borderRadius: BorderRadius.circular(15.0)),
       margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20.0),
      child: GestureDetector(
        onTap: function,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(children:  [
              Icon(iconData),
              const SizedBox(width: 10.0,),
              Text(label, style: const TextStyle(fontSize: 16.0),),
            ],),
            const Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }



}
