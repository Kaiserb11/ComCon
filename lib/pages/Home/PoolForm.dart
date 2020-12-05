import 'package:ComCon/services/poolFormFill.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String name = '';
  String time = '';
  String phone = '';
  String vehical = '';
  String vehicalNum = '';
  String vehicalSeat = '';
  String location = '';
  String error = '';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
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
          return 'Name is Required';
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
          return 'Name is Required';
        }

        return null;
      },
      onChanged: (val) {
        setState(() => phone = val);
      },
    );
  }

  Widget _buildVehical() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Vehical'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onChanged: (val) {
        setState(() => vehical = val);
      },
    );
  }

  Widget _buildVehicalNum() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'vehical Number'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onChanged: (val) {
        setState(() => vehicalNum = val);
      },
    );
  }

  Widget _buildVehicalSeat() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Vehical Capacity'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
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
          return 'Name is Required';
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
                  _buildVehical(),
                  _buildVehicalNum(),
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
                        await PoolService().fillForm(name, time, phone, vehical,
                            vehicalNum, vehicalSeat, location);
                        Navigator.pop(context);
                        
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
