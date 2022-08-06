import 'package:client_app/presentation/auth/login_widget.dart';
import 'package:client_app/presentation/client/orders/order_map_way.dart';
import 'package:client_app/presentation/client/orders/orders_screen.dart';
import 'package:client_app/presentation/client/orders/single_order_page.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/constants/enums.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrderPreviewPage extends StatefulWidget {
  const OrderPreviewPage({Key? key}) : super(key: key);

  @override
  State<OrderPreviewPage> createState() => _OrderPreviewPageState();
}

class _OrderPreviewPageState extends State<OrderPreviewPage> {
  OrderStatus orderStatus = OrderStatus.COMPLETED;
  bool showDialog = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SwiftColors.backGrey,
      body: SafeArea(
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
                SizedBox(height: 20),
                Column(
                  children: [
                    Text(
                      'Détails de la \ncommande',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'montserrat-bold',
                        color: SwiftColors.purple,
                        fontSize: 24,
                      ),
                    ),
                    if (orderStatus == OrderStatus.RES_PENDING)
                      Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: SwiftColors.orange,
                                radius: 10,
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: const Text(
                                  'Il est préférable de valider la commande avant la préparation du repas afin de permettre au livreur à arriver au temps ',
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    SizedBox(height: 20),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
                      elevation: 8,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 31),
                        child: Column(
                          children: [
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
                            if (orderStatus == OrderStatus.COMPLETED) OrderCompletedIcon(),
                            if (orderStatus == OrderStatus.LIV_PENDING)
                              OrderPending(orderStatus: orderStatus),
                            if (orderStatus == OrderStatus.RES_PENDING)
                              OrderPending(orderStatus: orderStatus),
                            const SizedBox(height: 56.8),
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
                                    fontSize: 25,
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
                const SizedBox(height: 58),
                if (orderStatus == OrderStatus.RES_PENDING)
                  PrimaryButton(
                    backColor: SwiftColors.purple,
                    frontColor: Colors.white,
                    onPressed: () {},
                    text: 'Valider la commande',
                  ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}