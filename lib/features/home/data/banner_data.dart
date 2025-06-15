import 'package:bel_home_ui/app/view/styles/app_colors.dart';
import 'package:bel_home_ui/gen/assets.gen.dart';

class BannerData {
  static List<Map<String, dynamic>> get banners => [
    {
      'buttonText': 'Refer and Earn!',
      'pitchText': 'Earn \$5 on every referral!',
      'imagePath': Assets.images.refer.path,
    },
    {
      'buttonText': 'Explore',
      'pitchText':
          'Pay bills & airtime, buy gift cards,\nget latest updates and more...',
      'imagePath': Assets.images.comingsoon.path,
      'withIcon': true,
      'iconPath': Assets.icons.swap3,
      'buttonColor': AppColors.secoundaryColour,
      'buttonTextColor': AppColors.primaryColour,
    },
  ];
}
