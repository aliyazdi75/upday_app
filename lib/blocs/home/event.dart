part of 'bloc.dart';

@immutable
abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class GetImagesRequested extends HomeEvent {
  const GetImagesRequested();
}

class GetMoreImagesRequested extends HomeEvent {
  const GetMoreImagesRequested();
}
