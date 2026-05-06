import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/presentation/widgets/app_sliver_appbar.dart';
import 'package:moding_application/features/edit_my_info/presentation/providers/edit_my_info_viewmodel.dart';
import 'package:moding_application/features/edit_my_info/presentation/screens/sections/account_info_section.dart';
import 'package:moding_application/features/edit_my_info/presentation/screens/sections/business_info_section.dart';
import 'package:moding_application/features/edit_my_info/presentation/screens/sections/notification_setting_section.dart';
import 'package:moding_application/features/edit_my_info/presentation/screens/sections/refund_account_info_section.dart';

class EditMyInfoPage extends ConsumerStatefulWidget {
  const EditMyInfoPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditMyInfoPageState();
}

class _EditMyInfoPageState extends ConsumerState<EditMyInfoPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(editMyInfoViewModelProvider.notifier).getMaskingMyInfo();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(editMyInfoViewModelProvider);

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const AppSliverAppbar(title: "우리매장 정보 수정"),
            if (state.isLoading && state.maskingMyInfo == null)
              const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(child: CircularProgressIndicator()),
              )
            else ...[
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              const SliverToBoxAdapter(child: AccountInfoSection()),
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              const SliverToBoxAdapter(child: BusinessInfoSection()),
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              const SliverToBoxAdapter(child: RefundAccountInfoSection()),
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              const SliverToBoxAdapter(child: NotificationSettingSection()),
            ],
          ],
        ),
      ),
    );
  }
}
