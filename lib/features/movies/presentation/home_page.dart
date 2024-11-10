import 'package:auto_route/auto_route.dart';
import 'package:floovies/features/movies/presentation/widgets/search_bar_widget.dart';
import 'package:floovies/features/movies/presentation/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final header = Padding(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Floovies', style: Theme.of(context).textTheme.headlineMedium),
          Text('Search for movies, tv shows, and people'),
          const SizedBox(height: 16),
          SearchBarWidget(),
        ],
      ),
    );

    return Scaffold(
      body: Column(
        children: [
          header,
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
