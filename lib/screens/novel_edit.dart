import 'package:flutter/material.dart';
import 'package:novely/widgets/custom_button.dart';
import 'package:novely/widgets/custom_image_feild.dart';
import 'package:novely/widgets/custom_text_field.dart';

class NovelEdit extends StatelessWidget {
  const NovelEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.16), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 80,),
              CustomTextField(
                hint: 'Title',
              ),
              SizedBox(height: 20,),
              CustomImageFeild(),
              SizedBox(height: 40),
              CustomButton(name: 'save',),
            ],
          ),
      ),
    );
  }
}