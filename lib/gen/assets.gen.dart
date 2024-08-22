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

  /// File path: assets/images/Dashboard.svg
  String get dashboard => 'assets/images/Dashboard.svg';

  /// File path: assets/images/Frame.svg
  String get frame => 'assets/images/Frame.svg';

  /// File path: assets/images/Rectangle.png
  AssetGenImage get rectangle =>
      const AssetGenImage('assets/images/Rectangle.png');

  /// File path: assets/images/balance.svg
  String get balance => 'assets/images/balance.svg';

  /// File path: assets/images/comments.svg
  String get comments => 'assets/images/comments.svg';

  /// File path: assets/images/files.svg
  String get files => 'assets/images/files.svg';

  /// File path: assets/images/girl.png
  AssetGenImage get girl => const AssetGenImage('assets/images/girl.png');

  /// File path: assets/images/groups.svg
  String get groups => 'assets/images/groups.svg';

  /// File path: assets/images/home.svg
  String get home => 'assets/images/home.svg';

  /// File path: assets/images/mobile.png
  AssetGenImage get mobile => const AssetGenImage('assets/images/mobile.png');

  /// File path: assets/images/profile.svg
  String get profile => 'assets/images/profile.svg';

  /// File path: assets/images/sales_girl.png
  AssetGenImage get salesGirl =>
      const AssetGenImage('assets/images/sales_girl.png');

  /// File path: assets/images/settings.svg
  String get settings => 'assets/images/settings.svg';

  /// File path: assets/images/wallet_png.png
  AssetGenImage get walletPng =>
      const AssetGenImage('assets/images/wallet_png.png');

  /// List of all assets
  List<dynamic> get values => [
        dashboard,
        frame,
        rectangle,
        balance,
        comments,
        files,
        girl,
        groups,
        home,
        mobile,
        profile,
        salesGirl,
        settings,
        walletPng
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
