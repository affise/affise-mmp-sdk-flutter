import 'dart:async';

import 'package:affise_attribution_lib/affise.dart';
import 'package:flutter/material.dart';

import '../../settings/app_settings.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  final _domainController = TextEditingController();
  final _appIdController = TextEditingController();
  final _secretKeyController = TextEditingController();

  AppSettings _settings = const AppSettings();
  String _version = '';

  @override
  void initState() {
    super.initState();
    _version = Affise.debug.version();
    _loadSettings();
  }

  @override
  void dispose() {
    unawaited(_persistTextFields());
    _domainController.dispose();
    _appIdController.dispose();
    _secretKeyController.dispose();
    super.dispose();
  }

  Future<void> _loadSettings() async {
    final storedSettings = await AppSettings.load();
    final backgroundTracking = await Affise.isBackgroundTrackingEnabled();
    final tracking = await Affise.isTrackingEnabled();
    final settings = storedSettings.copyWith(
      backgroundTracking: backgroundTracking,
      tracking: tracking,
    );

    if (!mounted) {
      return;
    }

    setState(() {
      _settings = settings;
      _domainController.text = settings.domain;
      _appIdController.text = settings.affiseAppId;
      _secretKeyController.text = settings.secretKey;
    });

    await settings.save();
  }

  Future<void> _saveSettings(AppSettings settings) async {
    setState(() {
      _settings = settings;
    });
    await settings.save();
  }

  Future<void> _saveTextFields() {
    return _saveSettings(_settingsFromTextFields());
  }

  Future<void> _persistTextFields() {
    return _settingsFromTextFields().save();
  }

  AppSettings _settingsFromTextFields() {
    return _settings.copyWith(
      domain: _domainController.text,
      affiseAppId: _appIdController.text,
      secretKey: _secretKeyController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        TextField(
          controller: _domainController,
          decoration: const InputDecoration(labelText: 'Domain'),
          textInputAction: TextInputAction.next,
          onEditingComplete: _saveTextFields,
        ),
        SwitchListTile(
          title: const Text('Production mode'),
          value: _settings.production,
          onChanged: (value) {
            _saveSettings(_settings.copyWith(production: value));
          },
        ),
        SwitchListTile(
          title: const Text('Offline Mode'),
          value: _settings.offlineMode,
          onChanged: (value) {
            _saveSettings(_settings.copyWith(offlineMode: value));
            Affise.setOfflineModeEnabled(value);
          },
        ),
        SwitchListTile(
          title: const Text('Background Tracking'),
          value: _settings.backgroundTracking,
          onChanged: (value) {
            _saveSettings(_settings.copyWith(backgroundTracking: value));
            Affise.setBackgroundTrackingEnabled(value);
          },
        ),
        SwitchListTile(
          title: const Text('Tracking'),
          value: _settings.tracking,
          onChanged: (value) {
            _saveSettings(_settings.copyWith(tracking: value));
            Affise.setTrackingEnabled(value);
          },
        ),
        SwitchListTile(
          title: const Text('Debug Request'),
          value: _settings.debugRequest,
          onChanged: (value) {
            _saveSettings(_settings.copyWith(debugRequest: value));
          },
        ),
        SwitchListTile(
          title: const Text('Debug Response'),
          value: _settings.debugResponse,
          onChanged: (value) {
            _saveSettings(_settings.copyWith(debugResponse: value));
          },
        ),
        TextField(
          controller: _appIdController,
          decoration: const InputDecoration(labelText: 'App ID'),
          textInputAction: TextInputAction.next,
          onEditingComplete: _saveTextFields,
        ),
        TextField(
          controller: _secretKeyController,
          decoration: const InputDecoration(labelText: 'Secret Key'),
          textInputAction: TextInputAction.done,
          onEditingComplete: _saveTextFields,
        ),
        ListTile(
          title: const Text(
            'version',
            textAlign: TextAlign.center,
          ),
          subtitle: Text(
            _version,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
