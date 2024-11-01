part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();
}

class SearchInitialState extends SearchState {
  const SearchInitialState();

  @override
  List<Object> get props => [];
}

class SearchLoadingState extends SearchState {
  const SearchLoadingState();

  @override
  List<Object> get props => [];
}

class SearchLoadedState extends SearchState {
  final PagedResponse<SearchResult> searchResult;

  const SearchLoadedState({required this.searchResult});

  @override
  List<Object> get props => [searchResult];
}

class SearchErrorState extends SearchState implements ErrorState {
  @override
  final String message;

  @override
  final Exception? cause;

  const SearchErrorState({required this.message, this.cause});

  @override
  List<Object?> get props => [message, cause];
}
