import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

extension BuildContextExtension on BuildContext {
  void showSnackBar({
    required String message,
    bool isError = false,
    Duration? duration,
    VoidCallback? onAction,
    String? actionLabel,
  }) {
    // Используем Overlay для показа поверх всего, включая модальные окна
    final overlay = Overlay.of(this, rootOverlay: true);
    late OverlayEntry overlayEntry;

    overlayEntry = OverlayEntry(
      builder:
          (context) => _OverlaySnackBar(
            message: message,
            isError: isError,
            duration: duration ?? const Duration(seconds: 4),
            onAction: onAction,
            actionLabel: actionLabel,
            onDismiss: () {
              overlayEntry.remove();
            },
          ),
    );

    overlay.insert(overlayEntry);

    // Автоматически убираем через duration
    Future.delayed(duration ?? const Duration(seconds: 4), () {
      if (overlayEntry.mounted) {
        overlayEntry.remove();
      }
    });
  }
}

class _OverlaySnackBar extends StatefulWidget {
  final String message;
  final bool isError;
  final Duration duration;
  final VoidCallback? onAction;
  final String? actionLabel;
  final VoidCallback onDismiss;

  const _OverlaySnackBar({
    required this.message,
    required this.isError,
    required this.duration,
    required this.onDismiss,
    this.onAction,
    this.actionLabel,
  });

  @override
  State<_OverlaySnackBar> createState() => _OverlaySnackBarState();
}

class _OverlaySnackBarState extends State<_OverlaySnackBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();

    // Начинаем скрывать за 300ms до конца
    Future.delayed(
      widget.duration - const Duration(milliseconds: 300),
      () async {
        if (mounted) {
          await _controller.reverse();
          if (mounted) {
            widget.onDismiss();
          }
        }
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 16,
      right: 16,
      bottom: 16,
      child: SlideTransition(
        position: _slideAnimation,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color:
                  widget.isError
                      ? context.color.background(
                        BackgroundColorType.errorPrimary,
                      )
                      : context.color.background(BackgroundColorType.tertiary),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.message,
                    style: context.typography.textMdRegular.copyWith(
                      color:
                          widget.isError
                              ? context.color.text(TextColorType.errorPrimary)
                              : context.color.text(TextColorType.primary),
                    ),
                  ),
                ),
                if (widget.onAction != null && widget.actionLabel != null) ...[
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: widget.onAction,
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      widget.actionLabel!,
                      style: context.typography.textSmMedium.copyWith(
                        color: context.color.foreground(
                          ForegroundColorType.brandPrimary,
                        ),
                      ),
                    ),
                  ),
                ],
                const SizedBox(width: 8),
                InkWell(
                  onTap: () async {
                    await _controller.reverse();
                    widget.onDismiss();
                  },
                  child: Icon(
                    Icons.close,
                    size: 20,
                    color:
                        widget.isError
                            ? context.color.text(TextColorType.errorPrimary)
                            : context.color.text(TextColorType.primary),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Оставляем старую версию для обратной совместимости (если нужно)
extension BuildContextLegacyExtension on BuildContext {
  void showSnackBarLegacy({
    required String message,
    bool isError = false,
    Duration? duration,
    VoidCallback? onAction,
    String? actionLabel,
    bool useRootNavigator = true,
  }) {
    final scaffoldMessenger =
        useRootNavigator
            ? ScaffoldMessenger.of(
              Navigator.of(this, rootNavigator: true).context,
            )
            : ScaffoldMessenger.of(this);

    scaffoldMessenger.showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: typography.textMdRegular.copyWith(
            color:
                isError
                    ? color.text(TextColorType.errorPrimary)
                    : color.text(TextColorType.primary),
          ),
        ),
        backgroundColor:
            isError
                ? color.background(BackgroundColorType.errorPrimary)
                : color.background(BackgroundColorType.tertiary),
        duration: duration ?? const Duration(seconds: 4),
        behavior: SnackBarBehavior.floating,
        showCloseIcon: true,
        action:
            onAction != null && actionLabel != null
                ? SnackBarAction(
                  label: actionLabel,
                  onPressed: onAction,
                  textColor: color.foreground(ForegroundColorType.brandPrimary),
                )
                : null,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
