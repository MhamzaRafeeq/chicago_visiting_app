import 'package:chicago_site_seeing/pages/details.dart';
import 'package:flutter/material.dart';
import '../data/data.dart';
import '../data/model.dart';
import '../theme/theme.dart';
import '../components/visitingPlaceCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String routeName = 'home';
  static String routePath = '/home';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late TabController tabBarController;

  @override
  void initState() {
    super.initState();
    tabBarController = TabController(vsync: this, length: 3, initialIndex: 0);
  }

  Widget _tabStyle({required String text}){
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(text),
    );
  }
  Widget _tabBarPageItem({required List<Place> items, required PlaceCategory category}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(

        itemCount: items.where((place) => place.category == category).length,
        itemBuilder: (context, index) {
          final place = items.where((place) => place.category == category).toList()[index];
          return Column(
            children: [
              InkWell(
                onTap: ()async{
                  Navigator.pushNamed(context,ItemDetails.routePath, arguments: {
                    'title': place.title,
                    'descriptions': place.descriptions,
                    'images':place.images,
                  });
                },
                child: VistingPlaceCard(
                  title: place.title,
                  description: place.descriptions[0],
                  image: place.images[0],
                ),
              ),
              SizedBox(height:20),
            ],
          );
        },
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          // Background Image
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF1E88E5), Color(0xFF1565C0)],
                stops: [0, 1],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Image.asset(
              'assets/images/chicago/2024-01-27.jpg',
              width: MediaQuery.of(context).size.width,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 110, 24, 0),
                child: Text(
                  'Welcome to Chicago',
                  style: AppTheme.lightTheme.textTheme.titleLarge,
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TabBar(
                          labelStyle: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          unselectedLabelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          unselectedLabelColor: Colors.black54,
                          indicator: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          indicatorSize: TabBarIndicatorSize.label,
                          controller: tabBarController,
                          tabs: [
                            Tab(
                              child: _tabStyle(text: 'Neighbours'),
                            ),
                            Tab(
                              child: _tabStyle(text: 'Sports'),
                            ),
                            Tab(
                              child:_tabStyle(text: 'Events'),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: tabBarController,
                          children: [
                            tabBarPage(places, 0),
                            tabBarPage(places, 1),
                            tabBarPage(places, 2),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget tabBarPage(List<Place> items, int index) {


    // Extract categories from the list of Places
    List<PlaceCategory> categories = items.map((place) => place.category).toList();

    if (index == 0 && categories.contains(PlaceCategory.Neighbours)) {
      return _tabBarPageItem(items: items, category: PlaceCategory.Neighbours);
    } else if (index == 1 && categories.contains(PlaceCategory.Sports)) {
      return _tabBarPageItem(items: items, category: PlaceCategory.Sports);
    } else if (index == 2 && categories.contains(PlaceCategory.Events)) {
      return _tabBarPageItem(items: items, category: PlaceCategory.Events);
    }

    return Container(); // Default empty container
  }

}
