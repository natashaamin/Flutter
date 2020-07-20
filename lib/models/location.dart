import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePAth;
  final List<LocationFact> facts;

  Location(this.id, this.name,this.imagePAth,this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1,'Sibu', 'assets/images/kiyomizu-dera.jpg',[
        LocationFact('Smmary', 'While we are on my way home'),
        LocationFact('How to go there','By car')
      ]),
      Location(2,'Kuching','assets/images/fuji.jpg',[
        LocationFact('Summary','Fuji is a bitch'),
        LocationFact('Did you know','We are all a bitch')
        ]),
      Location(3,'Miri','assets/images/arashiyama.jpg',[
        LocationFact('Summary','Banana'),
        LocationFact('How can we go','Eat banana')
      ]),

    ];
  }

  static Location fetchByID(int locationID) {
    //fetch all location, iterate them and when we find the location
    //with the ID we want, return it immediately

    List<Location> locations = Location.fetchAll();
    for(var i=0;i<locations.length;i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }


}