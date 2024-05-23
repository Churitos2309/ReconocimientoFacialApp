import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    "images/1.jpg",
    "images/2.jpeg",
    "images/3.jpeg",
    "images/4.jpeg",
    "images/5.jpeg",
    "images/6.jpeg",
    "images/7.jpeg",
    "images/8.jpeg",
  ];
  List<String> posts = [
    "images/post_1.jpeg",
    "images/post_2.jpeg",
    "images/post_3.jpeg",
    "images/post_4.jpeg",
    "images/post_5.jpeg",
    "images/post_6.jpeg",
    "images/post_7.jpeg",
    "images/post_8.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/insta_title.png",
          height: 50,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_circle_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //STORY
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  8,
                  (index) => Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              const AssetImage("images/story.jpeg"),
                          child: CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage(
                              profileImages[index],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "profile name",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black87,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Divider(),
            Column(
              children: List.generate(
                8,
                (index) => Column(
                  children: [
                    //HEADER
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundImage:
                                const AssetImage("images/story.jpeg"),
                            child: CircleAvatar(
                              radius: 12,
                              backgroundImage: AssetImage(
                                profileImages[index],
                              ),
                            ),
                          ),
                        ),
                        const Text('Profile Name'),
                        // ignore: prefer_const_constructors
                        Spacer(),
                        IconButton(
                          icon: const Icon(Icons.more_vert),
                          onPressed: () {},
                        )
                      ],
                    ),
                    //IMAGE POST
                    Image.asset(posts[index]),
                    //FOOTER POST
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.chat_bubble_outline),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.label_outline),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.bookmark_add_outlined),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
