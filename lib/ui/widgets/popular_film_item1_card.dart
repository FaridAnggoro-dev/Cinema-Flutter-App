import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class PopularFilmItemPertama extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const PopularFilmItemPertama({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 279,
      margin: EdgeInsets.only(
        left: 24,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffFDFDFE),
            Color(0xffF3F4F8),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300,
            height: 207,
            margin: EdgeInsets.only(
              bottom: 19,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              boxShadow: [
                BoxShadow(
                  color: kShadow.withOpacity(0.4),
                  blurRadius: 40,
                ),
              ],
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontFamily: 'avenir-heavy',
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontFamily: 'avenir-book',
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon/icon_star1.png',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon/icon_star1.png',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon/icon_star1.png',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon/icon_star1.png',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon/icon_star1.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
