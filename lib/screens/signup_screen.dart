// Pantalla de registro para que nuevos usuarios puedan crear una cuenta con sus datos personales
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_healthcare/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  // StatefulWidget para manejar cambios de estado (ej: mostrar u ocultar contraseña)
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passToggle = true; // Variable para alternar visibilidad de la contraseña

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white, // Establece fondo blanco
      child: SingleChildScrollView(
        // Permite desplazar la vista cuando hay muchos elementos (útil en pantallas pequeñas)
        child: SafeArea(
          // Evita superposición con zonas como la barra de estado o notch
          child: Column(
            children: [
              SizedBox(height: 10),

              // Imagen ilustrativa en la parte superior
              Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset("images/doctors.png"),
              ),

              SizedBox(height: 15),

              // Campo: Nombre completo
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Full Name", // Etiqueta interna del campo
                    border:
                        OutlineInputBorder(), // Borde con esquinas redondeadas
                    prefixIcon: Icon(Icons.person), // Ícono de usuario
                  ),
                ),
              ),

              // Campo: Correo electrónico
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email), // Ícono de sobre
                  ),
                ),
              ),

              // Campo: Número telefónico
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),
              ),

              // Campo: Contraseña con visibilidad toggle
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  obscureText: passToggle, // Oculta texto si passToggle es true
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock), // Ícono de candado
                    suffixIcon: InkWell(
                      // Permite tocar el ícono para alternar visibilidad
                      onTap: () {
                        passToggle = !passToggle;
                        setState(
                            () {}); // Redibuja la UI para reflejar el cambio
                      },
                      child: passToggle
                          ? Icon(CupertinoIcons.eye_slash_fill) // Ojo cerrado
                          : Icon(CupertinoIcons.eye_fill), // Ojo abierto
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              // Botón para crear la cuenta
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity, // Ocupa todo el ancho disponible
                  child: Material(
                    color: Color(0xFF7165D6), // Color morado del tema
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        // Usa Navigator para cambiar a la pantalla de login
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Center(
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                              color: Colors.white, // Texto blanco
                              fontSize: 25, // Tamaño de fuente grande
                              fontWeight: FontWeight.bold, // Negrita
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Línea con enlace para ir al login si ya tiene cuenta
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have account?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54, // Gris oscuro
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Redirige al login
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7165D6),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
