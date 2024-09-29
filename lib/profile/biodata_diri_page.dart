import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/utils/string_utils.dart';
import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/profile/bloc/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/strings.dart';
import 'widgets/my_text_form_field.dart';
import 'widgets/profile_stepper_button.dart';

class BiodataDiriPage extends StatelessWidget {
  const BiodataDiriPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final user = context.select((ProfileCubit cubit) => cubit.user);
    final TextEditingController nameController =
        TextEditingController(text: user.name);
    String? birthDate =
        context.select((ProfileCubit cubit) => cubit.user.birthDate);
    DateTime? selectedDate = getDateTime(birthDate);
    final TextEditingController birthDateController =
        TextEditingController(text: birthDate);
    String? selectedDropdownValue = context
        .select((ProfileCubit cubit) => cubit.user.gender ?? 'Laki-laki');
    if (selectedDropdownValue == null || selectedDropdownValue.isEmpty) {
      selectedDropdownValue = 'Laki-laki';
    }
    final List<String> genderList = ['Pilih','Laki-laki', 'Perempuan'];

    final c = context.read<ProfileCubit>();
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyTextFormField(
                        controller: nameController,
                        label: 'NAMA LENGKAP',
                        isRequired: true,
                      ),
                      const SizedBox(height: 8),
                      MyTextFormField(
                        controller: birthDateController,
                        suffixIcon: Icons.calendar_today,
                        label: 'TANGGAL LAHIR',
                        isRequired: true,
                        readOnly: true,
                        onTap: () async {
                          final DateTime? picked = await showDatePicker(
                            context: context,
                            initialDate: selectedDate ?? DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                          );
                          if (picked != null && picked != selectedDate) {
                            selectedDate = picked;
                            birthDateController.text =
                                getFormattedDate(selectedDate!);
                          }
                        },
                      ),
                      const SizedBox(height: 8),
                      // Gender Dropdown
                      const Row(
                        children: <Widget>[
                            Text('*', style: TextStyle(color: Colors.red)),
                          SizedBox(width: 4),
                          Text(
                            'JENIS KELAMIN',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      DropdownButtonFormField<String>(
                        dropdownColor: Colors.white,
                        value: selectedDropdownValue,
                        decoration: const InputDecoration(
                          labelText: 'JENIS KELAMIN',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                        ),
                        items: genderList
                            .map(
                              (String value) => DropdownMenuItem<String>(
                                value: value == 'Pilih' ? null : value,
                                child: Text(value),
                              ),
                            )
                            .toList(),
                        onChanged: (String? value) {
                          selectedDropdownValue = value;
                        },
                        validator: (String? value) {
                          if (value == null || value.isEmpty || value == 'Pilih') {
                            return 'Jenis Kelamin harus diisi';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 8),
                      MyTextFormField(
                        readOnly: true,
                        disabled: true,
                        label: 'EMAIL',
                        isRequired: true,
                        controller: TextEditingController(
                            text: 'email@email.com (Disabled)'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                ProfileStepperButton(
                  onPressed: (index) {

                    if (!formKey.currentState!.validate()) {
                      return;
                    }
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Row(
                          children: [
                            const Icon(Icons.check, color: Colors.white),
                            const SizedBox(width: 8),
                            Text(Strings.dataTersimpan),
                          ],
                        ),
                        backgroundColor: Colors.green,
                      ),
                    );
                    c.saveProfile(
                      name: nameController.text,
                      birthDate: selectedDate,
                      gender: selectedDropdownValue??'',
                    );
                    c.nextStep();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
