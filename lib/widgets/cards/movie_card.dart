import 'package:sneakers_dept/export.dart';
import 'package:sneakers_dept/screen/home_screen/detail_movie_screen.dart';
import 'package:sneakers_dept/widgets/reusable_components/reusable_components.dart';

class MovieCard extends StatelessWidget {
  final String? imageFileName;
  const MovieCard({
    super.key,
    required this.imageFileName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailMovieScreen(),
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CustomContainer(
          backgroundColor: AppColor.blackColor(),
          containerType: RoundedContainerType.noOutline,
          height: 214,
          child: Image.asset('assets/images/$imageFileName.jpeg'),
        ),
      ),
    );
  }
}
