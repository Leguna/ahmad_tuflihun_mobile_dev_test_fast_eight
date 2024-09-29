import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/utils/string_utils.dart';
import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/profile/widgets/my_text_form_field.dart';
import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/profile/widgets/profile_stepper_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../core/index.dart';
import 'bloc/profile_cubit.dart';
import 'widgets/alert_dialog.dart';

class AlamatPribadiPage extends StatelessWidget {
  const AlamatPribadiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final addressMdl = context.select((ProfileCubit cubit) => cubit.addressMdl);
    final formKey = GlobalKey<FormState>();
    final TextEditingController nik =
        TextEditingController(text: addressMdl.nik);
    final ktpImage =
        context.select((ProfileCubit cubit) => cubit.addressMdl.imageKtp);
    final c = context.read<ProfileCubit>();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(0.0, 2.0),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(8.0),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return buildAlertDialog(context,
                                  onPressed: (ImageSource source) {
                                c.pickKtpImage(source);
                              });
                            },
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 8.0),
                                padding: const EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: AppColors.primaryColorLight,
                                ),
                                child: const Icon(
                                  Icons.credit_card,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Upload KTP',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    if (addressMdl.imageKtp?.isNotEmpty ??
                                        false)
                                      SizedBox(
                                        width: 100,
                                        child: Text(
                                          'KTP_${getFileName(addressMdl.imageKtp)}',
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: true,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    // Add Check
                                  ],
                                ),
                              ),
                              if (addressMdl.imageKtp?.isNotEmpty ?? false)
                                Container(
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(32.0),
                                    color: AppColors.green,
                                  ),
                                  child: const Icon(
                                    size: 16,
                                    Icons.check,
                                    color: Colors.white,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    MyTextFormField(
                      controller: nik,
                      label: 'NIK',
                      isRequired: true,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                    const SizedBox(height: 8),
                    // KTP Image
                    // Placeholder(
                    //   fallbackHeight: 200,
                    // ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              ProfileStepperButton(
                onPressed: (index) {
                  if (index == -1) {
                    context.read<ProfileCubit>().previousStep();
                    return;
                  }
                  if (!formKey.currentState!.validate()) {
                    return;
                  }
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Row(
                        children: [
                          Icon(Icons.check, color: Colors.white),
                          SizedBox(width: 8),
                          Text(Strings.dataTersimpan),
                        ],
                      ),
                      backgroundColor: Colors.green,
                    ),
                  );
                  context.read<ProfileCubit>().updateAddress(
                        nik: nik.text,
                        ktpImagePath: ktpImage ?? '',
                        ktp: 'KTP_${getFileName(ktpImage)}',
                      );
                  context.read<ProfileCubit>().nextStep();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
