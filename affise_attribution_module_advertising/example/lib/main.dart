import 'dart:async';

import 'package:affise_attribution_lib/affise.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, this.initialize = true});

  final bool initialize;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _status = 'Initializing Affise';
  String _version = 'Loading';
  String _versionNative = 'Loading';
  String _modulesError = '';
  List<AffiseModules> _modules = const [];

  @override
  void initState() {
    super.initState();
    loadAffiseInfo();
    if (widget.initialize) {
      initAffise();
    }
  }

  Future<void> loadAffiseInfo() async {
    final version = Affise.debug.version();

    try {
      final versionNative = await Affise.debug.versionNative();
      final modules = await Affise.module.getModulesInstalled();

      if (!mounted) return;
      setState(() {
        _version = version;
        _versionNative = versionNative;
        _modules = modules;
        _modulesError = '';
      });
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _version = version;
        _versionNative = 'Failed: $error';
        _modulesError = 'Failed to load modules: $error';
      });
    }
  }

  Future<void> initAffise() async {
    final completer = Completer<void>();

    try {
      Affise.settings(
        affiseAppId: '129',
        secretKey: '93a40b54-6f12-443f-a250-ebf67c5ee4d2',
      )
          .setProduction(false)
          .setDomain('https://tracking.affattr.com')
          .setOnInitSuccess(() {
        if (!completer.isCompleted) {
          completer.complete();
        }
      }).setOnInitError((error) {
        if (!completer.isCompleted) {
          completer.completeError(error);
        }
      }).start();

      await completer.future.timeout(const Duration(seconds: 10));

      if (!mounted) return;
      setState(() {
        _status = 'Affise initialized';
      });
      loadAffiseInfo();
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _status = 'Affise init failed: $error';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Affise Advertising Module')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                _status,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              Text(
                'Installed modules',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 8),
              Expanded(
                child: _modulesError.isNotEmpty
                    ? Center(child: Text(_modulesError))
                    : _modules.isEmpty
                        ? const Center(child: Text('No modules loaded'))
                        : ListView.separated(
                            itemCount: _modules.length,
                            separatorBuilder: (_, __) =>
                                const Divider(height: 1),
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(_modules[index].value),
                              );
                            },
                          ),
              ),
              const SizedBox(height: 16),
              Text('Affise version: $_version'),
              const SizedBox(height: 4),
              Text('Affise native version: $_versionNative'),
            ],
          ),
        ),
      ),
    );
  }
}
