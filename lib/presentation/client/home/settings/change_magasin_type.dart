import 'package:client_app/presentation/auth/register_magasin/choose_account_type.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/constants/data.dart';
import 'package:client_app/presentation/constants/models.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangemagasinType extends StatefulWidget {
  const ChangemagasinType({Key? key}) : super(key: key);

  @override
  State<ChangemagasinType> createState() => _ChangemagasinTypeeState();
}

class _ChangemagasinTypeeState extends State<ChangemagasinType> {
  int choosed = 0;
  @override
  Widget build(BuildContext context) {
    MagasinCategory categoryChoosed = magasinCategories[0];
    return WillPopScope(
      onWillPop: (() async {
        return true;
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
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.95,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          CustomIconButton(
                            icon: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                      Text(
                        'CHOISISSEZ LE SOUS-TYPE DE\nVOTRE MAGASIN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'future-friends',
                            color: SwiftColors.purple,
                            fontSize: 24.sp),
                      ),
                      if (categoryChoosed.subcategory != null)
                        Wrap(
                          alignment: WrapAlignment.spaceAround,
                          runSpacing: 10.w,
                          spacing: 20.w,
                          children: List.generate(
                            categoryChoosed.subcategory!.length,
                            (index) => ChooseMarketElement(
                              scale: 1,
                              iconPath: categoryChoosed.subcategory![index].imagepath,
                              title: categoryChoosed.subcategory![index].title,
                              color: choosed == index ? SwiftColors.orange : Color(0xffF4F0F6),
                              onPressed: () => setState(() {
                                choosed = index;
                              }),
                            ),
                          ),
                        ),
                      if (categoryChoosed.subcategory != null)
                        PrimaryButton(
                            backColor: SwiftColors.purple,
                            frontColor: Colors.white,
                            onPressed: () {},
                            text: 'Continuer')
                    ],
                  ),
                ),
              ),
            ),
          )),
        ),
      ),
    );
  }
}
