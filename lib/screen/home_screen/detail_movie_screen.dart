import 'package:sneakers_dept/export.dart';
import 'package:sneakers_dept/themes/themes.dart';
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
      backgroundColor: AppColor.backgroundColor4(),
      centerTitle: true,
      title: 'Detail',
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/image1.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
