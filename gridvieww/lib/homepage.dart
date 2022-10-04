import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.notification_add,
                    color: Colors.orange,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text.rich(
                TextSpan(
                    text: "Welcome,\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: "Jony",
                          style: TextStyle(fontWeight: FontWeight.normal))
                    ]),
                style: TextStyle(fontSize: 35),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.black38,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow, width: 2)),
                    hintText: "Search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Saved Places",
                style: TextStyle(),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 150,
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  shrinkWrap: true,

                  children: [
                    for (var country in countries)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'image/$country.jpg',
                          fit: BoxFit.cover,
                        ),
                      )
                  ],

                  // crossAxisCount: 2,
                  // childAspectRatio: 1.5,
                  // mainAxisSpacing: 5,
                  // crossAxisSpacing: 5,
                  // gridDelegate:,
                  // children: [
                  //   for (var country in countries)
                  //     Image.asset(
                  //       'image/$country.jpg',
                  //       fit: BoxFit.cover,
                  //     ),
                  // ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 80,
                width: double.infinity,
                child: GridView.count(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (var country in countries)
                      Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'image/$country.jpg',
                                fit: BoxFit.cover,
                              )),
                          Text("Bd")
                          // Text("$countriesName"),
                        ],
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: GridView.count(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                    crossAxisSpacing: 10,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      for (var countryN in countriesName) Text("$countryN"),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final countries = ['index', 'index1', 'index2', 'index4'];
final countriesName = ['Bd', 'India', 'England', 'USA'];

// class CountryName {
//   String? name;
//   String? image;
//   CountryName({this.image, this.name});

//   List<CountryName> countryName = [
//     CountryName(name: "BD", image: "image/index.jpg"),
//     CountryName(name: "india", image: "image/index1.jpg"),
//     CountryName(name: "England", image: "image/index2.jpg"),
//     CountryName(name: "Pakisthan", image: "image/index4.jpg"),
//   ];
// }
