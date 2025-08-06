import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class CarouselScreen extends StatefulWidget {
  const CarouselScreen({
    super.key,
    required this.images,
    required this.index,
  });

  final List<String> images;
  final String index;

  @override
  State<CarouselScreen> createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  // * Parameters
  late int _currentIndex;
  late PageController _controller;

  // * Init
  @override
  void initState() {
    _currentIndex = int.tryParse(widget.index) ?? 0;
    _controller = PageController(initialPage: int.tryParse(widget.index) ?? 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // * Build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OneColors.black,
      body: Stack(
        children: [
          // * Image carousel
          PhotoViewGallery.builder(
            scrollPhysics: const BouncingScrollPhysics(),
            builder: (BuildContext context, int index) {
              return PhotoViewGalleryPageOptions(
                errorBuilder: (context, error, stackTrace) => Center(
                  child: OneError(
                    error: error,
                    stackTrace: stackTrace,
                  ),
                ),
                imageProvider: NetworkImage(widget.images[index]),
                initialScale: PhotoViewComputedScale.contained,
                heroAttributes: PhotoViewHeroAttributes(tag: index),
              );
            },
            itemCount: widget.images.length,
            onPageChanged: (index) => setState(() => _currentIndex = index),
            loadingBuilder: (context, event) => Center(
              child: SizedBox(
                width: 20.0,
                height: 20.0,
                child: CircularProgressIndicator(
                  value: event == null
                      ? 0
                      : event.cumulativeBytesLoaded /
                          (event.expectedTotalBytes ?? 1).toInt(),
                ),
              ),
            ),
            pageController: _controller,
          ),
          // * Footer Indicators
          _indicators(),
          _closeButton(),
        ],
      ),
    );
  }

  Align _closeButton() {
    return Align(
      alignment: Alignment.topRight,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(OneSpace.s24),
          child: IconButton.filled(
            onPressed: () => Navigator.pop(context),
            icon: OneIcons.get(GeneralIcon.xClose, color: OneColors.white),
          ),
        ),
      ),
    );
  }

  Widget _indicators() {
    if (widget.images.length == 1) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.only(bottom: OneSpace.s24),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.images.length,
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: OneSpace.s4),
                width: OneSpace.s16,
                height: OneSpace.s4,
                decoration: BoxDecoration(
                  color: _currentIndex == index
                      ? Colors.white
                      : Colors.white.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(OneSpace.s4),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
