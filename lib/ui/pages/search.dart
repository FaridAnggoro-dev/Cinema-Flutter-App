import 'package:cinema/shared/theme.dart';
import 'package:cinema/ui/widgets/search_film_item1.dart';
import 'package:cinema/ui/widgets/search_film_item2.dart';
import 'package:cinema/ui/widgets/search_film_item3.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 35,
          left: 24,
        ),
        child: Row(
          children: [
            Text(
              'Search Result',
              style: TextStyle(
                color: kPrimary,
                fontSize: 20,
                fontFamily: 'avenir-black',
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              '(3)',
              style: TextStyle(
                color: kPrimary,
                fontSize: 20,
                fontFamily: 'avenir-book',
              ),
            ),
          ],
        ),
      );
    }

    Widget itemSearch() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: 24,
        ),
        child: Column(
          children: [
            SearchItemFilmPertama(
              title: 'The Dark II',
              subtitle: 'Horror',
              imageUrl: 'assets/image/image_search1.png',
            ),
            SearchItemFilmkedua(
              title: 'The Dark Knight',
              subtitle: 'Heroes',
              imageUrl: 'assets/image/image_search2.png',
            ),
            SearchItemFilmKetiga(
              title: 'The Dark Tower',
              subtitle: 'Action',
              imageUrl: 'assets/image/image_search3.png',
            ),
            Container(
              width: 220,
              height: 50,
              margin: EdgeInsets.only(
                top: 37,
                bottom: 80,
              ),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: kPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(37),
                  ),
                  shadowColor: Color(0xffC4C8D7),
                ),
                child: Text(
                  'Suggest Movie',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: Medium,
                    color: kLight,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: kSearch,
        title: Row(
          children: [
            Icon(
              Icons.search,
              color: kPrimary,
            ),
            SizedBox(
              width: 16,
            ),
            Container(
              width: 327,
              height: 45,
              decoration: BoxDecoration(
                color: kLight,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Search Cinema',
                        hintStyle: TextStyle(
                          color: kPrimary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          title(),
          itemSearch(),
        ],
      ),
    );
  }
}
