import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// CachedNetworkImageを使って、CircleAvatarを作成する
class CircleCachedNetworkImage extends StatelessWidget {
  const CircleCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.size = 40,
  });

  /// HTTPリクエストを有効にするか
  static bool enableHttpRequests = true;

  /// URL
  final String imageUrl;

  /// 大きさ, WidthとHeightが同じ
  final double size;

  @override
  Widget build(BuildContext context) {
    if (enableHttpRequests) {
      return CircleAvatar(
        backgroundColor: Colors.grey,
        radius: size / 2,
      );
    } else {
      return CachedNetworkImage(
        imageUrl: imageUrl,
        width: size,
        height: size,
        imageBuilder: (context, imageProvider) {
          return CircleAvatar(
            backgroundImage: imageProvider,
            backgroundColor: Colors.transparent,
          );
        },
      );
    }
  }
}
