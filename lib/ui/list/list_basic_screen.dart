import 'package:flutter/material.dart';
import 'package:flutter_widgets/constant/constant.dart';
import 'package:flutter_widgets/model/model.dart';

class ListBasicScreen extends StatelessWidget {
  ListBasicScreen({Key? key}) : super(key: key);

  final List<ProfileModel> _listProfiles = ProfileModel.liverpoolProfiles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Basic Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        children: List.generate(
          _listProfiles.length,
          (index) => Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(_listProfiles[index].image),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          _listProfiles[index].name,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.grey[900],
                          ),
                        ),
                        Text(
                          StringConstant.shortLoremIpsum,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}