// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/auth/login_widget.dart';
import 'package:client_app/presentation/client/orders/order_map_way.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/constants/enums.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingleOrderPage extends StatefulWidget {
  const SingleOrderPage({Key? key}) : super(key: key);

  @override
  State<SingleOrderPage> createState() => _SingleOrderPageState();
}

class _SingleOrderPageState extends State<SingleOrderPage> {
  OrderStatus orderStatus = OrderStatus.LIV_PENDING;
  bool showDialog = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (showDialog) {
          setState(() {
            showDialog = false;
          });
          return false;
        }
        return true;
      },
      child: Scaffold(
        backgroundColor: SwiftColors.backGrey,
        body: Stack(
          children: [
            SafeArea(
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 20),
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
                        Stack(
                          children: [
                            Column(
                              children: [
                                SizedBox(height: 100),
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(35)),
                                  elevation: 8,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 19, horizontal: 31),
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 92),
                                        Text(
                                          'Génial!',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: SwiftColors.purple,
                                          ),
                                        ),
                                        const SizedBox(height: 31),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Restaurent',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: SwiftColors.hintGreyColor,
                                              ),
                                            ),
                                            Text(
                                              'Denny\'s',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: SwiftColors.orange,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 16),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Repas',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: SwiftColors.hintGreyColor,
                                              ),
                                            ),
                                            Text(
                                              '1200 DA',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: SwiftColors.orange,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 16),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Livraison',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: SwiftColors.hintGreyColor,
                                              ),
                                            ),
                                            Text(
                                              '200 DA',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: SwiftColors.orange,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 16),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'N° du commande',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: SwiftColors.hintGreyColor,
                                              ),
                                            ),
                                            Text(
                                              'C6754358744535',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: SwiftColors.orange,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 29),
                                        if (orderStatus == OrderStatus.COMPLETED)
                                          OrderCompletedIcon(),
                                        if (orderStatus == OrderStatus.LIV_PENDING)
                                          OrderPending(orderStatus: orderStatus),
                                        if (orderStatus == OrderStatus.RES_PENDING)
                                          OrderPending(orderStatus: orderStatus),
                                        const SizedBox(height: 56.8),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Total',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            SizedBox(height: 1),
                                            Text(
                                              '1400 Da',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: SwiftColors.orange,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            CirclePurpleCheck(),
                          ],
                        ),
                        const SizedBox(height: 58),
                        if (orderStatus == OrderStatus.LIV_PENDING)
                          PrimaryButton(
                            backColor: SwiftColors.purple,
                            frontColor: Colors.white,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                                return OrderMapWay();
                              })));
                            },
                            text: 'Voir Map',
                          ),
                        if (orderStatus == OrderStatus.RES_PENDING)
                          ElevatedButton(
                            style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all(Size(111, 49)),
                              backgroundColor: MaterialStateProperty.all(SwiftColors.orange),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              )),
                            ),
                            onPressed: () {
                              setState(() {
                                showDialog = true;
                              });
                            },
                            child: Icon(Icons.close, size: 35),
                          ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            if (showDialog)
              Container(
                height: MediaQuery.of(context).size.height * 1.2,
                width: MediaQuery.of(context).size.width,
                color: Colors.black.withOpacity(0.7),
              )
          ],
        ),
        bottomNavigationBar: !showDialog
            ? null
            : Container(
                height: 190.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      const BoxShadow(color: Colors.black, blurRadius: 10, spreadRadius: 1),
                    ],
                    borderRadius: BorderRadius.vertical(top: Radius.circular(5))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    /// separator gris
                    SizedBox(height: 20.h),
                    const GreySeparator(),
                    SizedBox(height: 20.h),
                    // Combien?

                    Text('Etes Vous sur d\'annuler la commande?',
                        style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700)),
                    SizedBox(height: 40.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              primary: SwiftColors.purple,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.w),
                                side: BorderSide(color: SwiftColors.purple, width: 2),
                              ),
                              fixedSize: Size(158.w, 49.h)),
                          child: Text(
                            'Oui',
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 20.w),
                        TextButton(
                          style: TextButton.styleFrom(
                            fixedSize: Size(158.w, 49.h),
                            primary: Colors.white,
                            backgroundColor: SwiftColors.purple,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: BorderSide(color: SwiftColors.purple, width: 2),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Non',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h)
                  ],
                ),
              ),
      ),
    );
  }
}

class CirclePurpleCheck extends StatelessWidget {
  const CirclePurpleCheck({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.30,
      top: 50,
      child: Container(
        height: 111,
        width: 111,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: SwiftColors.purple,
          boxShadow: [
            BoxShadow(
              color: SwiftColors.purple.withOpacity(0.1),
              offset: Offset(0, 0),
              blurRadius: 0,
              spreadRadius: 10,
            ),
          ],
        ),
        child: Icon(
          Icons.check,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}

class OrderCompletedIcon extends StatelessWidget {
  const OrderCompletedIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: SwiftColors.green,
            boxShadow: [
              BoxShadow(
                color: SwiftColors.green.withOpacity(0.1),
                offset: Offset(0, 0),
                blurRadius: 0,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Icon(
            Icons.check,
            size: 30,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16.2),
        Text(
          'Commande Complété',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: SwiftColors.green,
          ),
        )
      ],
    );
  }
}

class OrderPending extends StatelessWidget {
  const OrderPending({
    Key? key,
    required this.orderStatus,
  }) : super(key: key);
  final OrderStatus orderStatus;
  @override
  Widget build(BuildContext context) {
    String text = orderStatus == OrderStatus.LIV_PENDING
        ? 'en attente de \nLivraison'
        : 'Validation du \nrestaurant en attente';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/icons/pending_star.png'),
        const SizedBox(height: 16.2),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: SwiftColors.purple,
          ),
        )
      ],
    );
  }
}
