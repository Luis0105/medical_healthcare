// Pantalla de cita médica que muestra información detallada del doctor, reseñas, ubicación y botón de agendar
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  // Lista de imágenes para reseñas simuladas
  List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7165D6), // Fondo morado principal
      body: SingleChildScrollView(
        // Permite desplazarse verticalmente en caso de desbordamiento
        child: Column(
          children: [
            SizedBox(height: 50),

            // Encabezado con datos del doctor y botones
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  // Botones de navegación
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Icon(Icons.arrow_back_ios_new,
                            color: Colors.white, size: 25),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(Icons.more_vert,
                            color: Colors.white, size: 25),
                      ),
                    ],
                  ),

                  // Información del doctor (nombre, especialidad, botones de acción)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage("images/doctor1.jpg")),
                        SizedBox(height: 15),
                        Text("Dr. Doctor Name",
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                        SizedBox(height: 5),
                        Text("Therapist",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Botón de llamada
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0xFF9F97E2),
                                  shape: BoxShape.circle),
                              child: Icon(Icons.call,
                                  color: Colors.white, size: 25),
                            ),
                            SizedBox(width: 20),
                            // Botón de chat
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0xFF9F97E2),
                                  shape: BoxShape.circle),
                              child: Icon(CupertinoIcons.chat_bubble_text_fill,
                                  color: Colors.white, size: 25),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Contenedor inferior con información detallada
            Container(
              height: MediaQuery.of(context).size.height /
                  1.5, // Tamaño relativo a la pantalla
              width: double.infinity,
              padding: EdgeInsets.only(top: 20, left: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("About Doctor",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  SizedBox(height: 5),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  SizedBox(height: 10),

                  // Encabezado de reseñas
                  Row(
                    children: [
                      Text("Reviews",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                      SizedBox(width: 10),
                      Icon(Icons.star, color: Colors.amber),
                      Text("4.9",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                      SizedBox(width: 5),
                      Text("(124)",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF7165D6))),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text("See all",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF7165D6))),
                      )
                    ],
                  ),

                  // Reseñas (scroll horizontal)
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal, // Dirección del scroll
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4, // Difuminado de la sombra
                                spreadRadius: 2, // Expansión de la sombra
                              ),
                            ],
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width /
                                1.4, // Ancho relativo
                            child: Column(
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 25,
                                    backgroundImage:
                                        AssetImage("images/${imgs[index]}"),
                                  ),
                                  title: Text("Dr. Doctor Name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  subtitle: Text("1 day ago"),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize
                                        .min, // Ajusta a contenido mínimo
                                    children: [
                                      Icon(Icons.star, color: Colors.amber),
                                      Text("4.9",
                                          style:
                                              TextStyle(color: Colors.black54)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "Many thanks to Dr. Dear. He is a great and professional doctor",
                                    maxLines: 2,
                                    overflow: TextOverflow
                                        .ellipsis, // Corta texto largo con puntos suspensivos
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  SizedBox(height: 10),

                  // Sección de ubicación
                  Text("Location",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  ListTile(
                    leading: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color(0xFFF0EEFA), shape: BoxShape.circle),
                      child: Icon(Icons.location_on,
                          color: Color(0xFF7165D6), size: 30),
                    ),
                    title: Text("New York, Medical Center",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text("Address line of the medical center."),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // Parte inferior con precio y botón de agendar
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 2),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Consultation Price",
                    style: TextStyle(color: Colors.black54)),
                Text("\$100",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 15),
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Book Appointment",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
