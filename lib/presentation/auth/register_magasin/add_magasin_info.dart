// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/auth/register_magasin/choose_account_type.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:client_app/application/auth/register_bloc/register_bloc.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/constants/enums.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';

class AddMagasinInfo extends StatefulWidget {
  const AddMagasinInfo({Key? key}) : super(key: key);

  @override
  State<AddMagasinInfo> createState() => _AddMagasinInfoState();
}

class _AddMagasinInfoState extends State<AddMagasinInfo> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (() async {
        BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.returnTo(2));
        return false;
      }),
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 56),
          child: Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'COMPLETEZ VOTRE PROFILE DU MAGASIN',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: SwiftColors.purple, fontSize: 24),
                      ),
                    ),
                    Text(
                      'Nom du magasin*',
                      style: TextStyle(fontSize: 16),
                    ),
                    CustomTextField(hintText: 'Insérez le nom du votre magasin'),
                    Text(
                      'Logo du magasin*',
                      style: TextStyle(fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<RegisterBloc>().add(RegisterEvent.selectmagasinPicture());
                      },
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Color(0xFF4D0060).withOpacity(0.06),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: context.watch<RegisterBloc>().state.picture.fold(
                              () => Icon(
                                Icons.camera_alt_rounded,
                                size: 80,
                                color: SwiftColors.hintGreyColor,
                              ),
                              (file) => Image.file(
                                file,
                                fit: BoxFit.fill,
                              ),
                            ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: PrimaryButton(
                        backColor: SwiftColors.purple,
                        frontColor: Colors.white,
                        onPressed: () {
                          BlocProvider.of<RegisterBloc>(context)
                              .add(RegisterEvent.setREstaurantInfo());
                        },
                        text: 'Continuer',
                      ),
                    )
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
