import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomIconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      onPressed: () {}),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'AJOUTER UN \nPODUIT',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontFamily: 'future-friends',
                    color: SwiftColors.purple,
                  ),
                ),
              ),
              SizedBox(height: 70.h),
              Text(
                'Description du produit*',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Montserrat-semi-bold',
                ),
              ),
              SizedBox(height: 20.h),
              TextFormField(
                maxLines: 10,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(22.w),
                  filled: true,
                  fillColor: Color(0xFF4D0060).withOpacity(0.06),
                  hintText: 'Insérez le nom du votre magasin',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.w),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  hintStyle: TextStyle(
                      color: SwiftColors.hintGreyColor,
                      fontSize: 13.sp,
                      overflow: TextOverflow.ellipsis),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Prix*',
                style: TextStyle(fontSize: 16.sp, fontFamily: 'Montserrat-semi-bold'),
              ),
              SizedBox(height: 20.h),
              CustomTextField(hintText: 'Insérez le prix du votre produit'),
              SizedBox(height: 45.h),
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
              SizedBox(height: 20.h),
            ],
          ),
        ),
      )),
    );
  }
}
