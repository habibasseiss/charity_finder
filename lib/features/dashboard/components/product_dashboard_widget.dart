import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductDashboardWidget extends StatelessWidget {
  final String text;
  final Function onTap;
  const ProductDashboardWidget(
      {Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double maxWidth = 100;
    return GestureDetector(
      onTap: onTap(),
      child: Container(
        margin: EdgeInsets.only(right: 16.0),
        width: maxWidth,
        child: Column(
          children: [
            Placeholder(
              child: Container(
                width: maxWidth,
                height: maxWidth,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(text, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
