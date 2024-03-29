import 'package:flutter/cupertino.dart';

String bananaAssetImageNameProvider(int numberOfBanana) {
  if (numberOfBanana == 2) {
    return 'assets/images/banana_2.png';
  } else if (numberOfBanana == 1) {
    return 'assets/images/banana_1.png';
  } else {
    return 'assets/images/banana_3.png';
  }
}

AssetImage bananaAssetImageProvider(int numberOfBanana) =>
    AssetImage(bananaAssetImageNameProvider(numberOfBanana));

class BananaIcon extends StatelessWidget {
  final int bananaCount;

  const BananaIcon({this.bananaCount});

  @override
  Widget build(BuildContext context) {
    return Image(image: bananaAssetImageProvider(bananaCount));
  }
}
