import 'package:auto_route/auto_route.dart';
import 'package:floovies/features/movies/presentation/bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _searchCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final searchResult = BlocBuilder<SearchBloc, SearchState>(
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
          return ListView.builder(
            itemCount: state.searchResult.results.length,
            itemBuilder: (context, index) {
              final result = state.searchResult.results[index];
              return result.when(
                movie: (
                  backdropPath,
                  id,
                  title,
                  originalTitle,
                  overview,
                  posterPath,
                  adult,
                  genreIds,
                  originalLanguage,
                  popularity,
                  releaseDate,
                  video,
                  voteAverage,
                  voteCount,
                ) {
                  return ListTile(
                    title: Text(title),
                    subtitle: Text(overview),
                    leading: Image.network(
                      'https://image.tmdb.org/t/p/w500$posterPath',
                      width: 50,
                    ),
                    onTap: () {},
                  );
                },
                tv: (
                  backdropPath,
                  id,
                  name,
                  originalName,
                  overview,
                  posterPath,
                  adult,
                  genreIds,
                  originCountry,
                  originalLanguage,
                  popularity,
                  firstAirDate,
                  voteAverage,
                  voteCount,
                ) {
                  return ListTile(
                    title: Text(name),
                    subtitle: Text(overview),
                    leading: Image.network(
                      'https://image.tmdb.org/t/p/w500$posterPath',
                      width: 50,
                    ),
                    onTap: () {},
                  );
                },
                person: (
                  id,
                  name,
                  originalName,
                  adult,
                  popularity,
                  gender,
                  knownForDepartment,
                  profilePath,
                ) {
                  return ListTile(
                    title: Text(name),
                    leading: Image.network(
                      'https://image.tmdb.org/t/p/w500$profilePath',
                      width: 50,
                    ),
                    onTap: () {},
                  );
                },
              );
            },
          );
        }
        return const SizedBox();
      },
    );

    return Scaffold(
      body: Column(
        children: [
          Expanded(child: searchResult),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _searchCtl,
                  decoration: const InputDecoration(
                    hintText: 'Search',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  context.read<SearchBloc>().add(
                        SearchQueryChangedEvent(
                          query: _searchCtl.text,
                          includeAdult: false,
                          page: 1,
                        ),
                      );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
