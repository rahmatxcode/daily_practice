import 'package:daily_practice/hero_page.dart';
import 'package:daily_practice/stackWAdv.dart';
import 'package:daily_practice/widgets/CItyCard.dart';
import 'package:flutter/material.dart';

class OwnWidget extends StatelessWidget {
  const OwnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CityCard(
                    img:
                        'https://tntribune.com/wp-content/uploads/2021/08/feat_30d48d6e-7b84-4dfe-bf22-6306f8a2d403.jpg',
                    title: 'Dhaka',
                    rating: '⭐️ 5.0',
                  ),
                  CityCard(
                    img:
                        'https://deih43ym53wif.cloudfront.net/large_dubai-city-architecture-water-3457885-Pixabay.jpg_3b0c5ee071.jpg',
                    title: 'Dubai',
                    rating: '⭐️ 4.8',
                  ),
                  CityCard(
                    img:
                        'https://media.digitalnomads.world/wp-content/uploads/2021/02/20120635/tokyo-for-digital-nomads.jpg',
                    title: 'Tokyo',
                    rating: '⭐️ 4.9',
                  ),
                  CityCard(
                    img:
                        'https://d37rmf1ynyg9aw.cloudfront.net/fit-in/1280x1280/data/v4/resources/images/ec16f3cd-f461-4e6a-b15f-51a35e897908.jpg',
                    title: 'Paris',
                    rating: '⭐️ 4.7',
                  ),
                  CityCard(
                    img:
                        'https://assets.cntraveller.in/photos/661928d86756424733f3ee83/16:9/w_960,c_limit/GettyImages-1464758942.jpg',
                    title: 'London',
                    rating: '⭐️ 4.6',
                  ),
                  CityCard(
                    img:
                        'https://cdn.britannica.com/61/93061-050-99147DCE/Statue-of-Liberty-Island-New-York-Bay.jpg?w=300',
                    title: 'New York',
                    rating: '⭐️ 4.5',
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const Stackwadv(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1, 0);
                          const end = Offset.zero;
                          const curve = Curves.easeInBack;
                          var tween = Tween(
                            begin: begin,
                            end: end,
                          ).chain(CurveTween(curve: curve));
                          return SlideTransition(
                            position: animation.drive(tween),
                            child: child,
                          );
                        },
                  ),
                );
              },
              child: const Text('Load More'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HeroPage()));
              },
              child: Hero(
                tag: 'loadmore',
                child: const Text('Load More with Hero Animation'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
