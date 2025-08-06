import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:one_uikit/foundation/colors/one_colors.dart';
import 'package:one_uikit/foundation/icons/one_icons.dart';

class OneImage extends StatelessWidget {
  const OneImage({
    super.key,
    this.imageUrl,
    this.width,
    this.maxHeight,
    this.height,
    this.radius = 0,
    this.borderRadius,
    this.withGradient = false,
    this.isAsset = false,
    this.isCached = false,
    this.isUser = false,
    this.isOpenable = false,
    this.showPlus = false,
    this.boxFit = BoxFit.cover,
    this.onTap,
  });

  final String? imageUrl;
  final double? width;
  final double? maxHeight;
  final double? height;
  final double radius;
  final BorderRadiusGeometry? borderRadius;
  final bool withGradient;
  final bool isAsset;
  final bool isCached;
  final bool isUser;
  final BoxFit boxFit;
  final bool isOpenable;
  final bool showPlus;
  final VoidCallback? onTap;

  // * Methods
  @override
  Widget build(BuildContext context) {
    final defaultImage =
        isUser ? 'assets/images/avatar_placeholder.png' : 'assets/images/image_placeholder.png';
    if (kIsWeb) {
      imageCache.clear();
    }

    return maxHeight != null
        ? ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: maxHeight!,
            ),
            child: _clickableBuild(context, defaultImage),
          )
        : _clickableBuild(context, defaultImage);
  }

  Widget _clickableBuild(BuildContext context, String defaultImage) {
    final clickable = (isOpenable || onTap != null) && imageUrl != null;

    return clickable
        ? MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                if (onTap != null) onTap!.call();
              },
              child: _imageBuild(context, defaultImage),
            ),
          )
        : _imageBuild(context, defaultImage);
  }

  ClipRRect _imageBuild(BuildContext context, String defaultImage) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(radius),
      child: Stack(
        children: [
          isAsset
              ? _assetImage(context, defaultImage)
              : isCached
                  ? _withCache(context, defaultImage)
                  : withoutCache(context, defaultImage),
          if (isUser)
            Container(
              width: width,
              height: height ?? width,
              decoration: BoxDecoration(
                borderRadius: borderRadius ?? BorderRadius.circular(radius),
                border: Border.all(
                  color: Colors.black.withValues(alpha: 0.08),
                  width: 0.75,
                ),
              ),
            ),
          if (withGradient)
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.5, 1],
                    colors: [
                      OneColors.black.withValues(alpha: 0.0),
                      OneColors.black,
                    ],
                  ),
                ),
              ),
            ),
          if (isOpenable && showPlus) ...[
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: OneColors.black.withValues(alpha: 0.5),
                ),
              ),
            ),
            SizedBox(
              width: width,
              height: height ?? width,
              child: Center(
                child: OneIcons.get(
                  GeneralIcon.plusCircle,
                  color: OneColors.white,
                ),
              ),
            )
          ],
        ],
      ),
    );
  }

  Widget _withCache(BuildContext context, String defaultImage) {
    if (imageUrl == null) return _defaultImage(context);

    return CachedNetworkImage(
      key: ValueKey(imageUrl),
      width: width,
      height: height ?? width,
      fit: boxFit,
      imageUrl: imageUrl ?? defaultImage,
      placeholder: (context, url) => const Center(
        child: CircularProgressIndicator(),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }

  Widget withoutCache(BuildContext context, String defaultImage) {
    if (imageUrl == null) return _defaultImage(context);

    return Image.network(
      imageUrl ?? defaultImage,
      key: ValueKey(imageUrl),
      width: width,
      height: height ?? width,
      fit: boxFit,
      errorBuilder: (context, error, stackTrace) => Container(
        decoration: BoxDecoration(
          color: context.color.background(BackgroundColorType.errorPrimary),
          borderRadius: borderRadius ?? BorderRadius.circular(radius),
        ),
        width: width,
        height: height ?? width,
        child: Center(
          child: OneIcons.get(
            AlertsFeedbackIcon.alertCircle,
            color: context.color.foreground(ForegroundColorType.errorPrimary),
          ),
        ),
      ),
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return SizedBox(
          width: width,
          height: height ?? width,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }

  Widget _assetImage(BuildContext context, String defaultImage) {
    if (imageUrl == null) return _defaultImage(context);

    return Image.asset(
      imageUrl ?? defaultImage,
      key: ValueKey(imageUrl),
      width: width,
      height: height ?? width,
      fit: boxFit,
    );
  }

  Widget _defaultImage(BuildContext context) {
    return Container(
      width: width,
      height: height ?? width,
      color: context.color.background(BackgroundColorType.quaternary),
      child: Center(
        child: OneIcons.get(
          isUser ? UsersIcon.user01 : ImagesIcon.image01,
          color: context.color.foreground(ForegroundColorType.tertiary),
        ),
      ),
    );
  }
}
