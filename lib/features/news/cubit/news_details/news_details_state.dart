part of 'news_details_cubit.dart';

@immutable
sealed class NewsDetailsState extends Equatable {
  const NewsDetailsState();

  @override
  List<Object> get props => [];
}

final class NewsDetailsInitial extends NewsDetailsState {}

final class NewsDetailsLoadingState extends NewsDetailsState {}

final class NewsGetDetailsApiResultState extends NewsDetailsState {
  final NewsModel item;

  const NewsGetDetailsApiResultState({required this.item});
}

final class NewsDetailsErrorState extends NewsDetailsState {
  final String errorMessage;

  const NewsDetailsErrorState(this.errorMessage);

  @override
  List<Object> get props => [];
}

final class NewsDetailsErrorApiResultState extends NewsDetailsState {
  final ErrorResponse errorResponse;

  const NewsDetailsErrorApiResultState(this.errorResponse);

  @override
  List<Object> get props => [];
}
