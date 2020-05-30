import 'package:flutter/material.dart';
import 'package:social_media_ui/constants/appconstants.dart';

class HomeMetricsTile extends StatefulWidget {
  final String tileName;
  final Color color;
  final int number;
  HomeMetricsTile({
    @required this.color,
    @required this.number,
    @required this.tileName,
  });

  @override
  _HomeMetricsTileState createState() => _HomeMetricsTileState();
}

class _HomeMetricsTileState extends State<HomeMetricsTile> {
  bool active = false;

  Color get textColor {
    if (active) return Colors.white;
    return widget.color;
  }

  Color get panelColor {
    if (active) return widget.color;
    return Colors.black.withOpacity(0.04);
  }

  BoxShadow get shadow {
    if (active)
      return BoxShadow(
        offset: Offset(0, 7),
        blurRadius: 10,
        color: widget.color.withOpacity(0.3),
      );
    return BoxShadow(color: Colors.transparent);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => active = !active),
      child: Container(
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: panelColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [shadow],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              widget.number.toString(),
              style: TextStyle(
                color: textColor,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              widget.tileName,
              style: TextStyle(
                color: active ? Colors.white : AppColors.smoothBlue,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
