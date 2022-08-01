import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChangeUsername extends StatefulWidget {
  const ChangeUsername({Key? key}) : super(key: key);

  @override
  State<ChangeUsername> createState() => _ChangeUsernameState();
}

class _ChangeUsernameState extends State<ChangeUsername> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomIconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'CHANGER LE NOM \nD\'UTILISATEUR'.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: SwiftColors.purple,
                  ),
                ),
              ),
              const SizedBox(height: 77),
              Text('Nouveau nom d\'Utilisateur*'),
              const SizedBox(height: 17),
              CustomTextField(
                hintText: 'Nouveau nom d\'utilisateur',
              ),
              SizedBox(
                height: 80,
              ),
              Align(
                alignment: Alignment.center,
                child: PrimaryButton(
                  backColor: SwiftColors.purple,
                  frontColor: Colors.white,
                  onPressed: () {},
                  text: 'Valider',
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
