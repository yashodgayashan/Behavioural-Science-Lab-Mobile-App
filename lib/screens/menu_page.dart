import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  int indexNumber = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            onTap: (index){
              setState(() {
                indexNumber = index;
              });
            },
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
          onPressed: () {
            debugPrint("$indexNumber");
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget projectOverViewWidget(BuildContext context) {
    return Column(
      children: <Widget>[
        durationWidget(context),
        Text("Images"),
        Expanded(child: drag(context))
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

  List<String> _list = [
    "Apple",
    "Ball",
    "Cat",
    "Dog",
    "Elephant",
    "Goal",
    "Ink",
    "High",
    "Row",
    "COntainer"
  ];

  Widget drag(BuildContext context) {
    return ReorderableListView(
      scrollDirection: Axis.vertical,
      children: _list
          .map((item) => ListTile(
                key: Key("${item}"),
                title: Text("${item}"),
                trailing: GestureDetector(
                  child: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      debugPrint("tapped on $item");
                    },
                  ),
                ),
              ))
          .toList(),
      onReorder: (int start, int current) {
        // dragging from top to bottom
        if (start < current) {
          int end = current - 1;
          String startItem = _list[start];
          int i = 0;
          int local = start;
          do {
            _list[local] = _list[++local];
            i++;
          } while (i < end - start);
          _list[end] = startItem;
        }
        // dragging from bottom to top
        else if (start > current) {
          String startItem = _list[start];
          for (int i = start; i > current; i--) {
            _list[i] = _list[i - 1];
          }
          _list[current] = startItem;
        }
        setState(() {
          debugPrint(_list.toString());
        });
      },
    );
  }
}
