import 'package:floovies/features/movies/presentation/bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBarWidget extends StatelessWidget {
  SearchBarWidget({super.key});

  final _searchFocus = FocusNode();
  final _searchCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (_, state) {
        return Row(
          children: [
            Expanded(
              child: TextField(
                focusNode: _searchFocus,
                controller: _searchCtl,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      _searchCtl.clear();
                      _searchFocus.requestFocus();
                    },
                  ),
                ),
                onSubmitted: (value) {
                  context.read<SearchBloc>().add(
                        SearchQueryChangedEvent(
                          query: value,
                          includeAdult: false,
                          page: 1,
                        ),
                      );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
