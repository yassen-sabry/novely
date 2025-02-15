import 'package:flutter/material.dart';
import 'package:novely/screens/chapters_screen.dart';
import 'package:novely/screens/novel_edit.dart';

class NovelItem extends StatelessWidget {
  const NovelItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const ChaptersScreen();
                  }));},
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 500,
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.cyan,
          ),
          child: Column(
            children: [
              ListTile(
                title: const Text('The beggining after the end'),
                trailing: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const NovelEdit();
                  }));
                }, icon: const Icon(Icons.edit),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}