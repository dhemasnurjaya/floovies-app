part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();
}

class SearchQueryChangedEvent extends SearchEvent {
  final String query;
  final bool includeAdult;
  final int page;

  const SearchQueryChangedEvent({
    required this.query,
    this.includeAdult = false,
    this.page = 1,
  });

  @override
  List<Object> get props => [query, includeAdult, page];
}
