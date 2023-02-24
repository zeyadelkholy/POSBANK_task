
import 'package:flutter/material.dart';
import 'package:posbanktask/screens/Edit_Note_screen.dart';

import 'add_user_screen.dart';
import 'options_screen.dart';

class NoteList extends StatelessWidget {
  const NoteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Notes'),
              automaticallyImplyLeading: false,
              elevation: 3,
              backgroundColor: Colors.blueAccent,
              actions: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.person_add, size: 20),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) =>  AddUser_Screen()));

                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.settings, size: 20),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Option_Screen()));
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.menu, size: 20),
                      onPressed: () {

                      },
                    ),
                  ],
                )
              ],
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.filter_list_outlined,color: Colors.blueAccent),
                      ),
                      const Icon(Icons.search,color: Colors.blueAccent),
                      Flexible(
                        child: TextField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none),
                              hintText: 'Search',
                              hintStyle:
                                  const TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 20),
                    child: Row(
                      children: [
                        Text('Do not forgot to use listview while \n making flutter app'),
                        Spacer(),
                        IconButton(
                          icon: const Icon(Icons.edit, size: 25),
                          onPressed: () {

                          },
                        ),

                      ],
                    ),
                  ),

                  Divider(color: Colors.grey,),

                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 20),
                    child: Row(
                      children: [
                        Text('Do not forgot to use listview while \n making flutter app'),
                        Spacer(),
                        IconButton(
                          icon: const Icon(Icons.edit, size: 25),
                          onPressed: () {

                          },
                        ),

                      ],
                    ),
                  ),

                  Divider(color: Colors.grey,),

                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 20),
                    child: Row(
                      children: [
                        Text('Tes 1'),
                        Spacer(),
                        IconButton(
                          icon: const Icon(Icons.edit, size: 25),
                          onPressed: () {

                          },
                        ),

                      ],
                    ),
                  ),

                  Divider(color: Colors.grey,),

                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 20),
                    child: Row(
                      children: [
                        Text('Tes 2'),
                        Spacer(),
                        IconButton(
                          icon: const Icon(Icons.edit, size: 25),
                          onPressed: () {
                          },
                        ),

                      ],
                    ),
                  ),

                  Divider(color: Colors.grey,),
                ]),
              ),
            ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Edit_Note()));
            },

            child: const Icon(Icons.add),
          ),
        )
    );
  }
}
