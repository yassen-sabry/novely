import 'package:flutter/material.dart';
import 'package:novely/screens/novel_view.dart';
import 'package:novely/widgets/custom_button.dart';
import 'package:novely/widgets/custom_text_field.dart';

class ChaptersScreen extends StatelessWidget {
  const ChaptersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chapters'),),
      floatingActionButton: FloatingActionButton(onPressed: () {
      showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        context: context, builder: (context) {
        return const Add_Novel_Button();
      });
      }, child: const Icon(Icons.add),),
      body: const home_body(),
    );
  }
}

class home_body extends StatelessWidget {
  const home_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView.builder(itemBuilder:  (BuildContext context, int index) {
        return const NovelView();
      },)
      );
  }
}

class Add_Novel_Button extends StatelessWidget {
  const Add_Novel_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(height: 20,),
            CustomTextField(hint: 'Content', maxlines: 5,),
            SizedBox(height: 40),
            CustomButton(name: 'add',),
          ],
        ),
      ),
    );
  }
}