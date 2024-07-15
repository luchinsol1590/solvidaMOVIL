import 'package:flutter/material.dart';
import 'package:solvida/componentes/responsiveUI/breakpoint.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'lib/imagenes/diseño_register_final.png'), // Asegúrate de que la ruta de la imagen es correcta
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(30),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      // Imagen de logo en la parte superior
                      LayoutBuilder(
                        builder: (context, constraints) {
                          double imageHeight;
                          double imageWidth;
                          final responsivo = MediaQuery.of(context);

                          if (constraints.maxWidth <= Breakpoint.xsmall) {
                            imageHeight = responsivo.size.height * 0.5;
                            imageWidth = responsivo.size.width * 0.3;
                          } else if (constraints.maxWidth <=
                              Breakpoint.avgsmall) {
                            imageHeight = responsivo.size.height * 0.5;
                            imageWidth = responsivo.size.width * 0.3;
                          } else if (constraints.maxWidth <= Breakpoint.small) {
                            imageHeight = 100;
                            imageWidth = 200;
                          } else if (constraints.maxWidth <=
                              Breakpoint.avgmedium) {
                            imageHeight = 150;
                            imageWidth = 120;
                          } else if (constraints.maxWidth <=
                              Breakpoint.medium) {
                            imageHeight = 200;
                            imageWidth = 200;
                          } else if (constraints.maxWidth <=
                              Breakpoint.avglarg) {
                            imageHeight = 250;
                            imageWidth = 250;
                          } else if (constraints.maxWidth <= Breakpoint.large) {
                            imageHeight = 300;
                            imageWidth = 300;
                          } else if (constraints.maxWidth <=
                              Breakpoint.avgxlarge) {
                            imageHeight = 350;
                            imageWidth = 350;
                          } else {
                            imageHeight = 400;
                            imageWidth = 400;
                          }

                          return ConstrainedBox(
                            constraints: BoxConstraints(
                              maxHeight: imageHeight,
                              maxWidth: imageWidth,
                            ),
                            child: Image.asset(
                              'lib/imagenes/nuevecito.png',
                              fit: BoxFit.contain,
                            ),
                          );
                        },
                      ),
                      // Contenido principal
                      _buildContent(constraints),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(BoxConstraints constraints) {
    double fontSizeTitle;
    double fontSizeSubtitle;
    double fontSizeForm;

    if (constraints.maxWidth <= Breakpoint.xsmall) {
      fontSizeTitle = 24;
      fontSizeSubtitle = 16;
      fontSizeForm = 12;
    } else if (constraints.maxWidth <= Breakpoint.avgsmall) {
      fontSizeTitle = 32;
      fontSizeSubtitle = 20;
      fontSizeForm = 14;
    } else if (constraints.maxWidth <= Breakpoint.small) {
      fontSizeTitle = 40;
      fontSizeSubtitle = 24;
      fontSizeForm = 16;
    } else if (constraints.maxWidth <= Breakpoint.avgmedium) {
      fontSizeTitle = 48;
      fontSizeSubtitle = 28;
      fontSizeForm = 18;
    } else if (constraints.maxWidth <= Breakpoint.medium) {
      fontSizeTitle = 56;
      fontSizeSubtitle = 32;
      fontSizeForm = 20;
    } else if (constraints.maxWidth <= Breakpoint.avglarg) {
      fontSizeTitle = 64;
      fontSizeSubtitle = 36;
      fontSizeForm = 22;
    } else {
      fontSizeTitle = 64;
      fontSizeSubtitle = 36;
      fontSizeForm = 22;
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 8),
            Text(
              'Regístrate y sorpréndete!',
              style: TextStyle(
                fontSize: fontSizeSubtitle,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '¡Vive bien, vive sano!',
              style: TextStyle(
                fontSize: fontSizeForm,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 1),
            _buildTextField('Nombres', fontSizeForm),
            const SizedBox(height: 1),
            _buildTextField('Apellidos', fontSizeForm),
            const SizedBox(height: 1),
            _buildTextField('DNI', fontSizeForm),
            const SizedBox(height: 1),
            _buildTextField('Fecha nacimiento', fontSizeForm),
            const SizedBox(height: 1),
            _buildTextField('Usuario', fontSizeForm),
            const SizedBox(height: 1),
            _buildTextField('Contraseña', fontSizeForm, obscureText: true),
            const SizedBox(height: 0),
            _buildTextField('Teléfono', fontSizeForm),
            const SizedBox(height: 0),
            _buildTextField('E-mail', fontSizeForm),
            const SizedBox(height: 8),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: fontSizeForm),
                ),
                child: Text('Registrarse'),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '¿Ya tienes cuenta?',
                  style: TextStyle(color: Colors.white, fontSize: fontSizeForm),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Inicia Sesión',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: fontSizeForm,
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

  Widget _buildTextField(String hintText, double fontSize,
      {bool obscureText = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: fontSize),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }
}
