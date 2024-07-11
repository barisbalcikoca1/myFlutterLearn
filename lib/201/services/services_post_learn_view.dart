import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/201/services/post_model.dart';

class ServicesPostLearnView extends StatefulWidget {
  const ServicesPostLearnView({super.key});

  @override
  State<ServicesPostLearnView> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServicesPostLearnView> {
  final String _baseUrl = "https://jsonplaceholder.typicode.com/posts";
  bool _isLoading = false;
  late final Dio _networkManager;

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();
  String? name;

  @override
  void initState() {
    super.initState();
    _networkManager = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemToService(PostModel postModel) async {
    _changeLoading();
    final response = await _networkManager.post(_baseUrl, data: postModel);

    setState(() {
      if (response.statusCode == HttpStatus.created) {
        //201 Created
        name = "Başarılı";
      } else {
        name = "Başarısız";
      }
    });
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sercies Learn POST MODEL"),
        ),
        body: Column(
          children: [
            TextField(
                controller: _titleController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(labelText: "Title")),
            TextField(
                controller: _bodyController,
                keyboardType: TextInputType.streetAddress,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(labelText: "Body")),
            TextField(
                controller: _userIdController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "UserId")),
            Text(name ?? ""),
            TextButton(
                onPressed: _isLoading
                    ? null
                    : () {
                        if (_titleController.text.isNotEmpty &&
                            _bodyController.text.isNotEmpty &&
                            _userIdController.text.isNotEmpty) {
                          final model = PostModel(
                              body: _bodyController.text,
                              title: _titleController.text,
                              userId: int.tryParse(_userIdController.text));

                          _addItemToService(model);
                        } else {
                          setState(() {
                            name = "Başarısız";
                          });
                        }
                      },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text("Send"))
          ],
        ));
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    super.key,
    required PostModel? model,
  }) : _model = model;

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_model?.title ?? ""),
        subtitle: Text(_model?.body ?? ""),
      ),
    );
  }
}
