import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:faisal_alanazi_proj1/core/constants/app_colors.dart';
import 'package:faisal_alanazi_proj1/core/constants/text_styles.dart';
import 'package:faisal_alanazi_proj1/screens/home/widgets/place_card.dart';
import 'package:faisal_alanazi_proj1/screens/place_detail/placedetail_screen.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({
    super.key,
    required this.listOfPlaces,
    required this.mangePlace,
    required this.favoritePlaces,
  });
  final Set<Map<String, dynamic>> favoritePlaces;
  final List<Map<String, dynamic>> listOfPlaces;
  final Function mangePlace;

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int currntSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 15, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 2.1,
              child: CarouselSlider.builder(
                itemCount: widget.listOfPlaces.length,
                itemBuilder: (context, index, realIndex) {
                  final place = widget.listOfPlaces[index];

                  return Container(
                    margin: EdgeInsets.only(right: 2),

                    width: MediaQuery.of(context).size.width * 0.8,

                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PlacedetailScreen(place: place),
                          ),
                        );
                      },
                      child: PlaceCard(
                        favoritePlaces: widget.favoritePlaces,
                        mangePlace: widget.mangePlace,
                        place: place,
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  onPageChanged: (index, reason) => setState(() {
                    currntSlide >= 3 ? currntSlide = 0 : currntSlide++;
                  }),
                  height: 500,
                  viewportFraction: 0.8,
                  autoPlayCurve: Curves.easeInSine,
                  autoPlayInterval: Duration(seconds: 4),
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
              ),
            ),
            SizedBox(height: 15),
            DotsIndicator(
              dotsCount: 4,
              position: currntSlide.toDouble(),
              decorator: DotsDecorator(
                color: AppColors.iconNavBar.withValues(alpha: 0.5),
                activeColor: AppColors.primaryActive,
              ),
            ),
            SizedBox(height: 20),
            // Recommended text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recommended', style: AppTextStyles.sectionSubtitle),
                Text('View All', style: AppTextStyles.linkText),
              ],
            ),
            SizedBox(height: 20),
            // grid
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.9,
              ),
              itemCount: widget.listOfPlaces.length,
              itemBuilder: (context, index) {
                final place = widget.listOfPlaces[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlacedetailScreen(place: place),
                      ),
                    );
                  },
                  child: PlaceCard(
                    favoritePlaces: widget.favoritePlaces,
                    mangePlace: widget.mangePlace,
                    place: place,
                    isFavoriteTop: true,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
