import 'package:swipe/General/Helados/cardHelados.dart';
import 'package:swipe/colorProvider.dart';
import 'package:swipe/General/Helados/itemHelados.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaginasHelados extends StatefulWidget {
  @override
  _PaginasState createState() => _PaginasState();
}

class _PaginasState extends State<PaginasHelados> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.50,
      width: MediaQuery.of(context).size.width,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.8),
        itemCount: categoryHList.length,
        itemBuilder: (context, index) {
          return AnimatedPadding(
            padding: _currentPage == index
                ? EdgeInsets.all(0)
                : EdgeInsets.symmetric(vertical: 40),
            duration: Duration(milliseconds: 200),
            child: AnimatedOpacity(
              opacity: _currentPage == index ? 1 : 0.5,
              duration: Duration(milliseconds: 200),
              child: CardHelados(
                category: categoryHList[index],
              ),
            ),
          );
        },
        onPageChanged: (newPage) {
          setState(() {
            _currentPage = newPage;
          });
          Provider.of<ColorProvider>(context, listen: false)
              .changeColors(newPage);
        },
      ),
    );
  }
}
