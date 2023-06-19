import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../general/dashed_line.dart';
import 'package:intl/intl.dart';

class AddedActivityCard extends StatefulWidget {
  const AddedActivityCard({
    super.key,
    required this.activityThumbnail,
    required this.activityName,
    required this.city,
    required this.price,
    required this.activityTime,
    this.isLast = false,
  });

  final String activityThumbnail;
  final String activityName;
  final String city;
  final String price;
  final String activityTime;
  final bool? isLast;

  @override
  State<AddedActivityCard> createState() => _AddedActivityCardState();
}

DateTime now = DateTime.now();
String formattedTime = DateFormat.Hms().format(now);

class _AddedActivityCardState extends State<AddedActivityCard> {
  bool isCheck = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 121,
          width: AppLayout.getSize(context).width,
          padding:
              const EdgeInsets.only(top: 18, bottom: 18, left: 24, right: 52),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 11,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Date and Time
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${widget.activityTime}",
                      // DateFormat('dd MM yyyy').format(DateTime.now())
                      style: headLineStyle7.copyWith(fontSize: 16)),
                  Text(
                      "${DateFormat.Hm().format(now)} - ${DateFormat.Hm().format(now)}",
                      style: headLineStyle7.copyWith(fontSize: 16)),
                ],
              ),
              Row(
                children: [
                  // Thumbnail
                  SizedBox(
                    height: 55,
                    width: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(9),
                      child: Image.asset(widget.activityThumbnail,
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(width: 10),

                  // Activity Info
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.activityName, style: headLineStyle4),
                      Row(
                        children: [
                          const Icon(Icons.location_on_sharp,
                              color: primaryColor, size: 12),
                          const SizedBox(width: 2),
                          Text(widget.city, style: headLineStyle6),
                        ],
                      ),
                      Text(
                        widget.price != "FREE"
                            ? '${widget.price} SR'
                            : widget.price,
                        style: headLineStyle5.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        // Dashed Line
        widget.isLast == true
            ? const SizedBox.shrink()
            : const Align(
                heightFactor: 1.5,
                widthFactor: 105,
                alignment: Alignment.bottomRight,
                child: DashedLine(
                  height: 7,
                  width: 2,
                  lineHeight: 92,
                  // color: primaryColor,
                ),
              ),

        // Checkbox
        Align(
          heightFactor: 1.5,
          widthFactor: 10.3,
          alignment: Alignment.bottomRight,
          child: Transform.scale(
            scale: 1.5,
            child: Checkbox(
              value: isCheck,
              onChanged: (bool) {
                setState(() {
                  // widget.activityTime == DateTime.now() ? true : false;
                  isCheck;
                });
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              checkColor: const Color(0xFF404040),
              activeColor: Colors.transparent,
              side: MaterialStateBorderSide.resolveWith(
                (states) => const BorderSide(width: 2, color: greyButtonColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
