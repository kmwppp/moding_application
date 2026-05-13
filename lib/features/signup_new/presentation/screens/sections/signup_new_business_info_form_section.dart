import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kpostal/kpostal.dart';
import 'package:moding_application/core/presentation/widgets/address_search_screen.dart';
import 'package:moding_application/features/signup_new/presentation/providers/signup_new_viewmodel.dart';
import 'package:moding_application/features/signup_new/presentation/screens/widgets/signup_new_common_widgets.dart';

class SignupNewBusinessInfoFormSection extends ConsumerWidget {
  const SignupNewBusinessInfoFormSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupNewViewModelProvider);
    final notifier = ref.read(signupNewViewModelProvider.notifier);

    return SignupNewSectionBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SignupNewSectionTitle('사업자 정보 확인'),
          const SizedBox(height: 12),
          SignupNewLabeledTextField(
            label: '상호명',
            hint: '상호명을 입력해주세요.',
            onChanged: notifier.updateBusinessName,
          ),
          const SizedBox(height: 12),
          SignupNewLabeledTextField(
            label: '대표자명',
            hint: '대표자명을 입력해주세요.',
            onChanged: notifier.updateOwnerName,
          ),
          const SizedBox(height: 12),
          SignupNewAddressField(
            zipCode: state.zipCode,
            address: state.address,
            onTap: () => _openAddressSearch(context, ref),
          ),
          const SizedBox(height: 12),
          SignupNewLabeledTextField(
            label: '사업장 주소 상세',
            hint: '상세 주소를 입력해주세요.',
            onChanged: notifier.updateAddressDetail,
          ),
          const SizedBox(height: 12),
          SignupNewLabeledTextField(
            label: '법인번호',
            hint: '법인번호를 입력해주세요.',
            onChanged: notifier.updateCorporationNumber,
          ),
          const SizedBox(height: 12),
          SignupNewLabeledTextField(
            label: '업태',
            hint: '업태를 입력해주세요.',
            onChanged: notifier.updateIndustry,
          ),
          const SizedBox(height: 12),
          SignupNewLabeledTextField(
            label: '업종',
            hint: '업종을 입력해주세요.',
            onChanged: notifier.updateIndustryClass,
          ),
        ],
      ),
    );
  }

  Future<void> _openAddressSearch(BuildContext context, WidgetRef ref) async {
    final result = await Navigator.of(
      context,
      rootNavigator: true,
    ).push(MaterialPageRoute(builder: (_) => const AddressSearchScreen()));

    if (!context.mounted) return;

    if (result is Kpostal) {
      ref
          .read(signupNewViewModelProvider.notifier)
          .updateAddress(zipCode: result.postCode, address: result.address);
    }
  }
}
