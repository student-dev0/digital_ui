import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(50))),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                    title: Text('Hello Emmy!',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: Colors.white)),
                    subtitle: Text('Good morning',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: Colors.white54)),
                    trailing: const CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('assets/wallhaven-3l828y.jpg'),
                    )),
                const SizedBox(height: 0),
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              decoration: const BoxDecoration(
                  color: Colors.white38,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(200))),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashBoard(
                      'Videos', Icons.play_circle_fill, Colors.deepOrange),
                  itemDashBoard(
                      'Analytics', Icons.graphic_eq_rounded, Colors.green),
                  itemDashBoard('Audience', Icons.person_3, Colors.purple),
                  itemDashBoard('Comments', Icons.chat_bubble, Colors.brown),
                  itemDashBoard(
                      'Revenue', Icons.currency_exchange, Colors.indigo),
                  itemDashBoard('Upload', Icons.add_circle, Colors.teal),
                  itemDashBoard('About', Icons.question_answer_rounded,
                      Colors.deepOrange),
                  itemDashBoard('Contact', Icons.phone, Colors.pinkAccent),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  itemDashBoard(String title, IconData iconData, Color background) => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black45, width: 2),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  color: Theme.of(context).primaryColor.withOpacity(.2),
                  spreadRadius: 2,
                  blurRadius: 5)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: background, shape: BoxShape.circle),
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              title.toUpperCase(),
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
      );
}
