import 'package:flutter/material.dart';
import 'constants.dart' as glo;

class GridSubject extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(left: 20,top: 20),
        child: Text(glo.data_[glo.index]['title'],
            style: TextStyle(fontFamily: 'ConcertOne-Regular',
                fontSize: 24,fontWeight: FontWeight.bold)),
      );
  }
}


