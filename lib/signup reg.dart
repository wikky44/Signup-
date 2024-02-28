
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup/page%20one.dart';

class RegistrationForm extends StatelessWidget{
  TextEditingController _controller = TextEditingController();
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate)
      (() {
        selectedDate = picked;
        _controller.text = picked.toString();
      });
  }

@override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up',style:TextStyle(color: Colors.blue,fontSize:30,fontWeight:FontWeight.bold),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => pageone()),
          );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildTextFieldWithIcon(
                label: 'First Name',
                icon: Icons.person,
              ),
              SizedBox(height: 10.0),
              _buildTextFieldWithIcon(
                label: 'Mobile Number',
                icon: Icons.phone,
              ),
              SizedBox(height: 10.0),
              _buildTextFieldWithIcon(
                label: 'Email',
                icon: Icons.email,
              ),
              Text('Password info'),
              SizedBox(height: 10.0),
              _buildTextFieldWithIconWithSuffixIcon(
                label: 'Create Password',
                icon: Icons.lock,
              ),
              SizedBox(height: 10.0),
              _buildTextFieldWithIconWithSuffixIcon(
                label: 'Confirm Password',
                icon: Icons.lock,
              ),
              SizedBox(height: 10.0),
              _buildGenderSelection(),
              SizedBox(height: 10.0),
              _buildWorkScrollDownView(),
              SizedBox(height: 10.0),
              _buildTextFieldWithIcon(
                label: 'Education',
                icon: Icons.school,
              ),
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Date of Birth',
              suffixIcon: IconButton(
                icon: Icon(Icons.calendar_today),
                onPressed: () => _selectDate(context),
              ),
            ),
            readOnly: true,
          ),
              ElevatedButton(child: Text('Continue',selectionColor: Colors.blue,),
                onPressed: () {
                  // Handle continue button press
                },style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              )],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldWithIcon({
    required String label,
    required IconData icon,
  }) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.blue),
      ),
    );
  }

  Widget _buildTextFieldWithIconWithSuffixIcon({
    required String label,
    required IconData icon,
  }) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.blue),
        suffixIcon: Icon(Icons.visibility, color: Colors.blue),
      ),
    );
  }

  Widget _buildGenderSelection() {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: 'Gender',
        prefixIcon: Icon(Icons.person, color: Colors.blue),
      ),
      items: ['Male', 'Female', 'Other']
          .map((String value) => DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      ))
          .toList(),
      onChanged: (String? value) {
        // Handle gender selection
      },
    );
  }

  Widget _buildWorkScrollDownView() {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: 'Work',
        prefixIcon: Icon(Icons.work, color: Colors.blue),
      ),
      items: [' IT', ' Technical', 'Government']
          .map((String value) => DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      ))
          .toList(),
      onChanged: (String? value) {
        // Handle work selection
      },
    );
  }
}