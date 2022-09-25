import 'package:cinema/shared/theme.dart';
import 'package:flutter/material.dart';

class FilmDisneyItemKedua extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const FilmDisneyItemKedua({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
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
      child: Row(
        children: [
          Container(
            width: 100,
            height: 127,
            margin: EdgeInsets.only(
              right: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageUrl,
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: kShadowDisney.withOpacity(0.4),
                  blurRadius: 40,
                ),
              ],
            ),
          ),
          Column(
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
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
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
        ],
      ),
    );
  }
}
