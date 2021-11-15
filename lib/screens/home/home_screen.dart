import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store/components/botton_nav.dart';
import 'package:store/constants.dart';
import 'package:store/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: builAppBar(),
      body: Body(),
      bottomNavigationBar: BottonNav(),
    );
  }

  AppBar builAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackGroundColor,
      leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'), onPressed: () {}),
    );
  }
}
