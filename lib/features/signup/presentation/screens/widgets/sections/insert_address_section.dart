import 'package:flutter/material.dart';
import 'package:moding_application/core/constants/app_strings.dart';

import '../../../../../../core/presentation/widgets/confirm_button.dart';
import '../../../../../../core/presentation/widgets/input_widget.dart';
import '../../../../../../core/theme/app_text_styles.dart';
import '../signup_step2_box.dart';

class InsertAddressSection extends StatelessWidget {
  const InsertAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SignupStep2Box(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.insertAddressTitle,
            style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
          ),

          Row(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: InputWidget(
                  inputTitle: AppStrings.businessAddressSearch,
                  inputHint: AppStrings.pleaseBusinessAddress,
                  titleTextStyle: context.body,
                  onChanged: (String value) {},
                ),
              ),
              SizedBox(
                width: 60,
                child: ConfirmButton(buttonTitle: AppStrings.search),
              ),
            ],
          ),

          InputWidget(
            inputTitle: AppStrings.detailAddressInsert,
            inputHint: AppStrings.pleaseDetailAddress,
            titleTextStyle: context.body,
            onChanged: (String value) {},
          ),
        ],
      ),
    );
  }
}
