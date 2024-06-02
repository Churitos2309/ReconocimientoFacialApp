// Importa el paquete necesario de Flutter.
import 'package:flutter/material.dart';

// Definición de la clase SearchPage, que extiende StatelessWidget.
class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Lista de categorías de botones.
    List<String> buttons = [
      "IGTV",
      "Travel",
      "Arquitecture",
      "Decor",
      "Style",
      "Food",
      "Art",
      "Beauty",
      "DIY",
      "Music",
    ];
    // Retorna un Scaffold que contiene la estructura básica de la página.
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Primera SliverAppBar que contiene un campo de búsqueda.
          SliverAppBar(
            title: TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: "Search",
                contentPadding: const EdgeInsets.all(0),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: const Color.fromRGBO(220, 220, 220, 1),
                filled: true,
              ),
            ),
            actions: const [
              IconButton(
                onPressed: null,
                icon: Icon(Icons.person_add),
              )
            ],
          ),
          // Segunda SliverAppBar que contiene una fila de botones de categoría.
          SliverAppBar(
            title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  10,
                  (index) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        buttons[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
