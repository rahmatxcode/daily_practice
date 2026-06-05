import 'package:daily_practice/dp_appbar.dart';
import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  TextEditingController taskController = TextEditingController();

  List<String> tasks = [];

  void addTask() {
    if (taskController.text.isNotEmpty) {
      setState(() {
        tasks.add(taskController.text);
        taskController.clear();
      });
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter a task', style: TextStyle(color: Colors.black)), backgroundColor: Colors.white),
      );
    }
  }

  void deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  void editTask(int index) {
    TextEditingController editController = TextEditingController(text: tasks[index]);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Edit Task'),
        content: TextField(
          controller: editController,
          decoration: InputDecoration(
            labelText: 'Edit Task',
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                tasks[index] = editController.text;
              });
              Navigator.of(context).pop();
            },
            child: Text('Save'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DpAppbar(title: 'Todo List'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: TextField(
                  controller: taskController,
                  decoration: InputDecoration(
                    labelText: 'Enter Task',
                  ),
                )),
                SizedBox(width: 8),
                ElevatedButton(onPressed: addTask, child: Text('Add', style: TextStyle(fontSize: 16, color: Colors.white),)),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(tasks[index]),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () => editTask(index),
                        ),
                              
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () => deleteTask(index),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
