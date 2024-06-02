// Importa los paquetes necesarios de Flutter.
import 'package:flutter/material.dart';
import 'package:reconocimiento_app/home_page.dart';
import 'search_page.dart';

// La función principal de la aplicación que ejecuta MyApp.
void main() {
  runApp(const MyApp());
}

// Definición de la clase MyApp, que extiende StatelessWidget.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Retorna un MaterialApp que configura la apariencia y el comportamiento de la aplicación.
    return MaterialApp(
      // Desactiva la bandera de depuración.
      debugShowCheckedModeBanner: false,
      // Título de la aplicación.
      title: 'Flutter Demo',
      // Define el tema de la aplicación.
      theme: ThemeData(
        // Configura el tema de los iconos.
        iconTheme: const IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
        // Configura el tema de la AppBar.
        appBarTheme: const AppBarTheme(
          elevation: 1,
          color: Colors.white,
          iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
        ),
        // Configura el esquema de colores de la aplicación.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // Habilita el uso de Material 3.
        useMaterial3: true,
      ),
      // Define la página de inicio de la aplicación.
      home: const MyHomePage(),
    );
  }
}

// Definición de la clase MyHomePage, que extiende StatefulWidget.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Definición del estado asociado a MyHomePage.
class _MyHomePageState extends State<MyHomePage> {
  // Variable que guarda el índice de la página actual.
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    // Retorna un Scaffold que contiene la estructura básica de la página.
    return Scaffold(
      // Cuerpo de la página que cambia según el valor de currentPage.
      body: currentPage == 1 ? SearchPage() : const HomePage(),
      // Barra de navegación inferior.
      bottomNavigationBar: BottomAppBar(
        // Define una fila con botones de iconos.
        child: Row(
          children: [
            // Botón de inicio.
            IconButton(
              icon: Icon(
                Icons.home,
                color: currentPage == 0
                    ? const Color.fromRGBO(203, 73, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: () {
                // Actualiza el estado para mostrar la página de inicio.
                setState(() {
                  currentPage = 0;
                });
              },
            ),
            // Espaciador para alinear los botones.
            const Spacer(),
            // Botón de búsqueda.
            IconButton(
              icon: Icon(
                Icons.search,
                color: currentPage == 1
                    ? const Color.fromRGBO(203, 73, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: () {
                // Actualiza el estado para mostrar la página de búsqueda.
                setState(() {
                  currentPage = 1;
                });
              },
            ),
            const Spacer(),
            // Botón de video.
            IconButton(
              icon: Icon(
                Icons.ondemand_video,
                color: currentPage == 2
                    ? const Color.fromRGBO(203, 73, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: () {
                // Actualiza el estado para mostrar la página de video.
                setState(() {
                  currentPage = 2;
                });
              },
            ),
            const Spacer(),
            // Botón de viajes.
            IconButton(
              icon: Icon(
                Icons.card_travel,
                color: currentPage == 3
                    ? const Color.fromRGBO(203, 73, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: () {
                // Actualiza el estado para mostrar la página de viajes.
                setState(() {
                  currentPage = 3;
                });
              },
            ),
            const Spacer(),
            // Botón de perfil.
            IconButton(
              icon: Icon(
                Icons.person,
                color: currentPage == 4
                    ? const Color.fromRGBO(203, 73, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: () {
                // Actualiza el estado para mostrar la página de perfil.
                setState(() {
                  currentPage = 4;
                });
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
