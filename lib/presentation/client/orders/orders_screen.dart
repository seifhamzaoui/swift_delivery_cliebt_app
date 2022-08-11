// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:client_app/presentation/client/orders/single_order_page.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/Custon_top_navigation_bar.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/enums.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTopNavigationBar(),
            OrdersScreenMenuItem(
              orderStatus: OrderStatus.LIV_PENDING,
            ),
            OrdersScreenMenuItem(orderStatus: OrderStatus.COMPLETED),
            OrdersScreenMenuItem(orderStatus: OrderStatus.RES_PENDING),
            const SizedBox(height: 120),
          ],
        ),
      ),
    ));
  }
}

class OrdersScreenMenuItem extends StatelessWidget {
  const OrdersScreenMenuItem({
    Key? key,
    required this.orderStatus,
  }) : super(key: key);

  final OrderStatus orderStatus;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 17.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 41.w,
                  width: 41.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/denys.png'),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Denny\'s ',
                      style: TextStyle(
                        color: SwiftColors.purple,
                      ),
                    ),
                    Text(
                      'Fast Food',
                      style: TextStyle(
                        color: SwiftColors.orange,
                      ),
                    )
                  ],
                ),
                Text(
                  orderStatus == OrderStatus.COMPLETED
                      ? '*Commande Complété*'
                      : orderStatus == OrderStatus.RES_PENDING
                          ? '*En attente de Validation*'
                          : orderStatus == OrderStatus.CANCELLED
                              ? '*Commande Annulé*'
                              : '*En attente de Livraison*',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: orderStatus == OrderStatus.COMPLETED
                        ? SwiftColors.green
                        : orderStatus == OrderStatus.RES_PENDING
                            ? SwiftColors.purple
                            : orderStatus == OrderStatus.CANCELLED
                                ? Colors.red
                                : SwiftColors.purple,
                  ),
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 140,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return FoodOrderMenuitem();
                }),
                separatorBuilder: ((context, index) {
                  return SizedBox(width: 20.w);
                }),
                itemCount: 3,
              ),
            ),
            Divider(),
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
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) {
                        return SingleOrderPage();
                      })));
                    },
                    text: 'Voir',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FoodOrderMenuitem extends StatelessWidget {
  const FoodOrderMenuitem({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 88.w,
      child: Column(
        children: [
          Container(
            height: 80.w,
            width: 88.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.w),
                image: DecorationImage(image: AssetImage('assets/images/burger.png'))),
          ),
          SizedBox(height: 5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  'Pizza Poolet',
                  maxLines: 3,
                  softWrap: true,
                  overflow: TextOverflow.fade,
                  style: TextStyle(fontSize: 14.sp),
                ),
              ),
              CircleAvatar(
                backgroundColor: SwiftColors.orange,
                foregroundColor: Colors.white,
                radius: 15,
                child: Text(
                  '1',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
