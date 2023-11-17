import 'dart:convert';
import 'package:resep_makanan/model/resep.api.dart';
import 'package:http/http.dart' as http;
import 'package:resep_makanan/model/resep.dart';

class ResepApi {
// const req = unirest('GET', 'https://yummly2.p.rapidapi.com/feeds/list');

// req.query({
// 	limit: '24',
// 	start: '0'
// });

// req.headers({
// 	'X-RapidAPI-Key': 'f94f537725msha44305e3e70a3c4p13cadfjsnd94d899dc83d',
// 	'X-RapidAPI-Host': 'yummly2.p.rapidapi.com'
// });

  static Future<List<Resep>> getResep() async {
    var uri = Uri.https('tasty.p.rapidapi.com', '/recipes/list',
        {'from': '0', 'size': '20', 'tags': 'under_30_minutes'});

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Key": "f94f537725msha44305e3e70a3c4p13cadfjsnd94d899dc83d",
      "X-RapidAPI-Host": "tasty.p.rapidapi.com",
      "UseQueryString": "true"
    });
    Map data = jsonDecode(response.body);

    List _temp = [];
    for (var i in data['results']) {
      _temp.add(i);
    }
    return Resep.resepFromSnapshot(_temp);
  }
}
