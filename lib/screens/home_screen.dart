import 'package:flutter/material.dart';
import 'package:medical_healthcare/screens/appointment_screen.dart';

class HomeScreen extends StatelessWidget {
  // Lista de síntomas que se mostrarán de forma horizontal
  List symptoms = [
    "Temperature",
    "Snuffle",
    "Fever",
    "Couhg",
    "Cold",
  ];

  // Lista de imágenes asociadas a cada doctor
  List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];

  // Lista de nombres personalizados para cada doctor
  List<String> doctorNames = [
    "Dra. María Gómez",
    "Dra. Ana López",
    "Dr. Carlos Rivera",
    "Dra. Juan Pérez",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // Hace scroll en pantalla completa si el contenido excede el alto
      padding:
          EdgeInsets.only(top: 40), // Espaciado superior para no pegar al borde
      child: Column(
        // Organiza verticalmente todo el contenido
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Encabezado con saludo e imagen del usuario
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              // Organiza horizontalmente saludo y avatar
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // Saludo a la izquierda, avatar a la derecha
              children: [
                Text(
                  "Hello Luis",
                  style: TextStyle(
                    fontSize: 35, // Tamaño grande para el saludo
                    fontWeight: FontWeight.w500, // Peso seminegrita
                  ),
                ),
                CircleAvatar(
                  // Muestra una imagen redonda
                  radius: 25,
                  backgroundImage: AssetImage("images/doctor1.jpg"),
                ),
              ],
            ),
          ),

          SizedBox(
              height: 30), // Espacio entre el encabezado y la siguiente sección

          // Fila de botones: visita en clínica y a domicilio
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Botón para visita en clínica
              InkWell(
                // Detecta toques y genera efecto visual
                onTap: () {}, // Aquí podrías colocar una acción
                child: Container(
                  // Caja que contiene ícono y texto
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    // Decoración con color, esquinas y sombra
                    color: Color(0xFF7165D6), // Fondo morado
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // Círculo blanco con ícono "+"
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Color(0xFF7165D6),
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Clinic Visit",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Make an appointment",
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Botón para visita a domicilio
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white, // Fondo blanco
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // Círculo con ícono de casa
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFFF0EEFA),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.home_filled,
                          color: Color(0xFF7165D6),
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Home Visit",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Call the doctor home",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 25), // Espacio antes de la sección de síntomas

          // Título de la sección de síntomas
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "What are your symptoms?",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
          ),

          // Lista horizontal de síntomas
          SizedBox(
            height: 70,
            child: ListView.builder(
              // Lista dinámica horizontal
              shrinkWrap: true,
              scrollDirection:
                  Axis.horizontal, // Hace scroll de izquierda a derecha
              itemCount: symptoms.length, // Número de elementos
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Color(0xFFF4F6FA),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      symptoms[index], // Síntoma mostrado
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 15), // Espacio antes de doctores

          // Título de sección de doctores
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Popular Doctros",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
          ),

          // Rejilla de doctores populares
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 2 columnas
            ),
            itemCount: 4, // Total de doctores
            shrinkWrap: true,
            physics:
                NeverScrollableScrollPhysics(), // Para que no interfiera con el scroll principal
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  // Navega a la pantalla de cita
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AppointmentScreen(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("images/${imgs[index]}"),
                      ),
                      Text(
                        doctorNames[index], // Nombre del doctor desde la lista
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        "Therapist",
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(
                            "4.9", // Calificación
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ],
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
