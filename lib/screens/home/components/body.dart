import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store/constants.dart';
import 'package:store/screens/home/components/scrool_productos.dart';

import 'header_with_search.dart';
import 'titulos.dart';
import 'top_ventas.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          Titulos(titulo: "Frutas"),
          ScrollProductos(),
          Titulos(titulo: "Vegetales"),
          TopVentas(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
