import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<Content> content = [
  Content("Pockets", 123, Icons.circle_outlined),
  Content("Savings", 250, Icons.savings),
  Content("Investments", 320, Icons.trending_up),
  Content("Rewards", 180, Icons.card_giftcard),
];

class Dgnseven extends StatelessWidget {
  const Dgnseven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.deepPurple[600],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[500],
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Center(
                            child: Text(
                          "Upgrade",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Earn\$75",
                        style: TextStyle(
                            color: Colors.deepPurple[500],
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.message,
                        color: Colors.deepPurple[500],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.deepPurple[500]),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Your Plain value",
                                style: TextStyle(
                                    color: Colors.grey.shade300,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.info_outlined,
                                size: 15,
                                color: Colors.grey.shade300,
                              ),
                            ],
                          ),
                          Container(
                            height: 40,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.deepPurple[500],
                                ),
                                Text(
                                  "Add money",
                                  style:
                                      TextStyle(color: Colors.deepPurple[500]),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\$145.23",
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                color: Colors.white,
                                size: 30,
                              ),
                              Text(
                                "\$73.23 past week",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: content.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 70,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return ItemCard(
                      itemName: content[index].itemName,
                      money: content[index].money,
                      iconData: content[index].iconData);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Material(
                elevation: 1,
                child: Container(
                  height: 98,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade100),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.circleNotch,
                              color: Colors.deepPurple[500],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Get set up',
                                  style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '4 of 5 complete',
                                  style: TextStyle(fontSize: 17),
                                )
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_right,
                          size: 50,
                          color: Colors.deepPurple[500],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.cloud_queue,
                                    color: Colors.deepPurple,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Brain',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ],
                              ),
                              Text(
                                '\$128.32',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              Text("Since all time")
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Next deposite"),
                              Text(" will be shown here")
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Material(
                elevation: 1,
                child: Container(
                  height: 98,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade50),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.trophy,
                              color: Colors.deepPurple[500],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '1P Challenge',
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Set asside \$6969 in a year',
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_right,
                          size: 50,
                          color: Colors.deepPurple[500],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: BottomNavigationBar(
            selectedItemColor: Colors.deepPurple,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.chartLine), label: "Dashboard"),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.piggyBank), label: "Investments"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.swap_horiz), label: "Transactions"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ]),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String itemName;
  final double money;
  final IconData iconData;

  const ItemCard(
      {super.key,
      required this.itemName,
      required this.money,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 3,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(7)),
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Icon(
                iconData,
                color: Colors.deepPurple,
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemName,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "\$$money",
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Content {
  final String itemName;
  final double money;
  final IconData iconData;

  Content(this.itemName, this.money, this.iconData);
}
