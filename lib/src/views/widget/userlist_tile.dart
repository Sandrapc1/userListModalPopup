// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import '../../../core/colors.dart';
import '../../model/userdetails_model.dart';
import '../showaddress_modal.dart';

class UserList_Tile extends StatelessWidget {
  const UserList_Tile({
    super.key,
    required this.filteredUsers,
  });

  final List<UserDetailsMOdel> filteredUsers;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: filteredUsers.length,
        itemBuilder: (context, index) {
          List<String> nameParts = filteredUsers[index].name.split(' ');
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: violet,
                  radius: 27,
                  child: Text(
                    '${nameParts[0][0]}${nameParts[1][0]}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: white),
                  ),
                ),
                title: Text(filteredUsers[index].name),
                subtitle:
                    Text('username: ${filteredUsers[index].userName}'),
                onTap: () {
                  showAddressModal(context, filteredUsers[index]);
                },
              ),
              const Divider()
            ],
          );
        },
      );
  }
}