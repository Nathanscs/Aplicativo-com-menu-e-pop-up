import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: TasksPage(),
    );
  }
}

class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Chessman'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
            ),
            ListTile(
              title: Text('Nível de urgência'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UrgencyLevelPage()),
                );
              },
            ),
            ListTile(
              title: Text('Tipos de tarefas'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TaskTypesPage()),
                );
              },
            ),
            ListTile(
              title: Text('Tarefas'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TasksListPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class UrgencyLevelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nível de urgência'),
      ),
      body: Stack(
        children: [
          Center(
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit, libero eget venenatis egestas, sapien diam faucibus ante, in molestie quam quam sed metus. Suspendisse elementum diam arcu. Nunc vestibulum turpis quis imperdiet ultrices. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla convallis blandit ligula quis vulputate. Donec fermentum gravida turpis in pellentesque. Suspendisse vitae mattis lectus. Etiam dapibus venenatis metus, quis commodo sapien ornare eu. Nullam et ex vel erat hendrerit blandit ac volutpat dolor. Donec tincidunt, nunc vel varius aliquet, sapien nulla ultricies lorem, a viverra turpis mauris vitae nulla. Nullam dictum in sem ultrices lobortis. Aenean nec rutrum eros. Vestibulum non urna quis nibh vulputate iaculis.Nullam eget luctus dui, et pulvinar odio. Nunc semper, odio vel vehicula ornare, nisi diam condimentum sem, at cursus libero magna eget leo. Nullam ultricies faucibus leo, nec commodo ex venenatis eu. Aliquam fringilla eu nisi eu cursus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus faucibus rhoncus nulla, eget dapibus odio efficitur a. Nulla facilisi. Duis ut rutrum ex, at tempus dui. Ut magna dui, fringilla at vehicula sit amet, vehicula a augue. Ut quis diam gravida, venenatis diam nec, interdum neque. Integer efficitur neque ac faucibus mattis. Nullam venenatis vehicula lorem eu bibendum. Pellentesque felis arcu, imperdiet a libero eu, auctor egestas tellus. Proin euismod gravida quam, ornare cursus quam interdum in. Nulla enim ante, vestibulum sed purus tristique, faucibus bibendum augue. Pellentesque sed enim sed augue pretium tempus et a enim.Phasellus dictum, enim vitae laoreet convallis, justo elit lobortis tortor, at placerat ipsum lorem ut eros. Morbi faucibus varius ante, at mattis felis bibendum eget. Mauris imperdiet convallis nibh sit amet bibendum. Sed justo nulla, volutpat eu turpis sit amet, pulvinar porttitor ante. Pellentesque sagittis libero quis molestie convallis. Fusce fringilla faucibus consequat. Aliquam eu justo eu tortor dignissim sagittis. Proin eget mauris ut quam dignissim rhoncus eu congue metus. Praesent nisl magna, tincidunt id felis at, fringilla ultrices nisl. Nunc consectetur, augue in tempus aliquet, nibh ante placerat est, at hendrerit nulla metus vitae mauris. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum quis imperdiet lacus.'),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              child: Text('Adicionar'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Adicionar tarefa'),
                      content: TextField(),
                      actions: [
                        TextButton(
                          child: Text('Cancelar'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        ElevatedButton(
                          child: Text('OK'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
class TaskTypesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipos de tarefas'),
      ),
      body: Stack(
        children: [
          Center(
            child: Text('Body content goes here'),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              child: Text('Adicionar'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Adicionar tarefa'),
                      content: TextField(),
                      actions: [
                        TextButton(
                          child: Text('Cancelar'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        ElevatedButton(
                          child: Text('OK'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TasksListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarefas'),
      ),
      body: Stack(
        children: [
          Center(
            child: Text('lorem ipsum'),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              child: Text('Adicionar'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Adicionar tarefa'),
                      content: TextField(),
                      actions: [
                        TextButton(
                          child: Text('Cancelar'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        ElevatedButton(
                          child: Text('OK'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
