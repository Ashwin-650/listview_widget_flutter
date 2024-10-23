import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
        backgroundColor: Colors.grey[300],
      ),
      body: ListView.separated(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {},
              title: const Text('Person'),
              leading: const Icon(Icons.person),
              trailing: const Icon(Icons.menu),
              tileColor: const Color.fromARGB(255, 167, 152, 103),
              iconColor: Colors.white,
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return (index + 6) % 5 == 0
              ? ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 235, 205, 166),
                    child: Text('S'),
                  ),
                  title: const Text('Seperator'),
                  subtitle: const Text('hello there'),
                  trailing: Container(
                    color: Color.fromARGB(255, 235, 205, 166),
                    alignment: Alignment.center,
                    width: 50,
                    height: 20,
                    child: const Text('Click'),
                  ),
                )
              : const SizedBox(
                  width: 0,
                  height: 0,
                );
        },
      ),
    ));
  }
}
