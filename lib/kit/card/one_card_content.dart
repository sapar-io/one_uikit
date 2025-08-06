import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

class OneCardContent extends StatelessWidget {
  const OneCardContent({
    super.key,
    required this.title,
    this.onImageTap,
    this.subtitle,
    this.child,
    this.leading,
    this.trailing,
    this.imageUrl,
    this.showImagePlaceholder = false,
    this.isCached = false,
    this.isCover = true,
    this.isUser = false,
    this.onTap,
    this.onDoubleTap,
    this.isBottomPadding = true,
    this.badges,
    this.isDescriptionSmall = false,
    this.isSelected = false,
  });

  final String title;
  final VoidCallback? onImageTap;
  final String? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final String? imageUrl;
  final bool isCached;
  final bool isCover;
  final bool isUser;
  final bool showImagePlaceholder;
  final Widget? child;
  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;
  final bool isBottomPadding;
  final List<BadgeViewModel>? badges;
  final bool isDescriptionSmall;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: isBottomPadding ? OneSpace.s12 : 0),
      child: OneCard(
        isSelected: isSelected,
        onTap: onTap,
        onDoubleTap: onDoubleTap,
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            if (leading != null)
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: leading!,
              ),
            if (imageUrl != null || showImagePlaceholder)
              Padding(
                padding: const EdgeInsetsDirectional.only(end: OneSpace.s12),
                child: GestureDetector(
                  onTap: onImageTap,
                  child: OneImage(
                    imageUrl: imageUrl,
                    width: 50,
                    height: 50,
                    radius: OneRadius.lg,
                    boxFit: isCover ? BoxFit.cover : BoxFit.contain,
                    isCached: isCached,
                    isUser: isUser,
                  ),
                ),
              ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  if (subtitle != null)
                    Padding(
                      padding: const EdgeInsets.only(top: OneSpace.s4),
                      child: Text(
                        subtitle!,
                        style: TextStyle(
                          color: context.color
                              .foreground(ForegroundColorType.tertiary),
                        ),
                        maxLines: isDescriptionSmall ? 2 : null,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  if (child != null)
                    Padding(
                      padding: const EdgeInsets.only(top: OneSpace.s8),
                      child: child!,
                    ),
                  if (badges != null)
                    Padding(
                      padding: const EdgeInsets.only(top: OneSpace.s8),
                      child: Row(
                        children: badges!
                            .map((badge) => Padding(
                                  padding:
                                      const EdgeInsets.only(right: OneSpace.s4),
                                  child: OneBadge(viewModel: badge),
                                ))
                            .toList(),
                      ),
                    ),
                ],
              ),
            ),
            if (trailing != null) trailing!,
          ],
        ),
      ),
    );
  }
}
