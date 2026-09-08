
import 'package:faisal_alanazi_proj1/model/place_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Database {
  final supabase = Supabase.instance.client;
  Future<List<PlaceModel>> getAllPlaces() async {
    
    final data = await supabase.from('places').select();
    List<PlaceModel> places = [];
    for (var e in data) {
      print(e.toString()) ; 
      places.add(PlaceModel.fromJson(e));
    }

    return places;
  }

  //   void inset() async{
  // await Supabase.instance.client
  //     .from('places')
  //     .insert(places);
  //   }
}
