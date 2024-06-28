import 'package:flutter/material.dart';

List<Content> content = [
  Content("LOL", "Try not to laugh out loud, I dare you", Icons.emoji_emotions),
  Content("Funny Cats", "Cute cats doing hilarious things", Icons.pets),
  Content(
      "Adventure Time", "Epic journey through fantasy realms", Icons.explore),
  Content("Star Wars", "May the force be with you", Icons.star),
  Content("Music Mix", "Tunes that will make your day", Icons.music_note),
  Content("Movie Marathon", "Get your popcorn ready!", Icons.movie),
  Content("Bookworm's Corner", "Escape into different worlds", Icons.book),
  Content("Gaming Fun", "Level up your gaming skills", Icons.games),
  Content("Capture Moments", "Preserve memories forever", Icons.camera),
  Content("Artistic Expressions", "Unleash your creativity", Icons.art_track),
  Content("Beach Vibes", "Relax and unwind by the sea", Icons.beach_access),
];

class Dgntwo extends StatelessWidget {
  const Dgntwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Add channels",
                    style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const Divider(
                color: Colors.grey,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: content.length,
                  itemBuilder: (context, index) {
                    return EmojiCard(
                        title: content[index].title,
                        subTitle: content[index].subTitle,
                        icon: content[index].icon);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EmojiCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  const EmojiCard(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(color: Colors.grey.shade800),
              child: Icon(
                icon,
                color: Colors.amber,
                size: 40,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 230,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.add,
              color: Colors.grey.shade500,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}

class Content {
  final String title;
  final String subTitle;
  final IconData icon;

  Content(this.title, this.subTitle, this.icon);
}
