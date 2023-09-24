import 'package:flutter/material.dart';
import 'package:userlist_modalpopup/core/colors.dart';
import 'package:userlist_modalpopup/src/model/userdetails_model.dart';

void showAddressModal(BuildContext context, UserDetailsMOdel user) {
  showModalBottomSheet(
    backgroundColor: skyblue,
    context: context,
    builder: (context) {
      return Container(
        height: MediaQuery.of(context).size.height*0.25,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Address Details :',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(height: 12),
            Text('Street: ${user.address['street']}'),
            const SizedBox(height: 2),
            Text('Suite: ${user.address['suite']}'),
            const SizedBox(height: 2),
            Text('City: ${user.address['city']}'),
            const SizedBox(height: 2),
            Text('Zipcode: ${user.address['zipcode']}'),
            const SizedBox(height: 2),
            Text('Phone Number: ${user.number}')
          ],
        ),
      );
    },
  );
}
