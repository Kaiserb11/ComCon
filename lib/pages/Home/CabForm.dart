import 'package:ComCon/services/cabFormFill.dart';
import 'package:flutter/material.dart';

class CabFormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CabFormScreenState();
  }
}

class CabFormScreenState extends State<CabFormScreen> {
  String name = '';
  String time = '';
  String phone = '';
  String vehicalSeat = '';
  String location = '';
  String error = '';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'This Field is Required';
        }

        return null;
      },
      onChanged: (val) {
        setState(() => name = val);
      },
    );
  }

  Widget _buildTime() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Time'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'This Field is Required';
        }

        return null;
      },
      onChanged: (val) {
        setState(() => time = val);
      },
    );
  }

  Widget _buildPhone() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone Number'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'This Field is Required';
        }

        return null;
      },
      onChanged: (val) {
        setState(() => phone = val);
      },
    );
  }

  Widget _buildVehicalSeat() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Vehical Capacity'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'This Field is Required';
        }

        return null;
      },
      onChanged: (val) {
        setState(() => vehicalSeat = val);
      },
    );
  }

  Widget _buildLocation() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Drop Location'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'This Field is Required';
        }

        return null;
      },
      onChanged: (val) {
        setState(() => location = val);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent[100],
          title: Text("Form Demo"),),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(15),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildName(),
                  _buildTime(),
                  _buildPhone(),
                  _buildVehicalSeat(),
                  _buildLocation(),
                  SizedBox(height: 10),
                  RaisedButton(
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        await CabService().fillForm(name, time, phone, vehicalSeat, location);
                        
                      }
                      //Send to API
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
