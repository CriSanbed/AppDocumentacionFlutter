import 'package:flutter/material.dart';

//BOTON SI VA A TENER ACCION CUANDO SE PULSE
//CREANDO LA CLASE
class GoogleButton extends StatefulWidget {
  //declaro parametros para el alto y ancho del boton para la clase _GoogleButton
  double widthC = 0.0;
  double heightC = 0.0;
  late final String textC;

  // que pasa cuando se tapee, lo resuelve el constructor
  late final VoidCallback onPressed;

  GoogleButton({
    Key? key,
    required this.textC,
    required this.widthC,
    required this.heightC,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _GoogleButton();
  }
}

//CLASE ANIDADA
class _GoogleButton extends State<GoogleButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        width: widget.heightC,
        height: widget.heightC,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: const LinearGradient(
                colors: [Color(0xFFC21E1A), Color(0xFFe4605e)],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.7])),
        child: Text(
          widget.textC,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
