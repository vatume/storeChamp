import 'package:flutter/material.dart';

class UchuvaPage extends StatelessWidget {
  const UchuvaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text("Uchuvas"),
        ),
        body: Column(
          children: [
            Hero(
                tag: 'uchuva',
                child: Image.asset(
                  'lib/assets/images/uchuvas.png',
                  fit: BoxFit.cover,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'La uchuva es excelente fuente de provitamina A, vitamina C, posee algunas del complejo vitamínico B y además contiene proteína (0,3%) y fósforo (55%), valores excepcionalmente altos para una fruta. La uchuva purifica la sangre, tonifica el nervio óptico y es eficaz en el tratamiento de cataratas, afecciones de la boca y garganta. Además, elimina la albúmina de los riñones y se recomienda para destruir tricocéfalos, parásitos intestinales y amibas. La uchuva es un calcificador de primer orden. Se recomienda para personas con diabetes de todo tipo, y gracias a sus propiedades diuréticas, favorece el tratamiento de las personas con problemas de la próstata. También es utilizada como tranquilizante natural por su contenido de flavonoides.',
                style: TextStyle(
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            FloatingActionButton.extended(
                label: Text('Comprar',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                backgroundColor: Colors.deepOrange,
                onPressed: (() {}))
          ],
        ));
  }
}
