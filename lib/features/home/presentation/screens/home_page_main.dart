import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/home/presentation/providers/home_viewmodel.dart';
import 'package:moding_application/features/home/presentation/screens/widgets/auto_banner.dart';
import 'package:moding_application/features/home/presentation/screens/widgets/home_appbar.dart';
import 'package:moding_application/features/home/presentation/screens/widgets/sections/home_company_info_section.dart';
import 'package:moding_application/features/home/presentation/screens/widgets/sections/home_sections_builder.dart';

class HomePageMain extends ConsumerWidget {
  const HomePageMain({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeViewModelProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // 상단 앱바 영역
          const HomeSliverAppbar(),

          // 배너 영역
          const SliverToBoxAdapter(child: AutoBanner()),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),

          // 홈 페이지 구성 영역
          state.when(
            data: (homeState) => HomeSectionsBuilder(homeState: homeState),

            loading: () => const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(40),
                child: Center(child: CircularProgressIndicator()),
              ),
            ),

            error: (err, stack) =>
                SliverToBoxAdapter(child: Text(err.toString())),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 50)),

          const SliverToBoxAdapter(child: HomeCompanyInfoSection()),
        ],
      ),
    );
  }
}
