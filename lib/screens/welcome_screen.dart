// Pantalla de bienvenida que permite al usuario iniciar sesión, registrarse o saltar al contenido principal
import 'package:flutter/material.dart';
import 'package:medical_healthcare/screens/login_screen.dart';
import 'package:medical_healthcare/widgets/navbar_roots.dart';
import 'package:medical_healthcare/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context)
            .size
            .width, // Ocupa todo el ancho de la pantalla
        height: MediaQuery.of(context)
            .size
            .height, // Ocupa todo el alto de la pantalla
        padding: EdgeInsets.all(10), // Margen interno general
        child: Column(
          children: [
            SizedBox(
                height: 15), // Espacio entre la parte superior y el botón SKIP
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Botón para saltar la pantalla de bienvenida e ir directo al menú principal
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NavbarRoots()),
                  );
                },
                child: Text(
                  "SKIP",
                  style: TextStyle(
                    color: Color(
                        0xFF7165D6), // Color morado definido como tema principal
                    fontSize: 20, // Tamaño de fuente del texto
                  ),
                ),
              ),
            ),

            SizedBox(height: 50), // Espacio antes de la imagen principal
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset(
                  "images/doctors.png"), // Imagen central decorativa (logo o ilustración)
            ),

            SizedBox(height: 50), // Espacio antes del título
            Text(
              "Doctors Appointment",
              style: TextStyle(
                color: Color(0xFF7165D6), // Mismo color morado del tema
                fontSize: 35, // Tamaño grande para título principal
                fontWeight:
                    FontWeight.bold, // Fuente en negritas para dar énfasis
                letterSpacing: 1, // Espaciado entre letras
                wordSpacing: 2, // Espaciado entre palabras
              ),
            ),

            SizedBox(height: 10), // Espacio antes del subtítulo
            Text(
              "Appoint Your Doctor",
              style: TextStyle(
                color: Colors.black54, // Gris oscuro para subtítulo
                fontSize: 18, // Tamaño medio
                fontWeight: FontWeight.w500, // Seminegrita
              ),
            ),

            SizedBox(height: 60), // Espacio antes de los botones
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, // Distribuye uniformemente los botones
              children: [
                // Botón para iniciar sesión
                Material(
                  color: Color(0xFF7165D6), // Fondo morado
                  borderRadius: BorderRadius.circular(10), // Bordes redondeados
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 15, horizontal: 40), // Espaciado interno
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          color: Colors.white, // Texto blanco
                          fontSize: 22, // Tamaño grande para botón
                          fontWeight: FontWeight.bold, // Fuente en negritas
                        ),
                      ),
                    ),
                  ),
                ),

                // Botón para crear cuenta
                Material(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
