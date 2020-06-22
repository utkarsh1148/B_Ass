import 'package:flutter/material.dart';
import 'constants.dart' as glo;
import 'Screens/HomeScreen.dart';

class Features extends StatefulWidget {
  _Features createState() => _Features();
}

class _Features extends State<Features>{

  List<_FeaturePhoto> _feature() {
//    int j=0;
//    for(int i=0;i<glo.data_.length;i++){
//      if(glo.data_[i]['data']!=''){
//        print("hi");
//        j++;
//      }
//    }
//
//    glo.carouselNum=j;
    List<_FeaturePhoto> newalb=[];
    for(int i=0;i<glo.data_[glo.index]['data'].length;i++){
      newalb.add(_FeaturePhoto(imageURL: glo.data_[glo.index]['data'][i]['pF'],
          title: glo.data_[glo.index]['data'][i]['t'],
          subtitle: glo.data_[glo.index]['data'][i]['cat'],
          featureString: 'Feature1'),
      );
    }

    glo.index++;
    return newalb;
  }

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: Container(
        height: 250,
        width: 250,
        child:  ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(10.0),
            children:_feature().map <Widget>( (photo) {
              return _FeatureGridItem(featurePhoto: photo);//Feature(photo);
            }).toList()
        ),
      ),
    );

  }
  void onTapDown(BuildContext context, TapDownDetails details) {
//    print('${details.globalPosition}');
    final RenderBox box = context.findRenderObject();
    final Offset localOffset = box.globalToLocal(details.globalPosition);
    glo.posx = localOffset.dx;
    glo.posy = localOffset.dy;
    print(glo.posx);


  }
}

class _FeaturePhoto{
  _FeaturePhoto({
    this.imageURL,
    this.title,
    this.subtitle,
    this.featureString
  });
  final String imageURL;
  final String title;
  final String subtitle;
  final String featureString;
}

class _FeatureText extends StatelessWidget {
  const _FeatureText(this.text, this.fontSize);
  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14),
      child: Text(text,
      style: TextStyle(fontFamily: 'ConcertOne-Regular',
      fontSize: fontSize)),
    );
  }
}

class _FeatureGridItem extends StatelessWidget {
  _FeatureGridItem({
    Key key,
    @required this.featurePhoto
  }) : super ( key: key);

  final _FeaturePhoto featurePhoto;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: GestureDetector(
            child:  Stack(
              children: <Widget>[
                Padding(
                  padding:EdgeInsets.only(left: 10,right: 10,bottom: 40),
                  child: Image.network(featurePhoto.imageURL,
                    width: 120,
                    height: 170,
                  ),
                ),

                Positioned(
                    top: 60,
                    left: 40,
                    child: Container(
                      height: 80,
                      width: 50,

                      child: Column(
                        children: <Widget>[
                          InkWell(
                              onTap: null,
                              child: Image.network('https://bolkar.s3.ap-south-1.amazonaws.com/demo/play_new.webp')
                          ),


                        ],
                      ),
                    )
                ),
                Positioned(
                  top: 165,
                  child:  Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          _FeatureText(featurePhoto.title,16),
                          _FeatureText(featurePhoto.subtitle,14),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            onTap: (){
              print(glo.data_[0]['data'].length);
              for(int i=0;i<glo.carouselNum;i++){
                for(int j=0;j<glo.data_[i]['data'].length;j++){
                if(glo.data_[i]['data'][j]['t']==featurePhoto.title){
                  glo.data_[i]['data'].removeAt(j);
                  glo.index=0;
                  Navigator.of(context).pushReplacement(
                      new MaterialPageRoute(builder: (context) => new MyAppp()));
                }
              }}
              print(glo.data_[0]['data'].length);
            }
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)
          ),
          elevation: 6,
          margin: EdgeInsets.all(10),
        ),

      ]
    );
  }

}