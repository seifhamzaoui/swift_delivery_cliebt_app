// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

import 'package:client_app/presentation/client/home/market_screen.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:client_app/presentation/core/market_pageView_element.dart';

class MainScreen extends StatefulWidget {
  MainScreen({
    Key? key,
    required this.onReturnBack,
  }) : super(key: key);
  final void Function(int index) onReturnBack;
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController _controller = PageController(viewportFraction: 0.7);
  double _page = 0;
  @override
  void initState() {
    _controller.addListener(() {
      setState(() {
        _page = _controller.page!;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SwiftColors.backGrey,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                      icon: Image.asset('assets/icons/menu.png'),
                      onPressed: () {},
                    ),
                    Expanded(child: Image.asset('assets/images/logo_small.png')),
                    CustomIconButton(
                      icon: Image.asset('assets/icons/notification.png'),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hintText: 'Trouvez votre restaurant….',
                  fillColor: Colors.white,
                  icon: Image.asset('assets/icons/search.png'),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 250,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: _controller,
                    children: List.generate(2, (index) {
                      return Align(
                        alignment: Alignment.centerLeft,
                        child: Transform(
                          transform: Matrix4.identity()..scale(exp(-0.1 * (_page - index).abs())),
                          child: MarketPageViewElement(
                            onPressed: () async {
                              dynamic result = await Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return MarketScreen();
                                },
                              ));
                              if (result != null) widget.onReturnBack(result);
                            },
                            deliveryPrice: 200,
                            image: AssetImage('assets/images/denys.png'),
                            name: 'Denny\'s',
                            review: 4.3,
                            type: 'Fast Food',
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}