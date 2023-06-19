import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jawla_app/components/buttons/my_button.dart';

import '../../constants/constants.dart';

// ignore: must_be_immutable
class AddActivityScreen extends StatefulWidget {
  const AddActivityScreen({super.key});

  @override
  State<AddActivityScreen> createState() => _AddActivityScreenState();
}

class _AddActivityScreenState extends State<AddActivityScreen> {
  final dateController = TextEditingController();
  final startTimeController = TextEditingController();
  final endTimeController = TextEditingController();

  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Date Text
              const Text("Date", style: headLineStyle2),
              height8,
              Row(
                children: [
                  // Date Picker Textfield
                  SizedBox(
                    width: 300,
                    child: TextField(
                      readOnly: true,
                      style:
                          headLineStyle2.copyWith(fontWeight: FontWeight.w500),
                      controller: dateController,
                      cursorColor: primaryColor,
                      decoration: InputDecoration(
                        hintText: dateController.text,
                        filled: false,
                        fillColor: Colors.white,
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                  ),
                  width4,

                  // Date Picker Button
                  IconButton(
                    onPressed: () => showDialog(
                      CupertinoDatePicker(
                        initialDateTime: dateTime,
                        mode: CupertinoDatePickerMode.date,
                        use24hFormat: false,
                        // This shows day of week alongside day of month
                        showDayOfWeek: false,
                        // This is called when the user changes the date.
                        onDateTimeChanged: (DateTime newDate) {
                          setState(() => dateTime = newDate);
                          dateController.text =
                              '${dateTime.month}/${dateTime.day}/${dateTime.year}';
                        },
                      ),
                    ),
                    icon: const Icon(
                      Icons.calendar_month_outlined,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              height24,

              // Time Text
              const Text("Time", style: headLineStyle2),
              height8,

              // Time Textfields
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Start Time Textfield
                  SizedBox(
                    width: 140,
                    child: TextField(
                      readOnly: true,
                      style:
                          headLineStyle2.copyWith(fontWeight: FontWeight.w500),
                      controller: startTimeController,
                      cursorColor: primaryColor,
                      decoration: InputDecoration(
                        filled: false,
                        fillColor: Colors.white,
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        hintText: startTimeController.text,
                        suffixIcon: IconButton(
                          onPressed: () => showDialog(
                            CupertinoDatePicker(
                              initialDateTime: dateTime,
                              mode: CupertinoDatePickerMode.time,
                              use24hFormat: true,
                              onDateTimeChanged: (DateTime newTime) {
                                setState(() => dateTime = newTime);
                                startTimeController.text =
                                    // '${dateTime.hour}:${dateTime.minute}';
                                    "${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, "0")}";
                              },
                            ),
                          ),
                          icon: const Icon(Icons.keyboard_arrow_down_rounded),
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),

                  // To Textfield
                  Text(
                    "to",
                    style: headLineStyle2.copyWith(fontWeight: FontWeight.w500),
                  ),

                  // End Time Textfield
                  SizedBox(
                    width: 140,
                    child: TextField(
                      readOnly: true,
                      style:
                          headLineStyle2.copyWith(fontWeight: FontWeight.w500),
                      controller: endTimeController,
                      cursorColor: primaryColor,
                      decoration: InputDecoration(
                        filled: false,
                        fillColor: Colors.white,
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        hintText: endTimeController.text,
                        suffixIcon: IconButton(
                          onPressed: () => showDialog(
                            CupertinoDatePicker(
                              initialDateTime: dateTime,
                              mode: CupertinoDatePickerMode.time,
                              use24hFormat: true,
                              onDateTimeChanged: (DateTime newTime) {
                                setState(() => dateTime = newTime);
                                endTimeController.text =
                                    // '${dateTime.hour}:${dateTime.minute}';
                                    "${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, "0")}";
                              },
                            ),
                          ),
                          icon: const Icon(Icons.keyboard_arrow_down_rounded),
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 300),

              // Next Button
              Center(child: MyButton(onPressed: () {}, text: "Post"))
            ],
          ),
        ),
      ),
    );
  }

  showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 400,
        decoration: BoxDecoration(
          color: CupertinoColors.systemBackground.resolveFrom(context),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 240,
              padding: const EdgeInsets.only(top: 6),
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              color: CupertinoColors.systemBackground.resolveFrom(context),
              child: SafeArea(
                top: false,
                child: child,
              ),
            ),
            Container(
              height: 130,
              padding: const EdgeInsets.only(
                  top: 5, bottom: 55, left: 30, right: 30),
              width: AppLayout.getSize(context).width,
              color: CupertinoColors.systemBackground.resolveFrom(context),
              child: MyButton(
                onPressed: Navigator.of(context).pop,
                text: "Set Time",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
