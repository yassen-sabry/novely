import 'package:flutter/material.dart';
import 'package:novely/widgets/custom_button.dart';
import 'package:novely/widgets/custom_image_feild.dart';
import 'package:novely/widgets/custom_text_field.dart';
import 'package:novely/widgets/novel_item.dart';

void main() {
  runApp(const Home_Page());
}

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Home'),),
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
      child: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return const NovelItem();
      },
  )
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
            CustomImageFeild(),
            SizedBox(height: 40),
            CustomButton(name: 'add',),
          ],
        ),
      ),
    );
  }
}