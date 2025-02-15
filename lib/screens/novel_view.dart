import 'package:flutter/material.dart';

class NovelView extends StatelessWidget {
  const NovelView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context){
      //               return const ChaptersScreen();
      //             }));},
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.cyan,
          ),
          child: Column(
            children: [
              ListTile(
                title: const Text('Ch 1'),
                trailing: IconButton(onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context){
                  //   return const NovelEdit();
                  // }));
                }, icon: const Icon(Icons.edit),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}