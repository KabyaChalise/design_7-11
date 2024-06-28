
import 'package:flutter/material.dart';
List<Content> content = [
  Content(
      title: "LIFE HACK",
      subTitle: "Cut the noise and find calm",
      text: "Apps to help you take control of your thoughts.",
      color: Colors.amber.shade300),
  Content(
      title: "HEALTH TIPS",
      subTitle: "Stay fit and healthy",
      text: "Discover new ways to improve your health.",
      color: Colors.pink.shade300),
  Content(
      title: "MOTIVATION",
      subTitle: "Keep pushing forward",
      text: "Get inspired by these motivational quotes.",
      color: Colors.orange.shade300),
];



class Dgnone extends StatelessWidget {
  const Dgnone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "SUNDAY 23 JUNE",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Today",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 3),
                            borderRadius: BorderRadius.circular(100)),
                        child: const Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.blue,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: Container(
                    height: 590,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: content.length,
                        itemBuilder: (context, index) {
                          return CardWidget(
                            title: content[index].title,
                            subTitle: content[index].subTitle,
                            text: content[index].text,
                            color: content[index].color,
                          );
                        }),
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          child: Container(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 90,
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.blue,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.today), label: 'Today'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.rocket), label: 'Games'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.apps), label: 'Apps'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.gamepad_outlined), label: 'Arcade'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search), label: 'Search'),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String text;
  final Color? color;
  const CardWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.text,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.white70, fontSize: 20),
                ),
                Text(
                  subTitle,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}

class Content {
  final String title;
  final String subTitle;
  final String text;
  final Color? color;
  Content(
      {required this.title,
      required this.subTitle,
      required this.text,
      required this.color});
}
