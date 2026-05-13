import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moding_application/core/presentation/widgets/modal/app_bottom_sheet.dart';
import 'package:moding_application/features/signup_new/presentation/providers/signup_new_viewmodel.dart';
import 'package:moding_application/features/signup_new/presentation/screens/widgets/signup_new_common_widgets.dart';

class SignupNewBusinessLicenseUploadSection extends ConsumerWidget {
  const SignupNewBusinessLicenseUploadSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupNewViewModelProvider);
    final notifier = ref.read(signupNewViewModelProvider.notifier);

    return SignupNewSectionBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SignupNewSectionTitle('사업자 등록증 업로드'),
          const SizedBox(height: 12),
          SignupNewSingleImagePicker(
            imagePath: state.businessLicenseImagePath,
            onAdd: () => _showImageSourceSheet(context, ref),
            onRemove: notifier.removeBusinessLicenseImage,
          ),
        ],
      ),
    );
  }

  void _showImageSourceSheet(BuildContext context, WidgetRef ref) {
    AppBottomSheet.show(
      context: context,
      title: '사업자 등록증 업로드',
      child: Column(
        children: [
          ListTile(
            title: const Text('사진 찍기'),
            onTap: () async {
              Navigator.of(context).pop();
              await ref
                  .read(signupNewViewModelProvider.notifier)
                  .pickBusinessLicenseImage(ImageSource.camera);
            },
          ),
          ListTile(
            title: const Text('앨범에서 선택'),
            onTap: () async {
              Navigator.of(context).pop();
              await ref
                  .read(signupNewViewModelProvider.notifier)
                  .pickBusinessLicenseImage(ImageSource.gallery);
            },
          ),
        ],
      ),
    );
  }
}
