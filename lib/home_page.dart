// Importa el paquete necesario de Flutter.
import 'package:flutter/material.dart';

// Definición de la clase HomePage, que extiende StatefulWidget.
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// Definición del estado asociado a HomePage.
class _HomePageState extends State<HomePage> {
  // Lista de imágenes de perfil.
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

  // Lista de imágenes de publicaciones.
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

  // Función asincrónica que simula una acción de refresco.
  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    // Retorna un Scaffold que contiene la estructura básica de la página.
    return Scaffold(
      // Barra de la aplicación (AppBar) con iconos de acción.
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
      // Cuerpo de la página con un RefreshIndicator para refrescar el contenido.
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Sección de historias (STORY).
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    8,
                    (index) => Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          // Imagen de perfil en un círculo.
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
                          // Nombre del perfil.
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
              // Sección de publicaciones.
              Column(
                children: List.generate(
                  8,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Encabezado de la publicación (HEADER POST).
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
                          const Spacer(),
                          IconButton(
                            icon: const Icon(Icons.more_vert),
                            onPressed: () {},
                          )
                        ],
                      ),
                      // Imagen de la publicación (IMAGE POST).
                      Image.asset(posts[index]),
                      // Pie de la publicación (FOOTER POST) con iconos de interacción.
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
                      ),
                      // Descripción y comentarios de la publicación.
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(text: "LIKE BY"),
                                  TextSpan(
                                    text: " Profile Name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: " and"),
                                  TextSpan(
                                    text: " Others",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: " Profile Name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        " This is the most amazing picture ever put on Instagram. This is also the best course ever made!",
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              'View all 12 comments',
                              style: TextStyle(color: Colors.black38),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
