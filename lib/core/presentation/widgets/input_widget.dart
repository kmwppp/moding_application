import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/constants/app_colors.dart';

import '../../theme/app_text_styles.dart';

class InputWidget extends ConsumerWidget {
  final String inputTitle;
  final String inputHint;
  final String caption;
  final double paddingH;
  final double paddingV;
  final TextStyle titleTextStyle;
  final TextInputType inputType;
  final List<TextInputFormatter> inputFormatter;

  //실무기준으로 onChange를 받는다
  final ValueChanged<String> onChanged;

  const InputWidget({
    super.key,
    required this.inputTitle,
    required this.inputHint,
    this.caption = "",
    this.paddingH = 0,
    this.paddingV = 0,
    this.titleTextStyle = AppTextStyles.bodyLarge,
    this.inputType = TextInputType.text,
    this.inputFormatter = const [],

    required this.onChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: paddingV, horizontal: paddingH),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            spacing: 6,
            children: [
              if (inputTitle != "")
                Column(
                  children: [
                    Text(inputTitle, style: titleTextStyle),
                    SizedBox(height: 10),
                  ],
                ),
              if (caption != "")
                Column(
                  children: [
                    Text(
                      caption,
                      style: context.caption.copyWith(
                        color: AppColors.hintTextColor,
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
            ],
          ),

          _inputUserInfo(context),
        ],
      ),
    );
  }

  Widget _inputUserInfo(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.dividerGrey),
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 14),
      child: TextField(
        onChanged: (value) {
          onChanged(value);
        },
        keyboardType: inputType,
        inputFormatters: inputFormatter,
        decoration: InputDecoration(
          isDense: true,
          border: InputBorder.none,
          hintText: inputHint,
        ),
        style: context.body,
      ),
    );
  }
}
