/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesPngGen get png => const $AssetsImagesPngGen();
  $AssetsImagesSvgGen get svg => const $AssetsImagesSvgGen();
}

class $AssetsImagesPngGen {
  const $AssetsImagesPngGen();

  /// File path: assets/images/png/defult_off_cart.png
  AssetGenImage get defultOffCart =>
      const AssetGenImage('assets/images/png/defult_off_cart.png');

  $AssetsImagesPngHomeGen get home => const $AssetsImagesPngHomeGen();
  $AssetsImagesPngSignGen get sign => const $AssetsImagesPngSignGen();

  /// List of all assets
  List<AssetGenImage> get values => [defultOffCart];
}

class $AssetsImagesSvgGen {
  const $AssetsImagesSvgGen();

  /// File path: assets/images/svg/basket.svg
  String get basket => 'assets/images/svg/basket.svg';

  /// File path: assets/images/svg/defult_bg_off_market.svg
  String get defultBgOffMarket => 'assets/images/svg/defult_bg_off_market.svg';

  /// File path: assets/images/svg/menu.svg
  String get menu => 'assets/images/svg/menu.svg';

  /// File path: assets/images/svg/slider.svg
  String get slider => 'assets/images/svg/slider.svg';

  /// List of all assets
  List<String> get values => [basket, defultBgOffMarket, menu, slider];
}

class $AssetsImagesPngHomeGen {
  const $AssetsImagesPngHomeGen();

  /// File path: assets/images/png/home/Rectangle.png
  AssetGenImage get rectangle =>
      const AssetGenImage('assets/images/png/home/Rectangle.png');

  /// File path: assets/images/png/home/backSlider.png
  AssetGenImage get backSlider =>
      const AssetGenImage('assets/images/png/home/backSlider.png');

  /// File path: assets/images/png/home/category_bg.png
  AssetGenImage get categoryBg =>
      const AssetGenImage('assets/images/png/home/category_bg.png');

  /// File path: assets/images/png/home/category_item.png
  AssetGenImage get categoryItem =>
      const AssetGenImage('assets/images/png/home/category_item.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [rectangle, backSlider, categoryBg, categoryItem];
}

class $AssetsImagesPngSignGen {
  const $AssetsImagesPngSignGen();

  /// File path: assets/images/png/sign/background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/images/png/sign/background.png');

  /// List of all assets
  List<AssetGenImage> get values => [background];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
