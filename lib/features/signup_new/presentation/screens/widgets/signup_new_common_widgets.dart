import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/theme/app_box_styles.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';

import '../../providers/signup_new_state.dart';

class SignupNewStepHeader extends StatelessWidget {
  final SignupNewStep step;

  const SignupNewStepHeader({super.key, required this.step});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          step == SignupNewStep.accountInfo ? '회원정보 입력' : '사업자 정보 등록',
          style: context.bigTitle,
        ),
        const SizedBox(height: 6),
        Text(
          step == SignupNewStep.accountInfo
              ? '기본 회원정보를 입력해 주세요.'
              : '모딩은 사업자 회원 전용 서비스입니다.\n주문, 배송 및 증빙 처리를 위해 사업자 정보를 등록해 주세요.',
          style: context.caption.copyWith(color: AppColors.darkGrey),
        ),
      ],
    );
  }
}

class SignupNewSectionBox extends StatelessWidget {
  final Widget child;

  const SignupNewSectionBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: AppBoxStyles.borderBox,
      child: child,
    );
  }
}

class SignupNewSectionTitle extends StatelessWidget {
  final String title;

  const SignupNewSectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
    );
  }
}

class SignupNewStaticInfoField extends StatelessWidget {
  final String label;
  final String value;

  const SignupNewStaticInfoField({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: context.body),
        const SizedBox(height: 6),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.dividerGrey),
            borderRadius: BorderRadius.circular(6),
            color: AppColors.lightGrey,
          ),
          child: Text(
            value,
            style: context.body.copyWith(color: AppColors.darkGrey),
          ),
        ),
      ],
    );
  }
}

class SignupNewLabeledTextField extends StatelessWidget {
  final String label;
  final String hint;
  final bool obscureText;
  final TextInputType inputType;
  final List<TextInputFormatter> inputFormatters;
  final ValueChanged<String> onChanged;

  const SignupNewLabeledTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.onChanged,
    this.obscureText = false,
    this.inputType = TextInputType.text,
    this.inputFormatters = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: context.body),
        const SizedBox(height: 6),
        Container(
          width: double.infinity,
          height: 40,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.dividerGrey),
            borderRadius: BorderRadius.circular(6),
          ),
          child: TextField(
            obscureText: obscureText,
            keyboardType: inputType,
            inputFormatters: inputFormatters,
            onChanged: onChanged,
            style: context.body,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              isDense: true,
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              hintText: hint,
              hintStyle: context.body.copyWith(color: AppColors.darkGrey),
            ),
          ),
        ),
      ],
    );
  }
}

class SignupNewLoginIdCaption extends StatelessWidget {
  final LoginIdCheckStatus status;

  const SignupNewLoginIdCaption({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    if (status == LoginIdCheckStatus.idle) {
      return const SizedBox.shrink();
    }

    if (status == LoginIdCheckStatus.checking) {
      return Text(
        '아이디 중복 확인 중입니다.',
        style: context.caption.copyWith(color: AppColors.darkGrey),
      );
    }

    if (status == LoginIdCheckStatus.available) {
      return Text(
        '사용 가능한 아이디입니다.',
        style: context.caption.copyWith(color: Colors.green),
      );
    }

    return Text(
      '아이디 형식을 확인하거나 다른 아이디를 입력해주세요.',
      style: context.caption.copyWith(color: Colors.red),
    );
  }
}

class SignupNewPasswordCaption extends StatelessWidget {
  final bool passwordValid;
  final bool confirmMatched;
  final String password;
  final String confirmPassword;

  const SignupNewPasswordCaption({
    super.key,
    required this.passwordValid,
    required this.confirmMatched,
    required this.password,
    required this.confirmPassword,
  });

  @override
  Widget build(BuildContext context) {
    if (password.isEmpty && confirmPassword.isEmpty) {
      return const SizedBox.shrink();
    }

    if (!passwordValid) {
      return Text(
        '비밀번호 형식을 확인해주세요.',
        style: context.caption.copyWith(color: Colors.red),
      );
    }

    if (confirmPassword.isNotEmpty && !confirmMatched) {
      return Text(
        '비밀번호가 일치하지 않습니다.',
        style: context.caption.copyWith(color: Colors.red),
      );
    }

    if (confirmMatched) {
      return Text(
        '비밀번호가 일치합니다.',
        style: context.caption.copyWith(color: Colors.green),
      );
    }

    return const SizedBox.shrink();
  }
}

class SignupNewCheckboxRow extends StatelessWidget {
  final bool value;
  final String title;
  final VoidCallback onTap;
  final Widget? trailing;

  const SignupNewCheckboxRow({
    super.key,
    required this.value,
    required this.title,
    required this.onTap,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: Checkbox(
              value: value,
              onChanged: (_) => onTap(),
              activeColor: AppColors.primary,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
          ),
          const SizedBox(width: 6),
          Expanded(child: Text(title, style: context.body)),
          if (trailing != null) ...[trailing!],
        ],
      ),
    );
  }
}

