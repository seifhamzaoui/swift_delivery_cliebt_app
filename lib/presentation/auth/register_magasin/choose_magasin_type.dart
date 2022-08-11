// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/application/auth/register_bloc/register_bloc.dart';
import 'package:client_app/presentation/auth/register_magasin/choose_account_type.dart';
import 'package:client_app/presentation/client/home_screen.dart';
import 'package:client_app/presentation/client/home/main_screen.dart';
import 'package:client_app/presentation/constants/data.dart';
import 'package:client_app/presentation/constants/enums.dart';
import 'package:client_app/presentation/core/market_grid_element.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter/material.dart';

import 'package:client_app/presentation/constants/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseMagasinType extends StatefulWidget {
  ChooseMagasinType({Key? key}) : super(key: key);

  @override
  State<ChooseMagasinType> createState() => _ChooseMagasinTypeState();
}

class _ChooseMagasinTypeState extends State<ChooseMagasinType> {
  int choosed = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (() async {
        BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.returnTo());
        return false;
      }),
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/swift-background.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(child: SizedBox(height: 30)),
                  const SliverToBoxAdapter(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'CHOISISSEZ L\'ACTIVITE \nDE VOTRE MAGASIN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'future-friends', fontSize: 24, color: SwiftColors.purple),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(child: SizedBox(height: 20)),
                  SliverGrid(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ChooseMarketElement(
                          scale: 1,
                          title: magasinCategories[index].title,
                          iconPath: magasinCategories[index].imagepath,
                          color: choosed == index ? SwiftColors.orange : Color(0xffF4F0F6),
                          onPressed: () {
                            setState(() {
                              choosed = index;
                            });
                          },
                        );
                      },
                      childCount: magasinCategories.length,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: PrimaryButton(
                      backColor: SwiftColors.purple,
                      frontColor: Colors.white,
                      text: 'Continuer',
                      onPressed: () {
                        BlocProvider.of<RegisterBloc>(context)
                            .add(RegisterEvent.setmagasinType(magasinCategories[choosed]));
                      },
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
