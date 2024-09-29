part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;

  const factory ProfileState.photoProfilePicked(String path) =
      _PhotoProfilePicked;

  const factory ProfileState.profileSaved() = _ProfileSaved;

  const factory ProfileState.addressSaved() = _AddressSaved;

  const factory ProfileState.loading() = _Loading;

  const factory ProfileState.error(String message) = _Error;

  const factory ProfileState.stepperToggled(int index) = _StepperToggled;

  const factory ProfileState.submit() = _Submit;

  const factory ProfileState.profileLoaded(UserMdl user) = _ProfileLoaded;
}
