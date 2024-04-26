import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ml_project/core/theme/text_styles.dart';
import 'package:ml_project/core/widgets/app_drop_down_button.dart';
import 'package:ml_project/core/widgets/app_text_button.dart';
import 'package:ml_project/core/widgets/app_text_field.dart';
import 'package:ml_project/views/output_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/theme/colors.dart';

class InputScreen extends StatelessWidget {
  InputScreen({super.key});

  final Uri _url =
      Uri.parse('https://www.latlong.net/convert-address-to-lat-long.html');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Client Info'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Gender :', style: AppTextStyles.font15BlueW600),
                          SizedBox(height: 10.h),
                          const AppDropDownButton(
                            items: ['Male', 'Female'],
                            selectedItem: 'Male',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Marital Status :',
                              style: AppTextStyles.font15BlueW600),
                          SizedBox(height: 10.h),
                          const AppDropDownButton(
                            items: ['Single', 'Married', 'Prefer not to say'],
                            selectedItem: 'Single',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15.h),
                Text('Occupation :', style: AppTextStyles.font15BlueW600),
                SizedBox(height: 10.h),
                const AppDropDownButton(items: [
                  'Employee',
                  'Student',
                  'House wife',
                  'Self Employeed',
                  'None'
                ], selectedItem: 'Select one'),
                SizedBox(height: 15.h),
                Text('Monthly Income :', style: AppTextStyles.font15BlueW600),
                SizedBox(height: 10.h),
                const AppDropDownButton(items: [
                  'No Income',
                  'Below Rs.10000',
                  '10001 to 25000',
                  '25001 to 50000',
                  'More than 50000',
                  'None'
                ], selectedItem: 'Select one'),
                SizedBox(height: 15.h),
                Text('Educational Qualifications :',
                    style: AppTextStyles.font15BlueW600),
                SizedBox(height: 10.h),
                const AppDropDownButton(items: [
                  'Uneducated',
                  'School',
                  'Post Graduate',
                  'Graduate',
                  'Ph.D',
                  'None'
                ], selectedItem: 'Select one'),
                SizedBox(height: 15.h),
                Text('Feedback :', style: AppTextStyles.font15BlueW600),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  '• This refers to your clients\' feedback on your organisation.\n• Preferly to write Postive or Negative.',
                  style: AppTextStyles.font15GrayW400.copyWith(
                    fontSize: 10.sp,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                AppTextFormField(
                  onChanged: (value) {},
                  textInputType: TextInputType.text,
                ),
                // const AppDropDownButton(
                //     items: ['Postitive', 'Negative', 'None'],
                //     selectedItem: 'Select one'),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Text('Age :', style: AppTextStyles.font15BlueW600),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: AppTextFormField(
                              textInputType: TextInputType.number,
                              onChanged: (value) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Text('Family Size :',
                              style: AppTextStyles.font15BlueW600),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: AppTextFormField(
                              textInputType: TextInputType.number,
                              onChanged: (value) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Text('Latitude :',
                              style: AppTextStyles.font15BlueW600),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: AppTextFormField(
                              textInputType: TextInputType.number,
                              onChanged: (value) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Text('Longitude :',
                              style: AppTextStyles.font15BlueW600),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: AppTextFormField(
                              textInputType: TextInputType.number,
                              onChanged: (value) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '• If you have an address,find long & lat from here :',
                      style: AppTextStyles.font15GrayW400.copyWith(
                        fontSize: 10.sp,
                      ),
                    ),
                    InkWell(
                      onTap: _launchUrl,
                      child: Text(
                        ' Click Here',
                        style: AppTextStyles.font11RedW600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    Text('Postal Code :', style: AppTextStyles.font15BlueW600),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: AppTextFormField(
                        textInputType: TextInputType.number,
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                AppTextButton(
                  buttonText: 'Submit',
                  textStyle: AppTextStyles.font15BlueW600
                      .copyWith(color: ColorsManager.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OutputScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
