import 'package:flutter/material.dart';
import 'model.dart';

final List<Place> places = [
  Place(
    category: PlaceCategory.Neighbours,
    title: 'Back of the Yards',
    images: [
      'assets/images/Neighbourhoods/Back_of_the_Yards/Chicago_Union_Stockyard_Gate.jpg',
      'assets/images/Neighbourhoods/Back_of_the_Yards/download (4).jfif',
    ],
    descriptions: [
      'Back of the Yards is an industrial and residential neighborhood so named because it was near the former Union Stock Yards, which employed thousands of European immigrants in the early 20th century.',
      'Life in this neighborhood was explored in Upton Sinclair\'s 1906 novel The Jungle. The area was formerly part of the town of Lake until it was annexed by Chicago in 1889. In the late 19th and early 20th centuries, the area was occupied largely by Eastern European immigrants and their descendants, who were predominantly ethnic Lithuanian, Bohemian, Moravian, and Slovak.',
    ],
  ),
  Place(
    category: PlaceCategory.Neighbours,
    title: 'East Village',
    images: [
      'assets/images/Neighbourhoods/East_Village/1.jfif',
      'assets/images/Neighbourhoods/East_Village/East_Village_Chicago.jpg',
    ],
    descriptions: [
      'East Village or \"East Ukrainian Village\" is a neighborhood directly east of Ukrainian Village. The generally accepted boundaries of East Village are Ashland (1600 W) on the east, Damen (2000 W) on the west, Division (1200 N) on the north, and Chicago (800 N) on the south (although some people extend the southern border to Grand Ave).'
          'The East Village Association neighborhood group in 1984 identify the boundaries as Division Street to Chicago Avenue and Damen Avenue to Milwaukee Avenue (800 – 1600 W).',
    ],
  ),
  Place(
    category: PlaceCategory.Neighbours,
    title: 'Big Oaks',
    images: [
      'assets/images/Neighbourhoods/big_oaks/images (2).jfif',
      'assets/images/Neighbourhoods/big_oaks/Wingert_House_3.JPG',
    ],
    descriptions: [
      'Big Oaks is bounded by Foster Avenue to the north, Nagle Avenue to the east, Gunnison Street to the south, and Harlem Avenue to the west.',
      'Many of the city\'s police officers live in Big Oaks, and in recent years the area has seen an increase in the number of Polish immigrants.',
    ],
  ),
  Place(
    category: PlaceCategory.Sports,
    title: 'Chicago Cubs baseball',
    images: [
      'assets/images/Sports/chicago_cubs_baseball/01j4jv1ma0k9cnkgdyp1.webp',
      'assets/images/Sports/chicago_cubs_baseball/chicago-il-july-21-2019-600nw-2532403193.webp',
    ],
    descriptions: [
      'With two of the most historic franchises in Major League Baseball, no visit to Chicago in the spring and summer months would be complete without tickets to the “ole ball game.”',
      'Nestled within the Lakeview neighborhood sits the second oldest ballpark in America — Wrigley Field, home of the Chicago Cubs.',
    ],
  ),
  Place(
    category: PlaceCategory.Sports,
    title: 'Chicago White Sox baseball',
    images: [
      'assets/images/Sports/chicago_white_sox_baseball/images.jfif',
      'assets/images/Sports/chicago_white_sox_baseball/images (1).jfif',
    ],
    descriptions: [
      'On Chicago\’s South Side sits another one of the most storied franchises in Major League Baseball and winner of the 2005 World Series — the Chicago White Sox.',
      'The home of the Sox, Guaranteed Rate Field, sits just south of the Loop in the Bridgeport neighborhood, where local standbys offer great eats and cheap drinks.',
    ],
  ),
  Place(
    category: PlaceCategory.Sports,
    title: 'Chicago Fire soccer',
    images: [
      'assets/images/Sports/chicago_fire_soccer/download.jfif',
      'assets/images/Sports/chicago_fire_soccer/download (1).jfif',
    ],
    descriptions: [
      'Soccer is one of the most popular sports in the world, so no sports city would be compete without a pro soccer club.',
      'The Chicago Fire, named for the Great Chicago Fire in 1871, won the MLS Cup and U.S. Open Cup in their first season, as well as the U.S. Open Cups in 2000, 2003, and 2006.',
    ],
  ),
  Place(
    category: PlaceCategory.Events,
    title: 'Soldier Field',
    images: [
      'assets/images/Events/soldier_fields/Soldier_Field_Chicago_aerial_view.jpg',
      'assets/images/Events/soldier_fields/Soldier_Field_S.jpg',
    ],
    descriptions: [
      'Soldier Field is a multi-purpose stadium on the Near South Side of Chicago, Illinois, United States. Opened in 1924 and reconstructed in 2003, the stadium has served as the home of the Chicago Bears from the National Football League (NFL) since 1971,[a] as well as Chicago Fire FC of Major League Soccer (MLS) from 1998 to 2006 and since 2020.',
      'The stadium\'s interior was rebuilt as part of a major renovation project in 2002, which modernized the facility but lowered its seating capacity, eventually causing it to be delisted as a National Historic Landmark in 2006.',
    ],
  ),
  Place(
    category: PlaceCategory.Events,
    title: 'Hotel Zachary',
    images: [
      'assets/images/Events/hotel_zachary/ballpark-king-guest-room.jpg',
      'assets/images/Events/hotel_zachary/neighborhood-one-bedroom.jpg',
    ],
    descriptions: [
      'Hotel Zachary Embrace Chicago history, style, and flourish at Hotel Zachary, a Tribute Portfolio Hotel and the premier hotels near Wrigley Field, located in the heart of Wrigleyville and across from Wrigley Field.',
      'Magnificent Mile, known for its high-end shopping, is also a prominent feature of the neighborhood. There\'s no shortage of gourmet dining options, from award-winning steakhouses to unique fusion restaurants.',
    ],
  ),
  Place(
    category: PlaceCategory.Events,
    title: 'House of Blues',
    images: [
      'assets/images/Events/house_of_blues/caption.jpg',
      'assets/images/Events/house_of_blues/img-20190616-135936-largejpg.jpg',
    ],
    descriptions: [
      'House of Blues,  chicago The Near North Side of Chicago offers an impressive blend of the city\'s rich history and modern elegance.',
      ' As the home of the iconic Navy Pier, it serves as a hub of entertainment and leisure, featuring the Chicago Children’s Museum and a vibrant Ferris wheel that illuminates the skyline.',
    ],
  ),
];
