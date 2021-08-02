part of 'bloc.dart';

enum HomeStatus { initial, loading, success, moreLoading, moreSuccess, failure }

class HomeState extends Equatable {
  const HomeState({
    this.status = HomeStatus.initial,
    this.page = 1,
    this.images = const <Image>[],
  });

  final HomeStatus status;
  final int page;
  final List<Image> images;

  HomeState copyWith({
    HomeStatus? status,
    int? page,
    List<Image>? images,
  }) {
    return HomeState(
      status: status ?? this.status,
      page: page ?? this.page,
      images: images ?? this.images,
    );
  }

  @override
  List<Object?> get props => [status, page, images];
}
