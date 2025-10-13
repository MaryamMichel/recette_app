import 'package:flutter/material.dart';

class AddForm extends StatelessWidget {
  const AddForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9FAFB),
      appBar: AppBar(
        title: Text('Ajouter une recette',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
      ),
      body:
      Padding(
        padding: EdgeInsets.all(25.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width:  MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                        borderSide: const BorderSide(color: Color(0xFFE5E7EB), width: 1),
                        borderRadius: BorderRadius.circular(12),
                  )),
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
                        borderSide: const BorderSide(color: Color(0xFFE5E7EB), width: 1),
                        borderRadius: BorderRadius.circular(12),
                      )
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
                      borderSide: const BorderSide(color: Color(0xFFE5E7EB), width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Décrivez les étapes de préparation...',
                  ),
                ),
                Row(
                  children: [
                    Flexible(
                      flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Text("Temps :"),
                            ),
                            SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFFFFFFF),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xFFE5E7EB), width: 1),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0, left: 8.0),
                            child: Text("Portions :"),
                          ),
                          SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFFFFFFF),
                                  enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(0xFFE5E7EB), width: 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only( top: 20.0 ),
                  child: Container(
                    width: double.infinity,
                    height: 180.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFE5E7EB), width: 1.0),
                      borderRadius: BorderRadius.circular(8.0),
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.camera_alt_rounded, size: 40.0, color: Colors.grey),
                        SizedBox(height: 8),
                        Text('Ajouter une photo'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {},
                      child: Text('Publier la reccet',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
