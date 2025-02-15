import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomImageFeild extends StatefulWidget {
  const CustomImageFeild({super.key});

  @override
  State<CustomImageFeild> createState() => _CustomImageFeildState();
}

class _CustomImageFeildState extends State<CustomImageFeild> {

   File? image;
   final imagepicker = ImagePicker();

   uploadImage() async {
    var pickedimage = await imagepicker.pickImage(source: ImageSource.gallery);
    if (pickedimage != null) {
      setState(() {
  image = File(pickedimage.path);
});
    } else {}
   } 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [    
         OutlinedButton(onPressed: uploadImage, child: const Text('Upload cover'),),
        
        SizedBox(
          height: 100,
          width: 100,
          child:image == null ? const Text("Not Chosen Image") : Image.file(image!),)
      ],
    );
  }
}