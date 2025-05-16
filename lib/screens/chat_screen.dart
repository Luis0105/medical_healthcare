// Pantalla de chat individual con un doctor. Contiene barra superior con datos del doctor, lista de mensajes y campo para escribir.
import 'package:flutter/material.dart';
import 'package:medical_healthcare/widgets/chat_sample.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar personalizada con altura definida
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70), // Altura del AppBar
        child: AppBar(
          backgroundColor: Color(0xFF7165D6), // Color morado principal
          leadingWidth: 30, // Ancho del ícono de regreso
          title: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/doctor1.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Dr. Doctor Name",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            // Íconos a la derecha del AppBar
            Padding(
              padding: EdgeInsets.only(top: 8, right: 15),
              child: Icon(Icons.call, color: Colors.white, size: 26),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 10),
              child: Icon(Icons.video_call, color: Colors.white, size: 30),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 10),
              child: Icon(Icons.more_vert, color: Colors.white, size: 26),
            ),
          ],
        ),
      ),

      // Cuerpo principal: lista de mensajes
      body: ListView.builder(
        itemCount: 10, // Número de mensajes simulados
        padding: EdgeInsets.only(
            top: 20,
            left: 15,
            right: 15,
            bottom: 80), // Espaciado del contenido
        itemBuilder: (context, index) =>
            ChatSample(), // Widget de mensaje individual
      ),

      // Barra inferior para escribir mensaje
      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(Icons.add, size: 30), // Ícono para agregar adjunto
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(Icons.emoji_emotions_outlined,
                  color: Colors.amber, size: 30),
            ),
            // Campo de entrada de texto
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width /
                    1.6, // Anchura adaptativa
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Type something", // Texto sugerido
                    border: InputBorder.none, // Sin borde
                  ),
                ),
              ),
            ),
            Spacer(), // Empuja el botón de enviar a la derecha
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.send,
                  color: Color(0xFF7165D6)), // Botón de enviar mensaje
            ),
          ],
        ),
      ),
    );
  }
}
