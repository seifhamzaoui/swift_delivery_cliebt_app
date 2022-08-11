import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SignalerProblem extends StatefulWidget {
  const SignalerProblem({Key? key}) : super(key: key);

  @override
  State<SignalerProblem> createState() => _SignalerProblemState();
}

class _SignalerProblemState extends State<SignalerProblem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SwiftColors.backGrey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Signalez un problème',
                  style: TextStyle(fontFamily: 'montserrat-bold', fontSize: 24),
                ),
                const SizedBox(height: 43),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    maxLines: 8,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 24, bottom: 24, left: 30),
                      filled: true,
                      fillColor: Color(0xFF4D0060).withOpacity(0.06),
                      hintText: 'Details..',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: SwiftColors.hintGreyColor,
                        fontSize: 13,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 150),
                PrimaryButton(
                    backColor: SwiftColors.purple,
                    frontColor: Colors.white,
                    onPressed: () {},
                    text: 'Envoyer')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
