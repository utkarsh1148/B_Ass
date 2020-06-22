import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'constants.dart' as glo;

Future<String> fetchAlbum() async {
  final response =
  await http.get('https://d51md7wh0hu8b.cloudfront.net/android/v1/prod/Radio/hi/show.json');
  if (response.statusCode == 200) {
    var data=json.decode(utf8.decode(response.bodyBytes));
    glo.data_=data;
    int i=0;
    while(data[i]['title']!=''){
      i++;
    }
    glo.carouselNum=i;
  } else {
    throw Exception('Failed to load album');
  }
  print(glo.data_.runtimeType);

  return 'Success';
}
