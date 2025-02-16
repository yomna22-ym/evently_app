import 'package:evently_app/core/asset_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isArabic = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
              color: Theme.of(context).colorScheme.primary, width: 4)),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isArabic = false;
              });
            },
            child: CircleAvatar(
              radius: 20,
              backgroundColor: !isArabic
                  ? Theme.of(context).colorScheme.primary
                  : Colors.transparent,
              child: SvgPicture.asset(
                AssetManager.sunIcon,
                height: 30,
                width: 30,
              ),
            ),
          ),
          Gap(16),
          InkWell(
            onTap: () {
              setState(() {
                isArabic = true;
              });
            },
            child: CircleAvatar(
              radius: 20,
              backgroundColor: isArabic
                  ? Theme.of(context).colorScheme.primary
                  : Colors.transparent,
              child: SvgPicture.asset(
                AssetManager.moonIcon,
                height: 30,
                width: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
