part of 'bloc.dart';

enum HomeStatus { initial, loading, success, moreLoading, moreSuccess, failure }

class HomeState extends Equatable {
  const HomeState({
    this.status = HomeStatus.initial,
    required this.query,
    this.page = 1,
    this.hasMoreData = true,
    this.images,
  });

  final HomeStatus status;
  final String query;
  final int page;
  final bool hasMoreData;
  final List<Image>? images;

  HomeState copyWith({
    HomeStatus? status,
    String? query,
    int? page,
    bool? hasMoreData,
    List<Image>? images,
  }) {
    final newImages = this.images ?? <Image>[];
    if (images != null) {
      newImages.addAll(images);
    }
    return HomeState(
      status: status ?? this.status,
      query: query ?? this.query,
      page: page ?? this.page,
      hasMoreData: hasMoreData ?? this.hasMoreData,
      images: newImages,
    );
  }

  @override
  List<Object?> get props => [status, page, hasMoreData, images];
}
