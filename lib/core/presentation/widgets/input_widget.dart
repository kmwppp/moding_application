import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/constants/app_colors.dart';

import '../../theme/app_text_styles.dart';

class InputWidget extends ConsumerStatefulWidget {
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
  ConsumerState<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends ConsumerState<InputWidget> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPw;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: widget.paddingV,
        horizontal: widget.paddingH,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            spacing: 6,
            children: [
              if (widget.inputTitle != "")
                Column(
                  children: [
                    Text(widget.inputTitle, style: widget.titleTextStyle),
                    const SizedBox(height: 10),
                  ],
                ),
              if (widget.caption != "")
                Column(
                  children: [
                    Text(
                      widget.caption,
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
    return !widget.isPw
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
              focusNode: widget.focusNode,
              obscureText: _obscureText,
              onChanged: (value) {
                widget.onChanged(value);
              },
              keyboardType: widget.inputType,
              inputFormatters: widget.inputFormatter,
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                hintText: widget.inputHint,
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
                    obscureText: _obscureText,
                    onChanged: (value) {
                      widget.onChanged(value);
                    },
                    keyboardType: widget.inputType,
                    inputFormatters: widget.inputFormatter,
                    decoration: InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                      hintText: widget.inputHint,
                      hintStyle: context.body.copyWith(
                        color: AppColors.darkGrey,
                      ),
                    ),
                    style: context.body,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    size: 18,
                    color: AppColors.darkGrey,
                  ),
                ),
              ],
            ),
          );
  }
}
