import 'package:ComCon/constant.dart';
import 'package:ComCon/pages/Home/detail_screen.dart';
import 'package:flutter/material.dart';

class PoolCard extends StatelessWidget {
  final _name;
  final _location;
  final _time;
  final _capacity;

  PoolCard(this._name, this._location, this._time, this._capacity,);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: kOrangeColor.withOpacity(1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: ListTile(
            title: Text(
              'Location : $_location',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "Name : $_name\nTime : $_time\nCapacity : $_capacity",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
