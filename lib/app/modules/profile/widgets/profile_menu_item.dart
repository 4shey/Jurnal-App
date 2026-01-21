import 'package:flutter/material.dart';
import 'package:jurnal_app/app/core/constant/app_colors.dart';
import 'package:jurnal_app/app/core/constant/app_text_styles.dart';

class ProfileMenuCard extends StatelessWidget {
  final VoidCallback? onDetail;
  final VoidCallback? onEdit;
  final VoidCallback? onPassword;
  final VoidCallback? onLogout;

  const ProfileMenuCard({
    super.key,
    this.onDetail,
    this.onEdit,
    this.onPassword,
    this.onLogout,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          _item(Icons.person_outline, 'Detail Profile', onDetail),
          _divider(),
          _item(Icons.edit_outlined, 'Ubah Profile', onEdit),
          _divider(),
          _item(Icons.lock_outline, 'Ubah Kata Sandi', onPassword),
          _divider(),
          _item(Icons.logout, 'Keluar', onLogout, isLogout: true),
        ],
      ),
    );
  }

  Widget _item(
    IconData icon,
    String title,
    VoidCallback? onTap, {
    bool isLogout = false,
  }) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        color: isLogout ? Colors.red : appMain,
      ),
      title: Text(
        title,
        style: AppTextStyles.black.copyWith(
          fontSize: 14,
          color: isLogout ? Colors.red : Colors.black87,
        ),
      ),
      trailing: const Icon(Icons.chevron_right),
    );
  }

  Widget _divider() {
    return const Divider(height: 1);
  }
}
