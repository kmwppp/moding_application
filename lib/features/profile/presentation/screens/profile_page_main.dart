import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/presentation/widgets/app_divider.dart';
import 'package:moding_application/core/presentation/widgets/loading_indicator.dart';
import 'package:moding_application/features/profile/presentation/providers/profile_viewmodel.dart';
import 'package:moding_application/features/profile/presentation/screens/sections/my_info_management_section.dart';
import 'package:moding_application/features/profile/presentation/screens/sections/order_and_delivery_section.dart';
import 'package:moding_application/features/profile/presentation/screens/sections/support_section.dart';
import 'package:moding_application/features/profile/presentation/screens/sections/top_profile_section.dart';
import 'package:moding_application/features/profile/presentation/screens/widgets/profile_sliver_appbar.dart';

class ProfilePageMain extends ConsumerWidget {
  const ProfilePageMain({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileViewModelProvider);
    final summary = state.profileSummary;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const ProfileSliverAppbar(),
          if (summary == null)
            const SliverFillRemaining(
              hasScrollBody: false,
              child: LoadingIndicator(),
            )
          else ...[
            const SliverToBoxAdapter(child: TopProfileSection()),
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(child: OrderAndDeliverySection()),
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(child: AppDivider()),
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
            const SliverToBoxAdapter(child: MyInfoManagementSection()),
            SliverToBoxAdapter(child: AppDivider()),
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(child: SupportSection()),
          ],
        ],
      ),
    );
  }
}
