import 'package:flutter/material.dart';
import 'package:todoo/constants/appAssets.dart';
import 'package:todoo/pages/settings/settings.dart';
import 'package:todoo/pages/task_page/task_list.dart';
import 'package:todoo/widgets/addTask.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedinex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * .2,
        title: Text(
          "To Do List",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          buildShowModalBottomSheet(context);

        },
        clipBehavior: Clip.hardEdge,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        clipBehavior: Clip.hardEdge,
        shape: const CircularNotchedRectangle(),
        notchMargin: 12,
        child: BottomNavigationBar(
          currentIndex: selectedinex,
          onTap: (value) {
            selectedinex = value;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppAssets.list)), label: "List"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppAssets.settings)),
                label: "Settings")
          ],
        ),
      ),
      body: selectedinex==0?TaskList():Settings(),
    );
  }

  void buildShowModalBottomSheet(BuildContext context) {
     showModalBottomSheet(
            context: context,
            builder: (context){
              return AddTask();
            });
  }
}
