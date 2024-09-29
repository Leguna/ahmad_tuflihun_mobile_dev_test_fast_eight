part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;

  const factory ProfileState.photoProfilePicked(String path) =
      _PhotoProfilePicked;

  const factory ProfileState.loading() = _Loading;

  const factory ProfileState.error(String message) = _Error;

  const factory ProfileState.stepperToggled(int index) = _StepperToggled;

  const factory ProfileState.submit() = _Submit;

  const factory ProfileState.profileLoaded(UserMdl user) = _ProfileLoaded;

  const factory ProfileState.profileUpdated(UserMdl user) = _ProfileUpdated;

  const factory ProfileState.addressLoaded(AddressMdl address) = _AddressLoaded;

  const factory ProfileState.addressUpdated(AddressMdl address) =
      _AddressUpdated;

  const factory ProfileState.companyLoaded(CompanyMdl company) = _CompanyLoaded;

  const factory ProfileState.companyUpdated(CompanyMdl company) =
      _CompanyUpdated;
}
