import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/models/user/user_mdl.dart';
import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/services/local_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/index.dart';
import '../../core/models/address/address_mdl.dart';
import '../../core/models/company/company_mdl.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

const String profileKey = 'profile';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState.initial()) {
    db.getString(profileKey).then((value) {
      if (value != null) {
        user = UserMdl.fromJsonString(value);
        emit(ProfileState.profileLoaded(user));
      }
    });
  }

  final db = getIt<LocalDatabase>();
  UserMdl user = const UserMdl();

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
  }

  void pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      await saveImage(pickedFile.path);
    }
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

  Future<void> saveProfile(UserMdl user) async {
    await db.setString(profileKey, user.toJsonString());
    emit(ProfileState.profileLoaded(user));
  }

  Future<void> saveBio(UserMdl user) async {}
}
