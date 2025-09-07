import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:one_uikit/one_uikit.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    super.key,
    required this.value,
    required this.data,
    this.onEmpty,
    this.empty,
    this.loader,
    this.isScaffold = false,
    this.isThin = true,
    this.title,
    this.onError,
  });
  final AsyncValue<T?> value;
  final Widget Function(T) data;
  final Widget? empty;
  final Function()? onEmpty;
  final Widget? loader;
  final bool isScaffold;
  final bool isThin;
  final String? title;
  final Widget Function(dynamic)? onError;

  @override
  Widget build(BuildContext context) {
    return switch (value) {
      AsyncData(:final value?) => data(value),
      AsyncData() => _buildEmptyWidget(context),
      AsyncError(:final error) => _buildErrorWidget(context, error),
      AsyncLoading() => _buildLoaderWidget(context),
      _ => _buildErrorWidget(context, 'Неизвестное состояние'),
    };
  }

  Widget _buildEmptyWidget(BuildContext context) {
    if (onEmpty != null) {
      return onEmpty!();
    }
    return empty ?? _buildErrorWidget(context, 'Данных нет $value');
  }

  Widget _buildErrorWidget(BuildContext context, dynamic error) {
    if (onError != null) {
      return onError!(error);
    }
    final errorWidget = SingleChildScrollView(
      child: OneError(error: error),
    );

    return isScaffold
        ? Scaffold(
            appBar: context.appBar('Ошибка', isThin: isThin),
            body: Center(child: errorWidget),
          )
        : errorWidget;
  }

  Widget _buildLoaderWidget(BuildContext context) {
    final loaderWidget = loader ?? const OneLoader();
    final loadingTitle = title ?? 'Загрузка...';

    return isScaffold
        ? Scaffold(
            appBar: context.appBar(loadingTitle, isThin: isThin),
            body: Center(child: loaderWidget),
          )
        : loaderWidget;
  }
}
