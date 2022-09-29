import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ms_globle_task/provider/auth.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final intro = Provider.of<Auth>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Name : ${intro.name} ',style: Theme.of(context).textTheme.titleMedium),
          const Divider(),
          Text('Username : ${intro.username}',style: Theme.of(context).textTheme.titleMedium),
          const Divider(),
          Text('Address : ${intro.address}',style: Theme.of(context).textTheme.titleMedium),
          const Divider(),
          Text('ZipCode : ${intro.zipcode}',style: Theme.of(context).textTheme.titleMedium),
          const Divider(),
        ],
      ),
    );
  }
}