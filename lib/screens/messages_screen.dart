// Pantalla de lista de mensajes: permite buscar, ver contactos activos y abrir chats recientes
import 'package:flutter/material.dart';
import 'package:medical_healthcare/screens/chat_screen.dart';

class MessagesScreen extends StatelessWidget {
  // Lista de imágenes para simular chats y usuarios activos
  List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
    "doctor1.jpg",
    "doctor2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Alineación izquierda para títulos
        children: [
          SizedBox(height: 40),

          // Título principal
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Messages",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(height: 30),

          // Barra de búsqueda
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 10, spreadRadius: 2),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 300,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.search, color: Color(0xFF7165D6)),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),

          // Subtítulo: usuarios activos
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Active Now",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(height: 10),

          // Lista horizontal de usuarios activos
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              shrinkWrap: true, // Ajuste al contenido
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 10),
                    ],
                  ),
                  child: Stack(
                    textDirection: TextDirection
                        .rtl, // Posiciona el indicador verde arriba a la derecha
                    children: [
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            "images/${imgs[index]}",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Indicador de usuario activo
                      Container(
                        margin: EdgeInsets.all(4),
                        padding: EdgeInsets.all(3),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 20),

          // Subtítulo: chats recientes
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Recent chat",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          // Lista vertical de chats recientes
          ListView.builder(
            physics: NeverScrollableScrollPhysics(), // Desactiva scroll interno
            itemCount: 6,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatScreen()),
                    );
                  },
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/${imgs[index]}"),
                  ),
                  title: Text(
                    "Dr. Doctor Name",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Hello, Doctor are your there?",
                    maxLines: 1, // Solo una línea
                    overflow: TextOverflow
                        .ellipsis, // Corta texto largo con puntos suspensivos
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  trailing: Text(
                    "12:30",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54), // Hora del mensaje
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
