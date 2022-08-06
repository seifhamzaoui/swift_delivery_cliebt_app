// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:client_app/application/auth/register_bloc/register_bloc.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/constants/enums.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';

class ChooseAccountType extends StatefulWidget {
  const ChooseAccountType({Key? key}) : super(key: key);

  @override
  State<ChooseAccountType> createState() => _ChooseAccountTypeState();
}

class _ChooseAccountTypeState extends State<ChooseAccountType> {
  List accountTypes = [AccountTypes.client, AccountTypes.magazin];
  List iconPaths = ['assets/icons/person.png', 'assets/icons/market.png'];
  List titles = ['Compte Client', 'Compte Magasin'];
  int choosed = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (() async {
        BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.returnTo());
        return false;
      }),
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'CHOISISSEZ LE TYPE DE\nVOTRE COMPTE',
                      style: TextStyle(color: SwiftColors.purple, fontSize: 24),
                    ),
                    ...List.generate(
                      accountTypes.length,
                      (index) => ChooseMarketElement(
                        iconPath: iconPaths[index],
                        title: titles[index],
                        color: choosed == index ? SwiftColors.orange : Color(0xffF4F0F6),
                        onPressed: () => setState(() {
                          choosed = index;
                        }),
                      ),
                    ),
                    PrimaryButton(
                        backColor: SwiftColors.purple,
                        frontColor: Colors.white,
                        onPressed: () {
                          BlocProvider.of<RegisterBloc>(context)
                              .add(RegisterEvent.setAccountType(accountTypes[choosed]));
                        },
                        text: 'Continuer')
                  ],
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}

class ChooseMarketElement extends StatelessWidget {
  const ChooseMarketElement({
    Key? key,
    required this.iconPath,
    required this.onPressed,
    required this.title,
    required this.color,
    this.scale,
  }) : super(key: key);
  final String iconPath;
  final void Function() onPressed;
  final String title;
  final Color color;
  final double? scale;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(65),
            ),
            child: Center(
              child: Image.asset(
                iconPath,
                scale: scale ?? 0.5,
                color: color == SwiftColors.orange ? Colors.white : SwiftColors.orange,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
