import 'package:bolsa_flutter/widgets/solicitud_svg.dart';
import 'package:flutter/material.dart';

class CustomCardButton extends StatefulWidget {
  const CustomCardButton({super.key});

  @override
  State<CustomCardButton> createState() => _CustomCardButtonState();
}

class _CustomCardButtonState extends State<CustomCardButton> {
  bool isActive = false;
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTapUp: (details){
          setState(() {
            isPressed = false;
          });
        },
        onTapDown: (details){
          setState(() {
            isPressed = true;
          });
        },
        onTap: (){
          setState(() {
              isActive = !isActive;
          });
        },
        child: Container(width: 250, child: buildCard(isActive,isPressed))),
    );
  }


  Widget buildCard(bool isActive, bool pressed){
    return  Card(
            elevation: pressed ? 10 : 4,
            shape: RoundedRectangleBorder(
              borderRadius: pressed ? BorderRadius.circular(15.0) : BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    'Solicitud 001',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                      height: 10), // adds spacing between the text and image
                  SVGImage(active: isActive),
                  const SizedBox(
                      height: 10), // adds spacing between the image and button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.green)
                          ),
                          child: const Text('Asignar'),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.red)
                          ),
                          child: const Text('Rechazar'),
                        ),
                      ),
                    ],
                  )
                ],
              )));
  }
}