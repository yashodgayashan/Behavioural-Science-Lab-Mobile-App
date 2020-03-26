import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                  child: Text(
                "Project Overview",
                textAlign: TextAlign.center,
              )),
              Tab(child: Text("Results")),
              Tab(
                child: Text("Settings"),
              )
            ],
          ),
          title: Text('Project'),
        ),
        body: TabBarView(
          children: [
            projectOverViewWidget(context),
            Icon(Icons.directions_transit),
            Icon(Icons.settings)
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget projectOverViewWidget(BuildContext context) {
    return Column(
      children: <Widget>[
        durationWidget(context),

      ],
    );
  }

  Widget durationWidget(BuildContext context) {
    return ListTile(
      title: Text("Duration"),
      subtitle: Text("custom"),
      trailing: Icon(Icons.edit),
    );
  }


}
