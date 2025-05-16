// Muestra un mensaje de chat simulado recibido y enviado en formato tipo burbuja
import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // Alineación de los mensajes a la izquierda
      children: [
        // Mensaje recibido
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(
                MessageType.receive), // Borde estilo burbuja entrante
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color:
                    Color(0xFFE1E1E2), // Color gris claro para mensaje recibido
              ),
              child: Text(
                "Hello, what i can do for you, you can book appointment directly",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),

        // Mensaje enviado
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 80),
            child: ClipPath(
              clipper: LowerNipMessageClipper(
                  MessageType.send), // Borde estilo burbuja saliente
              child: Container(
                padding:
                    EdgeInsets.only(left: 20, top: 10, bottom: 25, right: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF7165D6), // Color morado para mensaje enviado
                ),
                child: Text(
                  "Hello Doctor, Are Your There?",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
