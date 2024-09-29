import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/index.dart';
import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/profile/alamat_pribadi_page.dart';
import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/profile/biodata_diri_page.dart';
import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/profile/bloc/profile_cubit.dart';
import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/profile/informasi_perusahaan_page.dart';
import 'package:flutter/material.dart';

import 'configs.dart';
import 'widgets/stepper_horizontal.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: MyAppBar(
        title: Strings.informasiPribadi,
        titleColor: AppColors.black,
        isTitleCenter: true,
        isShowLeading: true,
        leadingWidth: 60.0,
        backgroundColor: AppColors.white,
        leadingColor: AppColors.black,
        titleStyle: AppTextStyles.appBarTitle.copyWith(
          color: AppColors.black,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
      body: BlocConsumer<ProfileCubit, ProfileState>(
        listener: (context, state) {
          state.maybeWhen(
            stepperToggled: (index) {
              controller.jumpToPage(index);
            },
            submit: () {
              Navigator.pop(context);
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Stack(
            children: [
              Column(
                children: [
                  SingleChildScrollView(
                    child: StepperHorizontal(
                      currentStep: context.read<ProfileCubit>().currentStep,
                      stepTitles: listStepper,
                      onTap: (index) {
                        context.read<ProfileCubit>().toggleStepper(index);
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: controller,
                      onPageChanged: (index) {
                        context.read<ProfileCubit>().toggleStepper(index);
                      },
                      children: const [
                        BiodataDiriPage(),
                        AlamatPribadiPage(),
                        InformasiPerusahaanPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
