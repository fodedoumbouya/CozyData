import 'dart:math';

import 'package:cozy_data/cozy_data.dart';
import 'package:flutter/material.dart';

import 'model/person.dart';
import '../utils/utils.dart';
import 'widgets/editableListTile.dart';

class SimpleExample extends StatefulWidget {
  const SimpleExample({super.key});

  @override
  State<SimpleExample> createState() => _SimpleExampleState();
}

class _SimpleExampleState extends State<SimpleExample> {
  final CozyQueryListener<Person> personQuery =
      CozyData.queryListener<Person>();

  @override
  void dispose() {
    personQuery.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(242, 242, 247, 1),
        title: const Text("Simple Example"),
      ),
      body: ListenableBuilder(
        listenable: personQuery,
        builder: (context, _) {
          final persons = personQuery.items;
          if (persons.isEmpty) {
            return const Center(
              child: Text(
                "Please click the + button to add a new person\n\nOnce added, you can edit the person's name and age by tapping on the name or age",
                textAlign: TextAlign.center,
              ),
            );
          }
          return ListView.builder(
            itemCount: persons.length,
            itemBuilder: (context, index) {
              final person = persons[index];
              return EditableListTile(person: person);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          /// just a simple autoincrementer to generate the id
          /// .init() is used to initialize the autoincrementer with the current count of the query
          AutoIncrementer autoIncrementer = AutoIncrementer()
              .init(personQuery.controller.queryBuilder.count());
          final id = autoIncrementer.getNextId();

          /// Create a new person with the generated id
          final person = Person(
            id: id,
            name: "New Person $id",
            age: Random().nextInt(100),
          );

          // Save the person to the database
          // Make sure to use the model <Model> to save in the database
          await CozyData.save<Person>(person);
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
      ),
    );
  }
}
