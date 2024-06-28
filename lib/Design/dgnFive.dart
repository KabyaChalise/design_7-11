import 'package:flutter/material.dart';

final List<Content> colors1 = [
  Content(Colors.red.shade300),
  Content(Colors.blue.shade300),
  Content(Colors.green.shade300),
  Content(Colors.yellow.shade300),
  Content(Colors.orange.shade300),
  Content(Colors.purple.shade300),
  Content(Colors.cyan.shade300),
];

final List<Content> colors2 = [
  Content(Colors.teal.shade300),
  Content(Colors.indigo.shade300),
  Content(Colors.lime.shade300),
  Content(Colors.amber.shade300),
  Content(Colors.deepOrange.shade300),
  Content(Colors.pink.shade300),
  Content(Colors.lightBlue.shade300),
];

class Dgnfive extends StatelessWidget {
  const Dgnfive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(80)),
                        child: const Center(
                            child: Text(
                          "For you",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Today",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Following",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView.builder(
                              itemCount: colors1.length,
                              itemBuilder: (context, index) {
                                return  ContainerCard(
                                  color: colors1[index].color,
                                  height: 200,
                                );
                              }),
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: colors2.length,
                              itemBuilder: (context, index) {
                                return  ContainerCard(
                                  color: colors2[index].color,
                                  height: 300,
                                );
                              }),
                        ),
                      ],
                    ),
                  )
                ],
              ),

            ),
            
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.only(bottom: 50, left: 40, right: 40),
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: Colors.black,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.search),
                      label: "Search",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.notifications_active_sharp),
                      label: "Notification",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      label: "Person",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerCard extends StatelessWidget {
  final double height;
  final Color color;
  const ContainerCard({super.key, required this.height,required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: height,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(17)),
          ),
          const Icon(Icons.more_horiz)
        ],
      ),
    );
  }
}

class Content {
  final Color color;
  Content(this.color);
}
