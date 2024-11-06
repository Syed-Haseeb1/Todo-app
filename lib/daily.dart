// ignore: unused_import
import 'package:todolist_app/notesdashboard.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DailyView extends StatefulWidget {
  DailyView({super.key});
  TextEditingController emailController =
      TextEditingController(); //(text:"abc") default text in text field
  TextEditingController passController = TextEditingController();

  @override
  State<DailyView> createState() => _DailyViewState();
}

class _DailyViewState extends State<DailyView> {
  List todo = [
    {
      'name': 'Complete Assigment 03',
      'date': '2 November 2024',
    },
    {
      'name': 'Call Mark',
      'date': '8 November 2024',
    },
    {
      'name': 'Take Appointment of Cardiology',
      'date': '2 November 2024',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 107, 121, 192),
        body: ListView.builder(
          itemCount: todo.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                onTap: () {},
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                title: Text("${todo[index]['name']}"),
                subtitle: Row(
                  children: [
                    const Icon(Icons.calendar_month),
                    Text("${todo[index]['date']}"),
                    const Icon(Icons.flag),
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {
                          todo.removeAt(index);
                          setState(() {});
                        },
                        icon: const Icon(Icons.delete_outline)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.edit_outlined)) //updtae
                  ],
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            TextEditingController titleController = TextEditingController();
            TextEditingController discriptionController =
                TextEditingController();
            Navigator.of(context).push(MaterialPageRoute<void>(
              fullscreenDialog: true,
              builder: (BuildContext context) {
                return Scaffold(
                  backgroundColor: Color.fromARGB(255, 107, 121, 192),
                  appBar: AppBar(
                    backgroundColor: Color.fromARGB(255, 107, 121, 192),
                    title: const Text('Create New Task',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    leading: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                  body: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Column(children: [
                        SizedBox(
                          width: 300,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text("Title",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                      color: Colors.white)),
                              TextField(
                                controller: titleController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text("Discription",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                      color: Colors.white)),
                              TextField(
                                controller: discriptionController,
                                maxLines: 5,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Text("Chosse priority",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            width: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      foregroundColor: Colors.black,
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'High',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey,
                                      foregroundColor: Colors.black,
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'Normal',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green,
                                      foregroundColor: Colors.black,
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'Low',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 150),
                          child: SizedBox(
                            width: 300,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: Size.fromWidth(250),
                                      backgroundColor: Colors.green,
                                      foregroundColor: Colors.black,
                                    ),
                                    onPressed: () {
                                      
                                      todo.add(
                                        {
                                          'name': "${titleController.text}",
                                          'date':"${discriptionController.text}",
                                        },
                                      );
                                    },
                                    child: const Text(
                                      'Add',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                );
              },
            ));
            setState(() {});
          },
          child: const Icon(Icons.add),
        ));
  }
}