class SignupNewTermsSummaryList extends StatelessWidget {
  const SignupNewTermsSummaryList({super.key});

  @override
  Widget build(BuildContext context) {
    const items = [
      '모딩 서비스 이용약관',
      '개인정보 수집 및 이용안내',
      '개인정보 제3자 제공 안내',
      '구매·정산·클레임 정책',
      '전자세금계산서 및 증빙 처리 안내',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(
                '- $item',
                style: context.bodySmall.copyWith(color: AppColors.darkGrey),
              ),
            ),
          )
          .toList(),
    );
  }
}

class SignupNewAddressField extends StatelessWidget {
  final String zipCode;
  final String address;
  final VoidCallback onTap;

  const SignupNewAddressField({
    super.key,
    required this.zipCode,
    required this.address,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final hasAddress = zipCode.isNotEmpty && address.isNotEmpty;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('사업장주소', style: context.body),
        const SizedBox(height: 6),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 14),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.dividerGrey),
                  borderRadius: BorderRadius.circular(10),
                  color: zipCode.isNotEmpty ? AppColors.mediumGrey : null,
                ),
                child: Text(
                  hasAddress ? '($zipCode)' : '주소를 검색해주세요.',
                  style: context.body.copyWith(
                    color: hasAddress ? Colors.black : AppColors.darkGrey,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: onTap,
              child: SizedBox(
                width: 80,
                child: CustomButton(
                  title: '주소검색',
                  boxColor: AppColors.primary,
                  textColor: Colors.white,
                  textStyle: context.bodySmall.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  paddingVertical: 10,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        if (address.isNotEmpty)
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 14),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.dividerGrey),
              borderRadius: BorderRadius.circular(10),
              color: AppColors.mediumGrey,
            ),
            child: Text(
              hasAddress ? address : '주소를 검색해주세요.',
              style: context.body.copyWith(
                color: hasAddress ? Colors.black : AppColors.darkGrey,
              ),
            ),
          ),
      ],
    );
  }
}

class SignupNewSelectField extends StatelessWidget {
  final String label;
  final String? value;
  final String placeholder;
  final VoidCallback onTap;

  const SignupNewSelectField({
    super.key,
    required this.label,
    required this.value,
    required this.placeholder,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final hasValue = value != null && value!.isNotEmpty;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: context.body),
        const SizedBox(height: 6),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 44,
            padding: const EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.dividerGrey),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    hasValue ? value! : placeholder,
                    style: context.body.copyWith(
                      color: hasValue ? Colors.black : AppColors.darkGrey,
                    ),
                  ),
                ),
                const Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SignupNewBottomSheetList extends StatelessWidget {
  final List<String> labels;
  final ValueChanged<int> onTap;

  const SignupNewBottomSheetList({
    super.key,
    required this.labels,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.5,
      ),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: labels.length,
        separatorBuilder: (context, index) =>
            Divider(color: AppColors.dividerGrey, height: 1),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(labels[index], style: context.body),
            onTap: () {
              onTap(index);
              Navigator.of(context).pop();
            },
          );
        },
      ),
    );
  }
}

class SignupNewSingleImagePicker extends StatelessWidget {
  final String imagePath;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  const SignupNewSingleImagePicker({
    super.key,
    required this.imagePath,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    if (imagePath.isEmpty) {
      return GestureDetector(
        onTap: onAdd,
        child: Container(
          width: 96,
          height: 96,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.dividerGrey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(Icons.add_a_photo_outlined),
        ),
      );
    }

    return Column(
      children: [
        GestureDetector(
          onTap: () => _showImagePreview(context),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.file(
              File(imagePath),
              width: 96,
              height: 96,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: onAdd,
                child: CustomButton(
                  title: '다시 선택',
                  boxColor: AppColors.primary,
                  textColor: Colors.white,
                  textStyle: context.bodySmall.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  paddingVertical: 8,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: GestureDetector(
                onTap: onRemove,
                child: CustomButton(
                  title: '삭제',
                  boxColor: Colors.white,
                  textColor: AppColors.darkGrey,
                  borderColor: AppColors.dividerGrey,
                  textStyle: context.bodySmall.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  paddingVertical: 8,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _showImagePreview(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withValues(alpha: 0.82),
      builder: (dialogContext) {
        return Stack(
          children: [
            Positioned.fill(
              child: GestureDetector(
                onTap: () => Navigator.of(dialogContext).pop(),
                child: const ColoredBox(color: Colors.transparent),
              ),
            ),
            Center(
              child: InteractiveViewer(
                minScale: 0.8,
                maxScale: 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.file(File(imagePath), fit: BoxFit.contain),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(dialogContext).padding.top + 16,
              right: 20,
              child: GestureDetector(
                onTap: () => Navigator.of(dialogContext).pop(),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.45),
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: const Icon(Icons.close, color: Colors.white, size: 22),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
