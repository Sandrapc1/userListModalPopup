// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:userlist_modalpopup/core/colors.dart';
import 'package:userlist_modalpopup/src/views/widget/userlist_tile.dart';
import '../controller/userlist_controller.dart';
import '../model/userdetails_model.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<UserDetailsMOdel> users = [];
  List<UserDetailsMOdel> filteredUsers = [];
  bool isLoading = true; 

  @override
  void initState() {
    super.initState();
    fetchUsers().then((data) {
      setState(() {
        users = data;
        filteredUsers = data;
        isLoading = false; 
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: violet,
        title: const Text(
          'User List',
          style: TextStyle(
            color: white,
          ),
        ),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(), 
            )
          : UserList_Tile(filteredUsers: filteredUsers),
    );
  }
}



