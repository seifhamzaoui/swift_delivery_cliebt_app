import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewForm extends StatefulWidget {
  const ReviewForm({Key? key}) : super(key: key);

  @override
  State<ReviewForm> createState() => _ReviewFormState();
}

class _ReviewFormState extends State<ReviewForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SwiftColors.backGrey,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Text(
                  'Evaluez le restaurent',
                  style: TextStyle(fontFamily: 'montserrat-bold', fontSize: 24.sp),
                ),
                SizedBox(height: 51.h),
                Container(
                  height: 70.w,
                  width: 70.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/denys.png'),
                      ),
                      borderRadius: BorderRadius.circular(30.w)),
                ),
                SizedBox(height: 15.h),
                Text(
                  'Denny\'s',
                  style: TextStyle(
                    color: SwiftColors.purple,
                    fontSize: 18.sp,
                    fontFamily: 'montserrat-bold',
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Fast Food',
                  style: TextStyle(color: SwiftColors.orange, fontSize: 16.sp),
                ),
                SizedBox(height: 40.h),
                RatingBar.builder(
                  itemSize: 50.sp,
                  initialRating: 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, _) => Container(
                    child: Icon(
                      Icons.star,
                      color: SwiftColors.orange,
                    ),
                  ),
                  unratedColor: Colors.grey,
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(height: 30.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: TextFormField(
                    maxLines: 8,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 24, bottom: 24.h, left: 30.w),
                      filled: true,
                      fillColor: Color(0xFF4D0060).withOpacity(0.06),
                      hintText: 'Donnez votre avis',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.w),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: SwiftColors.hintGreyColor,
                        fontSize: 13.sp,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 70.h),
                PrimaryButton(
                    backColor: SwiftColors.purple,
                    frontColor: Colors.white,
                    onPressed: () {},
                    text: 'Valider')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
