import 'package:client_app/presentation/auth/login_widget.dart';
import 'package:client_app/presentation/client/reviews/review_form.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MagasinReviewsPage extends StatefulWidget {
  const MagasinReviewsPage({Key? key}) : super(key: key);

  @override
  State<MagasinReviewsPage> createState() => _MagasinReviewsPageState();
}

class _MagasinReviewsPageState extends State<MagasinReviewsPage> {
  String text =
      'Ea incididunt ullamco nisi in nostrud deserunt cillum consectetur sit consectetur ad. Amet cillum voluptate reprehenderit laborum eu laborum dolor nostrud duis incididunt amet qui dolor. Adipisicing id excepteur proident est ad sit tempor Lorem deserunt nisi pariatur ut veniam aute. Nisi dolore tempor non nulla est. Incididunt id tempor do ullamco exercitation est esse mollit. Ad Lorem aute dolore anim aute non aliqua eiusmod magna ex aliqua fugiat dolore. Ex sunt proident cupidatat ex.';
  bool showText = false;
  int productsNumber = 0;
  bool showAllPanel = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                // photo de produit dans decoration
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/denys.png'),
                  ),
                ),
                child: Stack(
                  children: [
                    // bouton de retour
                    Positioned(
                      top: 30.h,
                      left: 30.w,
                      child: CustomIconButton(
                        icon: Center(
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    Positioned(
                      top: 30.h,
                      right: 30.w,
                      child: CustomIconButton(
                        icon: Center(
                          child: Icon(
                            Icons.favorite_outline,
                            color: Colors.black,
                            size: 30.sp,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              // information de produit
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Denny\'s',
                          style: TextStyle(fontSize: 22.sp),
                        ),
                        SizedBox(height: 5.h),
                        Text('Fa.wst Food', style: TextStyle(color: SwiftColors.hintGreyColor)),
                        SizedBox(height: 5.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RatingBar.builder(
                              itemSize: 26.sp,
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              ignoreGestures: true,
                              itemBuilder: (context, _) => Image.asset(
                                'assets/icons/yellow_star.png',
                                color: SwiftColors.orange,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            const SizedBox(width: 5),
                            Text('4', style: TextStyle(fontSize: 18.sp))
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (c) => ReviewForm()));
                      },
                      icon: Icon(Icons.star, size: 30.sp),
                      label: Text(
                        'Evaluer',
                        style: TextStyle(fontFamily: 'montserrat-bold'),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: SwiftColors.purple,
                          primary: Colors.white,
                          fixedSize: Size(126.w, 52.w),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              // description de produit
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      children: [
                        Text(
                          showText
                              ? text
                              : text.replaceRange((text.length / 10).floor(), text.length, ''),
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        SizedBox(width: 5.w),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                showText = !showText;
                              });
                            },
                            child: Text(
                              'affichier plus',
                              style: TextStyle(color: SwiftColors.orange, fontSize: 14.sp),
                            )),
                      ],
                    ),
                  )),
              Divider(),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Avis (2)',
                    style: TextStyle(fontFamily: 'montserrat-bold', fontSize: 16.sp),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              SingleReview(),
              SingleReview()
            ],
          ),
        ),
      ),
    );
  }
}

class SingleReview extends StatelessWidget {
  const SingleReview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 60.w,
                width: 60.w,
                child: Icon(Icons.person),
              ),
              SizedBox(width: 20.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hamza Bendahmane',
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      RatingBar.builder(
                        itemSize: 20.w,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        ignoreGestures: true,
                        itemBuilder: (context, _) => Image.asset(
                          'assets/icons/yellow_star.png',
                          color: SwiftColors.orange,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Text(
                        '4',
                        style: TextStyle(
                          fontFamily: 'montserrat-bold',
                          fontSize: 16,
                          color: SwiftColors.hintGreyColor,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 3),
          Text(
            ' occaecat nisi ad dolor mollit magna. Enim exercitation amet aliqua do excepteur. Aute voluptate dolore nisi fugiat sunt nulla officia officia. Culpa in deserunt eu dolore cupidatat ullamco reprehenderit dolor do deserunt consectetur.',
            style: TextStyle(color: SwiftColors.hintGreyColor, fontSize: 14.sp),
          ),
          Divider()
        ],
      ),
    );
  }
}
