import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prenom/firstname.dart';

import 'firstnames_repository.dart';

class LoadFirstNames extends ConsumerStatefulWidget {
  const LoadFirstNames({super.key});

  @override
  _LoadFirstNamesState createState() => _LoadFirstNamesState();
}

class _LoadFirstNamesState extends ConsumerState<LoadFirstNames> {
  String? _error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Hey there!',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 10),
          const SizedBox(
            width: 250,
            child: Text(
                'The quotes are not loaded yet. Do you load them from the assets?'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: loadFirstNames,
            child: const Text('Load Quotes!'),
          ),
          const SizedBox(height: 10),
          if (_error != null) Text(_error!),
        ],
      ),
    );
  }

  void loadFirstNames() async {
    try {
      final bytes = await rootBundle.load('assets/girls.json');
      final jsonStr = const Utf8Decoder().convert(bytes.buffer.asUint8List());
      final json = jsonDecode(jsonStr) as List;

      ref.watch(firstNamesRepositoryProvider).isar.write((isar) {
        List<Map<String, dynamic>> list = json
            .map((e) => {
                  'id': e['firstname'],
                  'sex': int.parse(e['sex']),
                  'intention': int.parse(e['intention']),
                  'firstname': e['firstname'],
                  'firstnameWithoutDiacritics': e['firstnameWithoutDiacritics'],
                })
            .toList();

        ref.watch(firstNamesRepositoryProvider).isar.firstNames.importJson(
              list,
            );
        ref.invalidate(firstNamesRepositoryProvider);
      });
    } catch (e) {
      print(e);
      setState(() {
        _error = e.toString();
      });
    }
  }
}
