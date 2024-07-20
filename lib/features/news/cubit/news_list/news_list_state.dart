part of 'news_list_cubit.dart';

sealed class NewsListState extends Equatable {
  const NewsListState();

  @override
  List<Object> get props => [];
}

final class NewsListInitial extends NewsListState {}

final class NewsListHUDState extends NewsListState {}

final class NewsListGetListApiResultState extends NewsListState {
  final List<ShortNewsModel> items;

  const NewsListGetListApiResultState({required this.items});
}

final class NewsListErrorState extends NewsListState {
  final String errorMessage;

  const NewsListErrorState(this.errorMessage);

  @override
  List<Object> get props => [];
}

final class NewsListErrorApiResultState extends NewsListState {
  final ErrorResponse errorResponse;

  const NewsListErrorApiResultState(this.errorResponse);

  @override
  List<Object> get props => [];
}
