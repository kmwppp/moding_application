import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/constants/app_colors.dart';

import '../../theme/app_text_styles.dart';

class InputWidget extends ConsumerWidget {
  final FocusNode? focusNode;
  final String inputTitle;
  final String inputHint;
  final String caption;
  final double paddingH;
  final double paddingV;
  final TextStyle titleTextStyle;
  final TextInputType inputType;
  final List<TextInputFormatter> inputFormatter;
  final bool isPw;

  //실무기준으로 onChange를 받는다
  final ValueChanged<String> onChanged;

  const InputWidget({
    super.key,
    this.focusNode,
    required this.inputTitle,
    required this.inputHint,
    this.caption = "",
    this.paddingH = 0,
    this.paddingV = 0,
    this.titleTextStyle = AppTextStyles.bodyLarge,
    this.inputType = TextInputType.text,
    this.inputFormatter = const [],
    this.isPw = false,

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
                    const SizedBox(height: 10),
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
                    const SizedBox(height: 10),
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
    return !isPw
        ? Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.dividerGrey),
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: TextField(
              focusNode: focusNode,
              obscureText: isPw,
              onChanged: (value) {
                onChanged(value);
              },
              keyboardType: inputType,
              inputFormatters: inputFormatter,
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                hintText: inputHint,
                hintStyle: context.body.copyWith(color: AppColors.darkGrey),
              ),
              style: context.body,
            ),
          )
        // 비밀번호 입력일때
        : Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.dividerGrey),
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    obscureText: isPw,
                    onChanged: (value) {
                      onChanged(value);
                    },
                    keyboardType: inputType,
                    inputFormatters: inputFormatter,
                    decoration: InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                      hintText: inputHint,
                      hintStyle: context.body.copyWith(
                        color: AppColors.darkGrey,
                      ),
                    ),
                    style: context.body,
                  ),
                ),
                Icon(Icons.lock, size: 14, color: AppColors.darkGrey),
              ],
            ),
          );
  }
}
