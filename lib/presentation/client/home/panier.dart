import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Panier extends StatelessWidget {
  const Panier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //show Navbar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                      icon: SvgPicture.asset('assets/icons/menu.svg'),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                    Expanded(
                        child: Text(
                      'Panier',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.sp, color: SwiftColors.purple),
                    )),
                    CustomIconButton(
                      icon: SvgPicture.asset('assets/icons/notification.svg'),
                      onPressed: () {},
                    ),
                  ],
                ),
                ...List.generate(3, (index) => [PanierElement(), SizedBox(height: 10.h)])
                    .expand((element) => element)
                    .toList(),
                Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 19.h, horizontal: 26.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset('assets/icons/livraison_big.svg'),
                        SizedBox(width: 22.5),
                        Text(
                          'Livraison',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                        ),
                        Spacer(),
                        Text(
                          '200 DA',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: SwiftColors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.sp,
                            color: SwiftColors.hintGreyColor,
                          ),
                        ),
                        Text(
                          '1400 DA',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21.sp,
                            color: SwiftColors.orange,
                          ),
                        ),
                      ],
                    ),
                    Spacer(flex: 1),
                    Expanded(
                      flex: 2,
                      child: PrimaryButton(
                        backColor: SwiftColors.purple,
                        frontColor: Colors.white,
                        onPressed: () {},
                        text: 'valider',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 120)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PanierElement extends StatelessWidget {
  const PanierElement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Checkbox(
                value: true,
                onChanged: (val) {},
                fillColor: MaterialStateProperty.all(SwiftColors.orange),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                  side: const BorderSide(
                    color: SwiftColors.hintGreyColor,
                    width: 0,
                  ),
                )),
            // product image
            Container(
              height: 80.w,
              width: 88.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.w),
                  image: DecorationImage(image: AssetImage('assets/images/pizaa.png'))),
            ),
            // product Info
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Denny\'s ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10.sp,
                      color: SwiftColors.purple,
                    )),
                const SizedBox(height: 5),
                Text('Pizza Poolet',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    )),
                const SizedBox(height: 5),
                Text(
                  '400 DA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    color: SwiftColors.orange,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: SwiftColors.purple,
                  foregroundColor: Colors.white,
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add, size: 15.sp),
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Text('1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: SwiftColors.purple,
                    )),
                SizedBox(height: 5),
                CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: Colors.white,
                  foregroundColor: SwiftColors.purple,
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove, size: 15),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
