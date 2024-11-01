import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:floovies/core/presentation/bloc/error_state.dart';
import 'package:floovies/features/movies/domain/entities/paged_response.dart';
import 'package:floovies/features/movies/domain/entities/search_result.dart';
import 'package:floovies/features/movies/domain/use_cases/search_all.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({required this.searchAll}) : super(SearchInitialState()) {
    on<SearchQueryChangedEvent>(
      _onSearchQueryChanged,
      transformer: droppable(),
    );
  }

  final SearchAll searchAll;

  void _onSearchQueryChanged(
    SearchQueryChangedEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(const SearchLoadingState());
    final result = await searchAll(
      SearchAllParams(
        query: event.query,
        includeAdult: event.includeAdult,
        page: event.page,
      ),
    );
    result.fold(
      (failure) => emit(SearchErrorState(
        message: failure.message,
        cause: failure.cause,
      )),
      (pagedResponse) => emit(SearchLoadedState(searchResult: pagedResponse)),
    );
  }
}
