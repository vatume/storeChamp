import 'package:flutter/material.dart';
import 'package:swipe/General/FrutosTierra/paginaFrutosTierra.dart';

void main() => runApp(const Tienda());

class Tienda extends StatefulWidget {
  const Tienda({Key? key}) : super(key: key);

  @override
  _Tienda createState() => _Tienda();
}

class _Tienda extends State<Tienda> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    super.initState();
  }

  Future<void> _playAnimation() async {
    try {
      await controller.forward().orCancel;
      await controller.reverse().orCancel;
    } on TickerCanceled {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_left_rounded),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomePageFrutos()));
              }),
          title: const Text('Tienda'),
        ),
        body: Center(child: Stagger(controller: controller)),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _playAnimation();
          },
          child: const Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}

class Stagger extends StatelessWidget {
  final AnimationController controller;
  final Animation<Color?> color;

  Stagger({Key? key, required this.controller})
      : color = ColorTween(begin: Colors.black, end: Colors.amber).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.0,
              0.9,
              curve: Curves.ease,
            ),
          ),
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Container(
            decoration: BoxDecoration(color: color.value),
            height: 100,
            width: 100,
            child: Text('A comprarsh'),
          );
        });
  }
}
