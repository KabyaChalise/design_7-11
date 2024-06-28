import 'package:flutter/material.dart';

List<Content> content = [
  Content("Skipping", "0 seconds", Icons.refresh),
  Content("Jumping Jacks", "30 seconds", Icons.directions_run),
  Content("Push Ups", "15 repetitions", Icons.fitness_center),
  Content("Plank", "1 minute", Icons.accessibility_new),
  Content("Squats", "20 repetitions", Icons.fitness_center),
  Content("Lunges", "15 repetitions each leg", Icons.directions_walk),
  Content("Burpees", "10 repetitions", Icons.directions_run),
  Content("Rest", "1 minute", Icons.hourglass_empty),
];

class Dgnfour extends StatelessWidget {
  const Dgnfour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.blue[400],
          size: 30,
        ),
        title: const Text("Stats"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 2),
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("You've listed for"),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "0 Seconds",
                    style: TextStyle(
                        color: Colors.blue[400],
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("You don't listen much, do you?"),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 20),
              child: Text(
                "TIME SAVED BY",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 200,
              child: Expanded(
                child: ListView.builder(
                    itemCount: content.length,
                    itemBuilder: (context, index) {
                      return CardW(
                          text: content[index].text,
                          subText: content[index].subText,
                          iconData: content[index].iconData);
                    }),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Total",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "0 seconds",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue[400],
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue.shade400,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.layers_rounded), label: "Filter"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.apps_sharp), label: "Podcast"),
          ],
        ),
      ),
    );
  }
}

class CardW extends StatelessWidget {
  final String text;
  final String subText;
  final IconData iconData;
  const CardW(
      {super.key,
      required this.text,
      required this.subText,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      margin: const EdgeInsets.only(bottom: 1),
      height: 54,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      iconData,
                      color: Colors.blue,
                      size: 35,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      text,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Text(
                  subText,
                  style: const TextStyle(fontSize: 18),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Content {
  final String text;
  final String subText;
  final IconData iconData;

  Content(this.text, this.subText, this.iconData);
}
