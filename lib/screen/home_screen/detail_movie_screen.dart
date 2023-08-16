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
  final double coverHeight = 165;
  final double clockCardHeight = 140;
  @override
  Widget build(BuildContext context) {
    final top = coverHeight - clockCardHeight / 2;

    return CustomScaffold.withAppBar(
      backgroundColor: AppColor.backgroundColor4(),
      centerTitle: true,
      title: 'Detail',
      child: Column(
        children: [
          Stack(clipBehavior: Clip.none, children: [
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
            Positioned(
              left: defaultMargin,
              top: coverHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MovieCard(imageFileName: 'image2'),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    height: 24,
                    // width: 54,
                    color: AppColor.backgroundColor4(),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        TextWidget(
                          '9.5',
                          color: Colors.orange,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
          TextWidget(
            'Spiderman No Way Home',
            color: AppColor.whiteColor(),
          ),
        ],
      ),
    );
  }
}
