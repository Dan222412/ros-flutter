import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String assetNameSvg = 'assets/subscribe.svg';

    SvgPicture imageFromAssetSvg =
        SvgPicture.asset(assetNameSvg, fit: BoxFit.cover);

    return Container(
      constraints: BoxConstraints.expand(height: double.infinity),
      child: imageFromAssetSvg,
    );
  }
}
