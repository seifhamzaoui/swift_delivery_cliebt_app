import 'package:client_app/presentation/client/home/notification.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTopNavigationBar extends StatelessWidget {
  const CustomTopNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          icon: Image.asset('assets/icons/menu.png'),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        Expanded(child: Image.asset('assets/images/logo_small.png')),
        CustomIconButton(
          icon: Image.asset('assets/icons/notification.png'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Notifications()));
          },
        ),
      ],
    );
  }
}
