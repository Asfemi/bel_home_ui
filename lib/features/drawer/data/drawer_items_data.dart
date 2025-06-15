import 'package:bel_home_ui/features/drawer/domain/model/drawer_item.dart';
import 'package:bel_home_ui/gen/assets.gen.dart';

final List<DrawerItem> accountItems = [
  DrawerItem(title: 'Your Profile', icon: Assets.icons.profileTick),
  DrawerItem(title: 'Account Verification', icon: Assets.icons.verify),
  DrawerItem(title: 'Inbox', icon: Assets.icons.mail),
  DrawerItem(title: 'Notifications', icon: Assets.icons.notification),
  DrawerItem(title: 'Settings', icon: Assets.icons.setting3),
];

final List<DrawerItem> financeItems = [
  DrawerItem(title: 'Transaction Limits', icon: Assets.icons.transactionMinus),
  DrawerItem(title: 'Transaction History', icon: Assets.icons.timer),
  DrawerItem(title: 'Recipients', icon: Assets.icons.profile),
];

final List<DrawerItem> securityItems = [
  DrawerItem(title: 'Change Password', icon: Assets.icons.passwordCheck),
  DrawerItem(title: 'Login Security OTP', icon: Assets.icons.login),
  DrawerItem(title: 'KYC', icon: Assets.icons.scanner),
  DrawerItem(
    title: 'Fingerprint Login',
    icon: Assets.icons.fingerCricle,
    hasSwitch: true,
  ),
  DrawerItem(
    title: 'Two Factor Authentication',
    icon: Assets.icons.shieldSecurity,
  ),
  DrawerItem(title: 'Change your pin', icon: Assets.icons.unlock),
  DrawerItem(title: 'Devices and sessions', icon: Assets.icons.devices),
];

final List<DrawerItem> othersItems = [
  DrawerItem(title: 'Get help', icon: Assets.icons.a24Support),
  DrawerItem(title: 'Our rates', icon: Assets.icons.arrowSwapHorizontal),
  DrawerItem(title: 'App Language', icon: Assets.icons.global),
  DrawerItem(title: 'Affiliate and Referrals', icon: Assets.icons.share),
];

final DrawerItem logoutItem = DrawerItem(
  title: 'Log out',
  icon: Assets.icons.logout,
);
