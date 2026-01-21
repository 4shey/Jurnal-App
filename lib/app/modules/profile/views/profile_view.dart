import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jurnal_app/app/core/constant/app_colors.dart';
import 'package:jurnal_app/app/modules/profile/widgets/profile_detail_card.dart';
import 'package:jurnal_app/app/modules/profile/widgets/profile_header_painter.dart';
import 'package:jurnal_app/app/modules/profile/widgets/profile_menu_item.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appMain,
      body: SafeArea(
        top: false,
        bottom: true,
        left: false,
        right: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  // HEADER BG
                  SizedBox(
                    height: 154,
                    width: double.infinity,
                    child: CustomPaint(painter: ProfileHeaderPainter()),
                  ),

                  // AVATAR (NIMPA HEADER)
                  Positioned(
                    bottom: -75,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 58, // border
                          backgroundColor: appMain, // warna border
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                              'assets/images/amba.jpg',
                            ),
                          ),
                        ),

                        SizedBox(height: 8),
                        Text(
                          'Masamba S.Pd',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 100), // PENTING (ruang overlap)

              ProfileDetailCard(
                onDetail: () {},
              ),
              // CARD MENU
              ProfileMenuCard(
                onDetail: () {},
                onEdit: () {},
                onPassword: () {},
                onLogout: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
