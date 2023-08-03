import 'package:flutter/material.dart';
import 'package:m2_exam/core/constants/constants.dart';
import 'package:m2_exam/core/widgets/styles.dart';

class LoginWithPlatformWidget extends StatelessWidget {
  const LoginWithPlatformWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: AppColors.C_DDDDDD,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Or',
            style: AppStyle.fontAcmeW400(appcolor: AppColors.C_999999)
                .copyWith(fontSize: 12),
          ),
        ),
        const Expanded(
          child: Divider(
            color: AppColors.C_DDDDDD,
          ),
        ),
      ],
    );
  }
}
