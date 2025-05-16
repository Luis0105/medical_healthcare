// Pantalla de inicio de sesión donde el usuario introduce su usuario y contraseña para ingresar a la app
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_healthcare/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passToggle = true; // Controla si la contraseña está visible u oculta

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white, // Fondo blanco
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),

            // Imagen ilustrativa de doctores en la parte superior
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset("images/doctors.png"),
            ),

            SizedBox(height: 10),

            // Campo de texto para ingresar nombre de usuario
            Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  border:
                      OutlineInputBorder(), // Borde gris con esquinas redondeadas
                  label: Text("Enter Username"), // Etiqueta flotante
                  prefixIcon:
                      Icon(Icons.person), // Ícono de usuario a la izquierda
                ),
              ),
            ),

            // Campo de texto para ingresar contraseña
            Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                obscureText:
                    passToggle ? true : false, // Muestra u oculta la contraseña
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter Password"),
                  prefixIcon: Icon(Icons.lock), // Ícono de candado
                  suffixIcon: InkWell(
                    onTap: () {
                      // Cambia el estado para mostrar u ocultar la contraseña
                      passToggle = !passToggle;
                      setState(() {});
                    },
                    child: passToggle
                        ? Icon(CupertinoIcons
                            .eye_slash_fill) // Ícono de ojo cerrado
                        : Icon(CupertinoIcons.eye_fill), // Ícono de ojo abierto
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Botón de inicio de sesión
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: double.infinity,
                child: Material(
                  color: Color(0xFF7165D6), // Color morado personalizado
                  borderRadius: BorderRadius.circular(10), // Bordes redondeados
                  child: InkWell(
                    onTap: () {
                      // Actualmente se redirige a sí misma
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 15, horizontal: 40), // Espaciado interno
                      child: Center(
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            color: Colors.white, // Texto blanco
                            fontSize: 25, // Tamaño grande
                            fontWeight: FontWeight.bold, // Negritas
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Texto y botón para redirigir a registro
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have any account?",
                  style: TextStyle(
                    fontSize: 16, // Tamaño medio
                    fontWeight: FontWeight.w500, // Seminegrita
                    color: Colors.black54, // Gris oscuro
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Redirige a la pantalla de registro
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ));
                  },
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 18, // Tamaño mayor al texto normal
                      fontWeight: FontWeight.bold, // Negritas para dar énfasis
                      color: Color(0xFF7165D6), // Mismo color del tema
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
