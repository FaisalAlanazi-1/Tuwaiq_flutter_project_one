import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:faisal_alanazi_proj1/constants/text_styles.dart';
import 'package:faisal_alanazi_proj1/screens/home/widgets/place_card.dart';
import 'package:faisal_alanazi_proj1/screens/place_detail/placedetail_screen.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    required this.listOfPlaces,
  });

  final List<Map<String, dynamic>> listOfPlaces;

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
                itemCount: listOfPlaces.length,
                itemBuilder: (context, index, realIndex) {
                  final place = listOfPlaces[index];
                  return Container(
                    margin: EdgeInsets.only(right: 2),
    
                    width: MediaQuery.of(context).size.width * 0.8,
    
                    child: InkWell(
                       onTap: () {
                         
                         Navigator.push(context, MaterialPageRoute(builder: (context) => PlacedetailScreen(place: place),));
                       }, 
                      child: PlaceCard(
                        image: place['image'],
                        title: place['name'],
                        rating: place['rating'],
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 222,
                  viewportFraction: 0.8,
                  autoPlayCurve: Curves.easeInSine,
                  autoPlayInterval: Duration(seconds: 4),
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
              ),
            ),
            SizedBox(height: 50),
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
              itemCount: listOfPlaces.length,
              itemBuilder: (context, index) {
                final place = listOfPlaces[index];
                return PlaceCard(
                  image: place['image'],
                  title: place['name'],
                  rating: place['rating'],
                  isFavoriteTop: true,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
