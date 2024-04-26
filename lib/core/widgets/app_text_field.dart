// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ml_project/core/theme/colors.dart';
import 'package:ml_project/core/theme/text_styles.dart';

class AppTextFormField extends StatelessWidget {
  String? hintText;
  TextStyle? hintTextStyle;
  Widget? suffix;
  TextInputType? textInputType;
  Function(String)? onChanged;

  AppTextFormField({
    super.key,
    this.onChanged,
    this.hintText,
    this.suffix,
    this.textInputType,
    this.hintTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: TextFormField(
        keyboardType: textInputType ?? TextInputType.none,
        validator: (data) {
          if (data!.isEmpty) {
            return 'Field is empty ';
          }
          return null;
          // else if (!EmailValidator.validate(data)) {
          //   return 'invalid';
          // }
        },
        onChanged: onChanged,
        textAlign: TextAlign.center,
        style: AppTextStyles.font15GrayW400.copyWith(fontSize: 14.sp),
        cursorColor: ColorsManager.gray,
        decoration: InputDecoration(
          hintText: hintText ?? "",
          contentPadding:
              EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 12.0.w),
          hintStyle:hintTextStyle?? AppTextStyles.font15GrayW400.copyWith(fontSize: 14.sp),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorsManager.gray),
            borderRadius: BorderRadius.all(Radius.circular(13.r)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorsManager.blue,
            ),
            borderRadius: BorderRadius.all(Radius.circular(13.r)),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorsManager.blue,
            ),
            borderRadius: BorderRadius.all(Radius.circular(13.r)),
          ),
        ),
      ),
    );
  }
}
