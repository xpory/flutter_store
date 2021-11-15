import 'package:flutter/material.dart';
import 'package:store/constants.dart';
import 'package:store/screens/home/topventas/topventas_screen.dart';

class TopVentas extends StatelessWidget {
  const TopVentas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          articulosComunes(
            image: 'assets/images/bananas.jpg',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TopVentasScreen(),
                  ));
            },
          ),
          articulosComunes(
            image: 'assets/images/fresas.jpg',
            press: () {},
          ),
          articulosComunes(
            image: 'assets/images/melocoton.jpeg',
            press: () {},
          ),
          articulosComunes(
            image: 'assets/images/bananas.jpg',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class articulosComunes extends StatelessWidget {
  const articulosComunes({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image;
  final void Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      ),
    );
  }
}
