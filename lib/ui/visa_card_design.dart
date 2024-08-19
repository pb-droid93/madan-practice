import 'package:flutter/material.dart';
import 'package:practice_flutter/utils/colors.dart';
import 'package:practice_flutter/widget/cutom_appbar.dart';

import 'content.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: CustomAppbar(
          titleText: 'Visa Card View',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
              decoration: BoxDecoration(
                  boxShadow: AppColors.shadows,
                  borderRadius: BorderRadius.circular(12)),
              margin: const EdgeInsets.all(6),
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: const Content()),
        ),
      ),
    );
  }
}
