import 'package:flutter/material.dart';

import '../../../constants.dart';

class ScrollProductos extends StatelessWidget {
  const ScrollProductos({
    Key? key,
  }) : super(key: key);

  static const timeDilation = 5.0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Hero(
            tag: "bananas",
            child: CardProductos(
              image: 'assets/images/bananas.jpg',
              title: 'Bananas',
              categoria: 'Frutas',
              precio: 10,
              press: () {},
            ),
          ),
          CardProductos(
            image: 'assets/images/fresas.jpg',
            title: 'Fresas',
            categoria: 'Frutas',
            precio: 15,
            press: () {},
          ),
          CardProductos(
            image: 'assets/images/kiwis.jpg',
            title: 'Wikis',
            categoria: 'Frutas',
            precio: 20,
            press: () {},
          ),
          CardProductos(
            image: 'assets/images/melocoton.jpeg',
            title: 'Melocotones',
            categoria: 'Frutas',
            precio: 12,
            press: () {},
          ),
          CardProductos(
            image: 'assets/images/peras.jpg',
            title: 'Peras',
            categoria: 'Frutas',
            precio: 10,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class CardProductos extends StatelessWidget {
  const CardProductos({
    Key? key,
    required this.image,
    required this.title,
    required this.categoria,
    required this.precio,
    required this.press,
  }) : super(key: key);
  final String image, title, categoria;
  final int precio;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press(),
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                      text: "$categoria".toUpperCase(),
                      style: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                    )
                  ])),
                  Spacer(),
                  Text('\$$precio',
                      style: Theme.of(context)
                          .textTheme
                          .button!
                          .copyWith(color: kPrimaryColor))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
