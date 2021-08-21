import 'package:flutter/cupertino.dart';

class OpaqueImage extends StatelessWidget {

  final imageUrl;
  const OpaqueImage({Key? key, @required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          imageUrl,
          width: double.maxFinite,
          height: double.maxFinite,
          fit: BoxFit.fill,
        ),
        Container(
          color: Color.fromARGB(203, 153, 3, 1).withOpacity(0.60),
        )
      ],
    );
  }
}
