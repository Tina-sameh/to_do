import 'package:flutter/material.dart';
import 'package:todoo/constants/my_theme.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  DateTime selectedDate = DateTime.now();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height * .48,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return "Please enter title";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(hintText: "enter your task"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return "Please enter decription";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(hintText: "enter description"),
                maxLines: 3,
              ),
            ),
            Text(
              "Select time",
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.left,
            ),
            InkWell(
              onTap: () {
                showCalender();
                setState(() {});
              },
              child: Text(
                "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyTheme.primary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    if(formKey.currentState!.validate()){

                    }
                  },
                  child: Text(
                    "Add",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: MyTheme.white),
                  )),
            )
          ],
        ),
      ),
    );
  }

  void showCalender() async {
    var chosenDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
    if (chosenDate != null) {
      selectedDate = chosenDate;
      setState(() {});
    }
  }
}
