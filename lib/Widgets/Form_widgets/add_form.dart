import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:recette_app/Widgets/Form_widgets/submit_btn.dart';
import 'package:recette_app/Widgets/Form_widgets/time_portion_form.dart';
import 'package:recette_app/Widgets/Form_widgets/photo.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  XFile? _imageFile;

  Future<void> _takePicture() async {
    // Obtain a list of the available cameras on the device.
    final cameras = await availableCameras();

    // Get a specific camera from the list of available cameras.
    final firstCamera = cameras.first;
    try {
      final CameraController controller = CameraController(
        firstCamera, // <-- from your main.dart global variable
        ResolutionPreset.medium,
      );

      await controller.initialize();

      final XFile image = await controller.takePicture();

      setState(() {
        _imageFile = image;
      });

      await controller.dispose();
    } catch (e) {
      print('Error taking picture: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9FAFB),
      appBar: AppBar(
        title: Text(
          'Ajouter une recette',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // form
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text("Nom de la recette :"),
                ),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFE5E7EB),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text("Ingredients :"),
                ),
                SizedBox(height: 8),
                TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFE5E7EB),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text("Preparation :"),
                ),
                SizedBox(height: 8),
                TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFE5E7EB),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Décrivez les étapes de préparation...',
                  ),
                ),

                // Form: Time & Portions
                time_portion_form(),

                // Photo Section
                PhotoSection(
                  imageFile: _imageFile,
                  onTakePicture: _takePicture,
                  onDeletePicture: () {
                    setState(() {
                      _imageFile = null;
                    });
                  },
                ),

                // Submit BTN
                submit_btn(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
