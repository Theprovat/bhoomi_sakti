// import 'package:flutter/material.dart';
// import 'model/test_report_model.dart';

// class SoilTestInputForm extends StatefulWidget {
//   @override
//   _SoilTestInputFormState createState() => _SoilTestInputFormState();
// }

// class _SoilTestInputFormState extends State<SoilTestInputForm> {
//   final _formKey = GlobalKey<FormState>();

//   double _phLevel = 0;
//   double _nitrogenContent = 0;
//   double _phosphorusContent = 0;
//   double _potassiumContent = 0;
//   String _testDate = '';

//   // Function to handle form submission
//   void _submitForm() {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();

//       // Create a SoilTestReport instance
//       SoilTestReport report = SoilTestReport(
//         phLevel: _phLevel,
//         nitrogenContent: _nitrogenContent,
//         phosphorusContent: _phosphorusContent,
//         potassiumContent: _potassiumContent,
//         testDate: _testDate,
//       );

//       // Save the report (in a real-world scenario, this would involve an API call or local database operation)
//       // Example: saveSoilTestReport(report);

//       print('Report Submitted: $report');

//       // Provide feedback to the agent
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Soil Test Report updated successfully!')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Update Soil Test Report'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Displaying farmer's details
//               Text('Farmer Name: farmerName', style: TextStyle(fontSize: 16)),
//               SizedBox(height: 8),
//               Text('Mobile Number: mobileNumber',
//                   style: TextStyle(fontSize: 16)),
//               SizedBox(height: 8),
//               Text('Soil Test Name: soilTestName',
//                   style: TextStyle(fontSize: 16)),
//               SizedBox(height: 16),

//               // Displaying test date
//               Text('Test Date: testDate', style: TextStyle(fontSize: 16)),
//               SizedBox(height: 16),

//               TextFormField(
//                 decoration: InputDecoration(labelText: 'pH Level'),
//                 keyboardType: TextInputType.number,
//                 onSaved: (value) {
//                   _phLevel = double.parse(value!);
//                 },
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter pH level';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Nitrogen Content (N)'),
//                 keyboardType: TextInputType.number,
//                 onSaved: (value) {
//                   _nitrogenContent = double.parse(value!);
//                 },
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter nitrogen content';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 decoration:
//                     InputDecoration(labelText: 'Phosphorus Content (P)'),
//                 keyboardType: TextInputType.number,
//                 onSaved: (value) {
//                   _phosphorusContent = double.parse(value!);
//                 },
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter phosphorus content';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Potassium Content (K)'),
//                 keyboardType: TextInputType.number,
//                 onSaved: (value) {
//                   _potassiumContent = double.parse(value!);
//                 },
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter potassium content';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Test Date'),
//                 onSaved: (value) {
//                   _testDate = value!;
//                 },
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter the test date';
//                   }
//                   return null;
//                 },
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 child: ElevatedButton(
//                   onPressed: _submitForm,
//                   child: Text('Submit Report'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// soil_test_form.dart

import 'package:flutter/material.dart';

class SoilTestReport {
  double phLevel;
  double nitrogenContent;
  double phosphorusContent;
  double potassiumContent;
  String testDate;

  SoilTestReport({
    required this.phLevel,
    required this.nitrogenContent,
    required this.phosphorusContent,
    required this.potassiumContent,
    required this.testDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'phLevel': phLevel,
      'nitrogenContent': nitrogenContent,
      'phosphorusContent': phosphorusContent,
      'potassiumContent': potassiumContent,
      'testDate': testDate,
    };
  }

  factory SoilTestReport.fromMap(Map<String, dynamic> map) {
    return SoilTestReport(
      phLevel: map['phLevel'],
      nitrogenContent: map['nitrogenContent'],
      phosphorusContent: map['phosphorusContent'],
      potassiumContent: map['potassiumContent'],
      testDate: map['testDate'],
    );
  }
}

class SoilTestInputForm extends StatefulWidget {
  @override
  _SoilTestInputFormState createState() => _SoilTestInputFormState();
}

class _SoilTestInputFormState extends State<SoilTestInputForm> {
  final _formKey = GlobalKey<FormState>();

  double _phLevel = 0;
  double _nitrogenContent = 0;
  double _phosphorusContent = 0;
  double _potassiumContent = 0;
  String _testDate = '';

  // Fixed details about the farmer and the test
  String farmerName = 'Bhuban Ruidas';
  String mobileNumber =
      '123-456-7890'; // You can put a real or placeholder number
  String soilTestName = 'Soil Health Test';

  @override
  void initState() {
    super.initState();
    // Automatically set the test date to current date/time when the form is first opened
    _testDate = DateTime.now().toString();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // Create the SoilTestReport instance
      SoilTestReport report = SoilTestReport(
        phLevel: _phLevel,
        nitrogenContent: _nitrogenContent,
        phosphorusContent: _phosphorusContent,
        potassiumContent: _potassiumContent,
        testDate: _testDate,
      );

      // Save the report (e.g., send to an API or database)
      saveSoilTestReport(report);

      // Provide feedback to the agent
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Soil Test Report updated successfully!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Soil Test Report'),
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.white),
        //   onPressed: () {
        //     Navigator.pop(context); // Go back to the previous page
        //   },
        // ),
      ),
      // Wrap the entire body with SingleChildScrollView and set resizeToAvoidBottomInset
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Displaying farmer's details
                Text('Farmer Name: $farmerName',
                    style: TextStyle(fontSize: 16)),
                SizedBox(height: 8),
                Text('Mobile Number: $mobileNumber',
                    style: TextStyle(fontSize: 16)),
                SizedBox(height: 8),
                Text('Soil Test Name: $soilTestName',
                    style: TextStyle(fontSize: 16)),
                SizedBox(height: 16),

                // Displaying test date
                Text('Test Date: $_testDate', style: TextStyle(fontSize: 16)),
                SizedBox(height: 16),

                // pH Level input
                TextFormField(
                  decoration: InputDecoration(labelText: 'pH Level'),
                  keyboardType: TextInputType.number,
                  onSaved: (value) {
                    _phLevel = double.parse(value!);
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter pH level';
                    }
                    return null;
                  },
                ),
                // Nitrogen Content input
                TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Nitrogen Content (N)'),
                  keyboardType: TextInputType.number,
                  onSaved: (value) {
                    _nitrogenContent = double.parse(value!);
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter nitrogen content';
                    }
                    return null;
                  },
                ),
                // Phosphorus Content input
                TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Phosphorus Content (P)'),
                  keyboardType: TextInputType.number,
                  onSaved: (value) {
                    _phosphorusContent = double.parse(value!);
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter phosphorus content';
                    }
                    return null;
                  },
                ),
                // Potassium Content input
                TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Potassium Content (K)'),
                  keyboardType: TextInputType.number,
                  onSaved: (value) {
                    _potassiumContent = double.parse(value!);
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter potassium content';
                    }
                    return null;
                  },
                ),
                // Submit button
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: _submitForm,
                    child: Text('Submit Report'),
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

// Function to simulate saving the report
void saveSoilTestReport(SoilTestReport report) {
  // You would call a backend API or save it to a local database here
  print('Report Submitted: ${report.toMap()}');
}
