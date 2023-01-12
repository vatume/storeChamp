import 'package:flutter/material.dart';

class ChilliPage extends StatelessWidget {
  const ChilliPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text("Valor de los Ajíes")),
        body: Column(
          children: [
            Hero(
                tag: 'chilli',
                child: Image.asset(
                  'lib/assets/images/ChilliPepper.png',
                  fit: BoxFit.cover,
                )),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Es una excelente fuente de licopenos, un caroteno con función antioxidante que se asocia a un menor riesgo de cáncer de próstata y un mejor sistema inmunitario. Es concentrado en vitamina C, un nutriente que además de ser antioxidante, favorece la absorción del hierro. Ideal para complementar la dieta de personas con anemia. Se lo considera un alimento aliado de una buena salud cardiovascular. Muy bajo en calorías y tiene gran contenido acuoso, pero muy concentrado en nutrientes. Un ingrediente ideal si queremos adelgazar sin descuidar la calidad nutricional de la dieta. Dada la elevada concentración de carotenos y vitamina A que presenta el ají, es un alimento de gran ayuda si deseamos preparar la piel para obtener un bronceado saludable.',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            FloatingActionButton.extended(
                label: Text('Comprar'),
                backgroundColor: Colors.red,
                onPressed: (() {}))
          ],
        ));
  }
}
