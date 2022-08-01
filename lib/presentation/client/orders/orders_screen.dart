import 'package:client_app/presentation/client/orders/single_order_page.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/Custon_top_navigation_bar.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter/material.dart';

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
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTopNavigationBar(),
            OrdersScreenMenuItem(),
            OrdersScreenMenuItem(),
            OrdersScreenMenuItem(),
          ],
        ),
      ),
    ));
  }
}

class OrdersScreenMenuItem extends StatelessWidget {
  const OrdersScreenMenuItem({
    Key? key,
  }) : super(key: key);

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
                  '*Commande Livré*',
                  style: TextStyle(
                    fontSize: 12,
                    color: SwiftColors.green,
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
      width: 88,
      child: Column(
        children: [
          Container(
            height: 80,
            width: 88,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                image: DecorationImage(image: AssetImage('assets/images/burger.png'))),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  'Pizza Poolet',
                  maxLines: 3,
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ),
              CircleAvatar(
                backgroundColor: SwiftColors.orange,
                foregroundColor: Colors.white,
                radius: 15,
                child: Text(
                  '1',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
