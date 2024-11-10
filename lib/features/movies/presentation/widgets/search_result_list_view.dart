import 'package:floovies/features/movies/presentation/bloc/search_bloc.dart';
import 'package:floovies/features/movies/presentation/widgets/search_result_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        if (state is SearchInitialState) {
          return const Center(
            child: Text('Search for movies'),
          );
        }
        if (state is SearchLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is SearchErrorState) {
          return Center(
            child: Text(
              state.message,
              style: const TextStyle(color: Colors.red),
            ),
          );
        }
        if (state is SearchLoadedState) {
          return ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Theme.of(context).colorScheme.surface,
                ],
                stops: const [0.85, 1],
              ).createShader(bounds);
            },
            blendMode: BlendMode.dstOut,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              itemCount: state.searchResult.results.length,
              itemBuilder: (context, index) {
                return SearchResultWidget(state.searchResult.results[index]);
              },
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
