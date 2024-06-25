import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  bool isCheckListEnabled = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note"),

      ),

      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text("title"),
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 20,),
            TextFormField(

              maxLines: 8,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Content",
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckListEnabled,
                  onChanged: (value) {
                    setState(() {
                      isCheckListEnabled = value!;
                    });
                  },
                ),
                Text("create checkList")
              ],
            )
          ],
        ),
      ),
    );
  }
}
