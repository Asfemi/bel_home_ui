import 'package:bel_home_ui/app/view/styles/app_colors.dart';
import 'package:bel_home_ui/app/view/widgets/svg.dart';
import 'package:bel_home_ui/core/extensions/context_extensions.dart';
import 'package:bel_home_ui/core/extensions/widget_extensions.dart';
import 'package:bel_home_ui/features/home/data/transaction_data.dart';
import 'package:bel_home_ui/features/home/presentation/widget/app_navbar.dart';
import 'package:bel_home_ui/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class RecentTransactionWidget extends StatelessWidget {
  const RecentTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.46,
      decoration: BoxDecoration(
        color: AppColors.whiteBackgroundColour,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.r),
          topRight: Radius.circular(50.r),
        ),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Transactions',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryTextColour,
                      fontFamily: FontFamily.montserrat,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'View all',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryColour,
                      fontFamily: FontFamily.montserrat,
                    ),
                  ),
                ],
              ).withSymmetricPadding(horizontal: 24.w),
              Gap(26.h),
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemCount: TransactionData.transactions.length,
                  separatorBuilder: (context, index) => Gap(16.h),
                  itemBuilder: (context, index) {
                    final transaction = TransactionData.transactions[index];
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                transaction['isCredit']
                                    ? AppColors.primaryColour.withValues(
                                      alpha: 0.1,
                                    )
                                    : AppColors.secoundaryIconOverlayColour,
                            //.withValues(alpha: 0.1),
                          ),
                          child: SvgIconWidget(
                            icon: transaction['icon'],
                            height: 15.w,
                            width: 15.w,
                            color:
                                transaction['isCredit']
                                    ? AppColors.primaryColour
                                    : AppColors.badgeColour,
                          ).withAllPadding(9.w),
                        ),
                        Gap(16.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transaction['name'],

                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.primaryTextColour,
                                fontFamily: FontFamily.montserrat,
                              ),
                            ),
                            SizedBox(
                              width: 220.w,

                              child: Text(
                                '${transaction['type']} • ${transaction['date']}',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.secondaryTextColour,
                                  fontFamily: FontFamily.montserrat,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          transaction['amount'],
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryTextColour,
                            fontFamily: FontFamily.montserrat,
                          ),
                        ),
                      ],
                    ).withOnlyPadding(bottom: 16.h);
                  },
                ).withSymmetricPadding(horizontal: 13.w),
              ),
            ],
          ).withSymmetricPadding(vertical: 24.h, horizontal: 11.w),
          Positioned(
            left: 0,
            right: 0,
            bottom: 10.h,
            child: AppNavbar(
              selectedIndex: 0,
              onTabSelected: (index) {
                // setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }
}
