// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/auth/register_magasin/choose_account_type.dart';
import 'package:client_app/presentation/constants/data.dart';
import 'package:client_app/presentation/constants/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:client_app/application/auth/register_bloc/register_bloc.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/constants/enums.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseRestaurantType extends StatefulWidget {
  const ChooseRestaurantType({Key? key}) : super(key: key);

  @override
  State<ChooseRestaurantType> createState() => _ChooseRestaurantTypeState();
}

class _ChooseRestaurantTypeState extends State<ChooseRestaurantType> {
  int choosed = 0;
  @override
  Widget build(BuildContext context) {
    MagasinCategory categoryChoosed = BlocProvider.of<RegisterBloc>(context)
        .state
        .magasinType
        .fold(() => magasinCategories[0], (a) => a);
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
            padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                          runSpacing: 10,
                          spacing: 20,
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
                            onPressed: () {
                              BlocProvider.of<RegisterBloc>(context).add(
                                  RegisterEvent.setRestaurantType(
                                      categoryChoosed.subcategory![choosed]));
                            },
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
