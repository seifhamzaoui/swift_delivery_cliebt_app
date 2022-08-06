// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/magasin/orders/order_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:client_app/presentation/client/orders/orders_screen.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/constants/enums.dart';
import 'package:client_app/presentation/core/Custon_top_navigation_bar.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SwiftColors.backGrey,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                  Expanded(child: Image.asset('assets/images/logo_small.png')),
                  CustomIconButton(
                    icon: Image.asset('assets/icons/notification.png'),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 60),
              Text(
                'List des\nCommandes',
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'montserrat-bold',
                ),
              ),
              const SizedBox(height: 25),
              Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/money_bills.png',
                        color: SwiftColors.purple,
                      ),
                      SizedBox(width: 15),
                      Text('Total du jour',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'montserrat-bold',
                          )),
                      Spacer(),
                      Text('2400 DA',
                          style: TextStyle(
                              color: SwiftColors.orange,
                              fontFamily: 'montserrat-bold',
                              fontSize: 16)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                elevation: 5,
                child: CustomTextField(
                    icon: Icon(
                      Icons.search_rounded,
                      size: 40,
                      color: Colors.black,
                    ),
                    hintText: 'Rechercher..',
                    fillColor: Colors.white),
              ),
              const SizedBox(height: 20),
              MagasinOrdersScreenMenuItem(
                orderStatus: OrderStatus.COMPLETED,
              ),
              MagasinOrdersScreenMenuItem(
                orderStatus: OrderStatus.RES_PENDING,
              ),
              MagasinOrdersScreenMenuItem(
                orderStatus: OrderStatus.CANCELLED,
              ),
              MagasinOrdersScreenMenuItem(
                orderStatus: OrderStatus.LIV_PENDING,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class MagasinOrdersScreenMenuItem extends StatelessWidget {
  const MagasinOrdersScreenMenuItem({
    Key? key,
    required this.orderStatus,
  }) : super(key: key);
  final OrderStatus orderStatus;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 17),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 41,
                  width: 41,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/denys.png'),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hamza',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(),
                      ),
                      Text(
                        'Bendahmane',
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  orderStatus == OrderStatus.COMPLETED
                      ? '*Commande Complété*'
                      : orderStatus == OrderStatus.RES_PENDING
                          ? '*En attente de Validation*'
                          : orderStatus == OrderStatus.CANCELLED
                              ? '*Commande Annulé*'
                              : '*En attente de Livraison*',
                  style: TextStyle(
                    fontSize: 12,
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
                  return SizedBox(width: 20);
                }),
                itemCount: 3,
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: SwiftColors.hintGreyColor,
                      ),
                    ),
                    Text(
                      '1400 DA',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
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
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => OrderPreviewPage()));
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
