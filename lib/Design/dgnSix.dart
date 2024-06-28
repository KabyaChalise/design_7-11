import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dgnsix extends StatelessWidget {
  const Dgnsix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Deliver now",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Salting Street & Mizzen Street",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Icon(Icons.arrow_drop_down)
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.notifications_active_outlined,
                          size: 25,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search Your Eats",
                            contentPadding: EdgeInsets.all(10)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 90,
                child: Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: menu.length,
                      itemBuilder: (context, index) {
                        return MenuItems(
                            iconData: menu[index].iconData,
                            menuText: menu[index].menuText);
                      }),
                ),
              ),
              SizedBox(
                height: 40,
                child: Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: details.length,
                      itemBuilder: (context, index) {
                        return Details(
                          iconData: details[index].iconData,
                          text: details[index].text,
                        );
                      }),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      height: 150,
                      width: double.infinity,
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "The classics.",
                                  style: TextStyle(color: Colors.amber),
                                ),
                                Text(
                                  "Now a little more",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "MC Don land's",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '\$50 Delivery Fee ',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 225, 90, 80),
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "10-20 min",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(200)),
                              child: const Center(child: Text("4.2")),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "In a rush?",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Here's the fastest delivery for you",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(200)),
                          child: const Center(child: Icon(Icons.arrow_forward)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                child: Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: rush.length,
                      itemBuilder: (context, index) {
                        return  RushCard(
                          color: rush[index].color,
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: BottomNavigationBar(
            selectedItemColor: Colors.black,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.apple_sharp), label: "Groccery"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Browse"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_basket), label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ]),
      ),
    );
  }
}

final List<MenuItems> menu = [
  MenuItems(iconData: FontAwesomeIcons.burger, menuText: "Burger"),
  MenuItems(iconData: FontAwesomeIcons.pizzaSlice, menuText: "Pizza"),
  MenuItems(iconData: FontAwesomeIcons.iceCream, menuText: "Ice Cream"),
  MenuItems(iconData: FontAwesomeIcons.coffee, menuText: "Coffee"),
  MenuItems(iconData: FontAwesomeIcons.beer, menuText: "Beer"),
  MenuItems(iconData: FontAwesomeIcons.appleAlt, menuText: "Fruit Salad"),
  MenuItems(iconData: FontAwesomeIcons.cookie, menuText: "Cookies"),
  MenuItems(iconData: FontAwesomeIcons.hotdog, menuText: "Hot Dog"),
  MenuItems(iconData: FontAwesomeIcons.cocktail, menuText: "Cocktail"),
  MenuItems(iconData: FontAwesomeIcons.wineGlassAlt, menuText: "Wine"),
  MenuItems(iconData: FontAwesomeIcons.utensils, menuText: "Dinner Combo"),
];
class MenuItems extends StatelessWidget {
  final IconData iconData;
  final String menuText;

  const MenuItems({super.key, required this.iconData, required this.menuText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Center(
        child: Column(
          children: [
            Icon(
              iconData,
              size: 50,
              color: Colors.amber.shade400,
            ),
             Text(menuText)
          ],
        ),
      ),
    );
  }
}
final List<Details> details = [
  Details(iconData: Icons.run_circle_outlined, text: "Fast Delivery"),
  Details(iconData: Icons.restaurant, text: "Great Food"),
  Details(iconData: Icons.star, text: "Top Rated"),
  Details(iconData: Icons.watch_later_outlined, text: "Open 24/7"),
  Details(iconData: Icons.local_offer_outlined, text: "Special Offers"),
];

class Details extends StatelessWidget {
  final IconData iconData;
  final String text;
  Details({super.key, required this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: 140,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(40)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData),
            SizedBox(
              width: 7,
            ),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
final List<RushCard> rush = [
  RushCard(color: Colors.red.shade300),
  RushCard(color: Colors.blue.shade300),
  RushCard(color: Colors.green.shade300),
  RushCard(color: Colors.orange.shade300),
  RushCard(color: Colors.purple.shade300),
  RushCard(color: Colors.yellow.shade300),
  RushCard(color: Colors.teal.shade300),
];



class RushCard extends StatelessWidget {
  final Color color;
  RushCard({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10)),
        height: 150,
        width: 270,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "The classics.",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "Now a little more",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
