import 'package:flutter/material.dart';
import 'package:ui_pack/ui_pack.dart';

class ExampleView extends StatelessWidget {
  const ExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pack UI'),
        backgroundColor: AppColors.primary,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p20,
          horizontal: AppPadding.p14,
        ),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PackText.regular(text: 'Design System'),
              verticalSpaceSmall,
              const Divider(),
              verticalSpaceSmall,
              ...buttonWidgets,
              const Divider(
                height: 1,
                thickness: 1,
              ),
              verticalSpaceSmall,
              ...textWidgets,
              verticalSpaceSmall,
              const Divider(
                height: 1,
                thickness: 1,
              ),
              verticalSpaceSmall,
              ...inputFields,
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> get textWidgets => [
        PackText.regular(text: 'Text Styles'),
        verticalSpaceMedium,
        PackText.light(text: 'Light Style'),
        verticalSpaceMedium,
        PackText.regular(text: 'Regular Style'),
        verticalSpaceMedium,
        PackText.semiBold(text: 'Semi Bold Style'),
        verticalSpaceMedium,
        PackText.bold(text: 'Bold Style'),
      ];

  List<Widget> get buttonWidgets => [
        PackText.regular(text: 'Buttons'),
        verticalSpaceMedium,
        PackText.regular(text: 'Normal'),
        verticalSpaceSmall,
        PackButton(title: 'SIGN IN'),
        verticalSpaceSmall,
        PackText.regular(text: 'Disabled'),
        verticalSpaceSmall,
        PackButton(
          title: 'SIGN IN',
          disabled: true,
        ),
        verticalSpaceSmall,
        PackText.regular(text: 'Busy'),
        verticalSpaceSmall,
        PackButton(
          title: 'SIGN IN',
          busy: true,
        ),
        verticalSpaceSmall,
        PackText.regular(text: 'Outline'),
        verticalSpaceSmall,
        PackButton(
            title: 'LEADING', icon: Icons.add_business_rounded, outline: true),
        verticalSpaceMedium,
      ];

  List<Widget> get inputFields => [
        PackText.regular(text: 'Input Field'),
        verticalSpaceSmall,
        PackText.regular(text: 'Normal'),
        verticalSpaceSmall,
        PackInputField(
          controller: TextEditingController(),
          placeHolder: 'Enter Password',
        ),
        verticalSpaceSmall,
        PackText.regular(text: 'Leading Icon'),
        verticalSpaceSmall,
        PackInputField(
          controller: TextEditingController(),
          placeHolder: 'Enter Password',
          leadingIcon: Icons.reset_tv,
        ),
        verticalSpaceSmall,
        PackText.regular(text: 'Trailing Icon'),
        verticalSpaceSmall,
        PackInputField(
          controller: TextEditingController(),
          placeHolder: 'Enter Password',
          trailingIcon: Icons.clear_outlined,
        ),
      ];
}
