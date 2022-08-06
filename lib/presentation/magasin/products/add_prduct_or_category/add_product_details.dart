import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddProductDetails extends StatefulWidget {
  const AddProductDetails({Key? key}) : super(key: key);

  @override
  State<AddProductDetails> createState() => _AddProductDetailsState();
}

class _AddProductDetailsState extends State<AddProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SwiftColors.backGrey,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomIconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'AJOUTER UN \nPODUIT',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Montserrat-semi-bold',
                    color: SwiftColors.purple,
                  ),
                ),
              ),
              const SizedBox(height: 70),
              Text(
                'Description du produit*',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Montserrat-semi-bold',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                maxLines: 10,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(22),
                  filled: true,
                  fillColor: Color(0xFF4D0060).withOpacity(0.06),
                  hintText: 'Insérez le nom du votre magasin',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  hintStyle: TextStyle(
                      color: SwiftColors.hintGreyColor,
                      fontSize: 13,
                      overflow: TextOverflow.ellipsis),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Prix*',
                style: TextStyle(fontSize: 16, fontFamily: 'Montserrat-semi-bold'),
              ),
              const SizedBox(height: 20),
              CustomTextField(hintText: 'Insérez le prix du votre produit'),
              const SizedBox(height: 45),
              Align(
                child: PrimaryButton(
                  backColor: SwiftColors.purple,
                  frontColor: Colors.white,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: ((context) {
                      // TODO : add the add product or category screen
                      return AddProductDetails();
                    })));
                  },
                  text: 'Valider',
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      )),
    );
  }
}
