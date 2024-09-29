import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/models/user/user_mdl.dart';
import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/services/local_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/index.dart';
import '../../core/models/address/address_mdl.dart';
import '../../core/models/company/company_mdl.dart';
import '../../core/utils/string_utils.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

const String profileKey = 'profile';
const String addressKey = 'address';
const String companyKey = 'company';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState.initial()) {
    db.getString(profileKey).then((value) {
      if (value != null) {
        user = UserMdl.fromJsonString(value);
        emit(ProfileState.profileLoaded(user));
      }
    });
    db.getString(addressKey).then((value) {
      if (value != null) {
        addressMdl = AddressMdl.fromJsonString(value);
        emit(ProfileState.addressLoaded(addressMdl));
      }
    });
    db.getString(companyKey).then((value) {
      if (value != null) {
        companyMdl = CompanyMdl.fromJsonString(value);
        emit(ProfileState.companyLoaded(companyMdl));
      }
    });
  }

  final db = getIt<LocalDatabase>();
  var user = const UserMdl();
  var addressMdl = const AddressMdl();
  var companyMdl = const CompanyMdl();
  var currentStep = 0;

  final PageController controller = PageController(initialPage: 0);

  void toggleStepper(int index) {
    currentStep = index;
    emit(ProfileState.stepperToggled(index));
  }

  void nextStep() {
    if (currentStep == 2) return;
    currentStep++;
    emit(ProfileState.stepperToggled(currentStep));
  }

  void previousStep() {
    if (currentStep == 0) return;
    currentStep--;
    emit(ProfileState.stepperToggled(currentStep));
  }

  void submit() {
    emit(const ProfileState.submit());
    resetState();
  }

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      await saveImage(pickedFile.path);
    }
  }

  Future<void> pickKtpImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      await saveKtpImage(pickedFile.path);
    }
  }

  Future<void> saveKtpImage(String path) async {
    var addressMdl = await db.getString(addressKey);
    if (addressMdl != null) {
      this.addressMdl = AddressMdl.fromJsonString(addressMdl)
          .copyWith(imageKtp: path, ktp: getFileName(path));
      await db.setString(
        addressKey,
        this.addressMdl.toJsonString(),
      );
    } else {
      this.addressMdl = AddressMdl(imageKtp: path);
      await db.setString(addressKey, this.addressMdl.toJsonString());
    }
    emit(ProfileState.ktpImagePicked(path));
  }

  Future<void> saveImage(String path) async {
    var userMdl = await db.getString(profileKey);
    if (userMdl != null) {
      user = UserMdl.fromJsonString(userMdl).copyWith(image: path);
      await db.setString(profileKey, user.toJsonString());
    } else {
      user = UserMdl(image: path);
      await db.setString(profileKey, user.toJsonString());
    }
    emit(ProfileState.photoProfilePicked(path));
  }

  Future<void> saveProfile({
    String name = '',
    DateTime? birthDate,
    String gender = '',
    String phone = '',
    String education = '',
    String email = '',
  }) async {
    final userMdl = await db.getString(profileKey);
    if (userMdl != null) {
      user = UserMdl.fromJsonString(userMdl);
    }
    user = user.copyWith(
      name: name,
      birthDate: getFormattedDate(birthDate!),
      gender: gender,
      phone: phone,
      education: education,
      email: email,
    );
    await db.setString(profileKey, user.toJsonString());
    emit(ProfileState.profileLoaded(user));
  }

  Future<void> saveBio(UserMdl user) async {}

  void resetState() {
    currentStep = 0;
    emit(const ProfileState.initial());
  }

  void updateAddress({
    String nik = '',
    String ktpImagePath = '',
    String ktp = '',
  }) {
    addressMdl = addressMdl.copyWith(
      nik: nik,
      imageKtp: ktpImagePath,
      ktp: ktp,
    );
    db.setString(addressKey, addressMdl.toJsonString());
    emit(ProfileState.addressLoaded(addressMdl));
  }
}
