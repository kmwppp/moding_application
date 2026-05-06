import 'package:moding_application/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:moding_application/features/profile/presentation/providers/profile_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_viewmodel.g.dart';

@Riverpod()
class ProfileViewModel extends _$ProfileViewModel {
  @override
  ProfileState build() {
    _init();
    return ProfileState.initial();
  }

  Future<void> _init() async {
    await getProfileSummary();
  }

  Future<void> getProfileSummary() async {
    try {
      final repository = ref.read(profileRepositoryProvider);
      final profileSummary = await repository.getProfileSummary();
      state = state.copyWith(profileSummary: profileSummary);
    } catch (e) {
      print(e);
    }
  }
}
