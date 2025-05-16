// Pantalla principal que contiene la navegación inferior entre las secciones de la app (Inicio, Mensajes, Agenda, Configuración)
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Importamos las pantallas que serán accesibles desde la barra de navegación
import 'package:medical_healthcare/screens/home_screen.dart';
import 'package:medical_healthcare/screens/messages_screen.dart';
import 'package:medical_healthcare/screens/schedule_screen.dart';
import 'package:medical_healthcare/screens/settings_screen.dart';

class NavbarRoots extends StatefulWidget {
  @override
  State<NavbarRoots> createState() => _NavbarRootsState();
}

class _NavbarRootsState extends State<NavbarRoots> {
  int _selectedIndex = 0; // Controla qué ítem está seleccionado

  // Lista con las pantallas que se mostrarán al seleccionar un ítem del BottomNavigationBar
  final _screens = [
    HomeScreen(), // Pantalla de inicio
    MessagesScreen(), // Pantalla de mensajes
    ScheduleScreen(), // Pantalla de citas agendadas
    SettingsScreen(), // Pantalla de configuración
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Color de fondo general
      body: _screens[
          _selectedIndex], // Muestra la pantalla activa según el índice
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          backgroundColor: Colors.white, // Fondo blanco para la barra
          type: BottomNavigationBarType.fixed, // Fija todos los ítems visibles
          selectedItemColor:
              Color(0xFF7165D6), // Color morado para ítem seleccionado
          unselectedItemColor:
              Colors.black26, // Color gris claro para ítems no seleccionados
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold, // Etiqueta seleccionada en negrita
            fontSize: 15,
          ),
          currentIndex: _selectedIndex, // Índice actual seleccionado
          onTap: (index) {
            setState(() {
              _selectedIndex = index; // Cambia el índice y redibuja el widget
            });
          },
          items: [
            // Ítem 1: Home
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), // Ícono de casa
              label: "Home",
            ),

            // Ítem 2: Mensajes
            BottomNavigationBarItem(
              icon: Icon(
                  CupertinoIcons.chat_bubble_text), // Ícono de chat estilo iOS
              label: "Messages",
            ),

            // Ítem 3: Agenda
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), // Ícono de calendario
              label: "Schedule",
            ),

            // Ítem 4: Configuración
            BottomNavigationBarItem(
              icon: Icon(Icons.settings), // Ícono de engranaje
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
