part of 'bloc.dart';

@immutable
abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class GetMoreImagesRequested extends HomeEvent {
  const GetMoreImagesRequested();
}
