import 'package:flutter/material.dart';
import 'package:todoye/constants.dart';
import 'package:todoye/screens/create_task_screen.dart';
import 'package:todoye/widgets/task_list_view.dart';
import 'package:todoye/widgets/user_intro_section.dart';
import 'package:todoye/widgets/list_box_title.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              //TODO: edit drawer
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Color(kPrimaryColor),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30.0,
        ),
        onPressed: () {
          Navigator.pushNamed(context, CreateTaskScreen.id);
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new UserIntroSection(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(kLightBackgroundColor),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ListBoxTitle(),
                    Expanded(
                      child: new TaskListView(),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
