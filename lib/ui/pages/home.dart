import 'package:cinema/shared/theme.dart';
import 'package:cinema/ui/widgets/film_disney_item1_card.dart';
import 'package:cinema/ui/widgets/film_disney_item2_card.dart';
import 'package:cinema/ui/widgets/popular_film_item1_card.dart';
import 'package:cinema/ui/widgets/popular_film_item2_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Widget Header
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: 24,
          top: 29,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Moviez',
                    style: TextStyle(
                      fontFamily: 'avenir-black',
                      fontSize: 28,
                      color: kPrimary,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Watch much easier',
                    style: TextStyle(
                      fontFamily: 'avenir-book',
                      fontSize: 16,
                      color: kSecondary,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 55,
              height: 45,
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/search');
                },
                icon: Icon(
                  Icons.search,
                ),
                iconSize: 22,
              ),
            ),
          ],
        ),
      );
    }

    Widget popularFilm() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PopularFilmItemPertama(
                title: 'John Wick 4',
                subtitle: 'Action, Crime',
                imageUrl: 'assets/image/image_film1.png',
              ),
              PopularFilmItemKedua(
                title: 'Bohemian',
                subtitle: 'Documentary',
                imageUrl: 'assets/image/image_film2.png',
              ),
            ],
          ),
        ),
      );
    }

    Widget filmDisney() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'From Disney',
              style: TextStyle(
                fontFamily: 'avenir-book',
                fontSize: 24,
                color: kPrimary,
              ),
            ),
            FilmDisneyItemPertama(
              title: 'Mulan Session',
              subtitle: 'History, War',
              imageUrl: 'assets/image/image_disney1.png',
            ),
            FilmDisneyItemKedua(
              title: 'Beauty & Beast',
              subtitle: 'Sci-Fiction',
              imageUrl: 'assets/image/image_disney2.png',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: 375,
            height: 812,
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  header(),
                  popularFilm(),
                  filmDisney(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
