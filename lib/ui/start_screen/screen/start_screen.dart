import 'package:easy_localization/easy_localization.dart';
import 'package:evently_app/core/asset_manager.dart';
import 'package:evently_app/core/reusable_components/custom_button.dart';
import 'package:evently_app/core/strings_manager.dart';
import 'package:evently_app/ui/start_screen/widget/language_toggle.dart';
import 'package:evently_app/ui/start_screen/widget/theme_toggle.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class StartScreen extends StatelessWidget {
  static const String routeName = 'start';

  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(AssetManager.logo),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 28, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Align(
                          alignment: Alignment.center,
                          child: Image.asset(AssetManager.creative))),
                  Text(StringsManager.personexp.tr(),
                      style: Theme.of(context).textTheme.titleMedium),
                  Gap(28),
                  Text(
                    StringsManager.startdesc.tr(),
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Gap(28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        StringsManager.lang.tr(),
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.w500),
                      ),
                      LanguageToggle()
                    ],
                  ),
                  Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        StringsManager.theme.tr(),
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.w500),
                      ),
                      ThemeToggle()
                    ],
                  ),
                  Gap(28),
                ],
              ),
            ),
            CustomButton(
              title: StringsManager.letsStart.tr(),
              onPressed: (){
                
              },
            )
          ],
        ),
      ),
    );
  }
}
