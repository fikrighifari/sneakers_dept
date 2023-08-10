import 'package:flutter/material.dart';
import 'package:sneakers_dept/widgets/cards/movie_card.dart';
import 'package:sneakers_dept/widgets/reusable_components/reusable_components.dart';

class DetailMovieScreen extends StatefulWidget {
  const DetailMovieScreen({super.key});

  @override
  State<DetailMovieScreen> createState() => _DetailMovieScreenState();
}

class _DetailMovieScreenState extends State<DetailMovieScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold.withAppBar(
      centerTitle: true,
      title: 'Detail',
      child: Column(
        children: [MovieCard(imageFileName: 'image5')],
      ),
    );
  }
}
