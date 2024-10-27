import 'package:flutter/material.dart';
import 'package:travelticket/shared/themes.dart';
import 'package:travelticket/widgets/custom_card_destination.dart';
import 'package:travelticket/widgets/destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Helo\nGhaly Abrarian',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly Toay?',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/img_user.png'),
              )),
            ),
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomCardDestination(
                title: 'Lake Ciliwung',
                location: 'Tangerang',
                img: 'assets/img_destination1.png',
                rating: 4.7,
              ),
              CustomCardDestination(
                title: 'Payung Teduh',
                location: 'Singapore',
                img: 'assets/img_destination5.png',
                rating: 4.6,
              ),
              CustomCardDestination(
                title: 'Hell Heyo',
                location: 'Monaco',
                img: 'assets/img_destination3.png',
                rating: 4.8,
              ),
              CustomCardDestination(
                title: 'Menarra',
                location: 'Japan',
                img: 'assets/img_destination4.png',
                rating: 5.0,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          right: defaultMargin,
          left: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New this Years',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            DestinationTile(
              title: 'Danau Beratan',
              location: 'Singaraja',
              img: 'assets/img_destination6.png',
              rating: 4.4,
            ),
            DestinationTile(
              title: 'Sydney Opera',
              location: 'Australia',
              img: 'assets/img_destination7.png',
              rating: 4.7,
            ),
            DestinationTile(
              title: 'Roma',
              location: 'Italy',
              img: 'assets/img_destination8.png',
              rating: 5.0,
            ),
            DestinationTile(
              title: 'Hill Hey',
              location: 'Monaco',
              img: 'assets/img_destination10.png',
              rating: 4.8,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
        newDestination(),
      ],
    );
  }
}
