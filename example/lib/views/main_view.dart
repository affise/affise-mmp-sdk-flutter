import 'package:flutter/material.dart';

import 'api/api_view.dart';
import 'events/events_view.dart';
import '../components/affise_tab_bar.dart';
import '../settings/app_settings.dart';
import 'predefined/predefined_view.dart';
import 'settings/settings_view.dart';
import 'store/store_view.dart';

class MainView extends StatefulWidget {
  const MainView(this.output, {super.key});

  static const _tabs = <String, IconData>{
    'API': Icons.swap_horiz,
    'Events': Icons.file_upload,
    'Store': Icons.store,
  };

  final ValueNotifier<String> output;

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  bool _showSettings = false;
  bool _showPredefined = false;
  bool _useCustomPredefined = false;
  static const _eventsTabIndex = 1;

  bool get _isEventsTab => _tabController.index == _eventsTabIndex;

  bool get _showEditButton => !_showSettings && _isEventsTab;

  bool get _showAppBar => !_showSettings && !_showPredefined;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: MainView._tabs.length,
      vsync: this,
    )..addListener(_onTabChanged);
    _loadSettings();
  }

  @override
  void dispose() {
    _tabController
      ..removeListener(_onTabChanged)
      ..dispose();
    super.dispose();
  }

  void _onTabChanged() {
    setState(() {
      if (!_isEventsTab) {
        _showPredefined = false;
      }
    });
  }

  void _togglePredefined() {
    setState(() {
      _showPredefined = !_showPredefined;
    });
  }

  void _toggleSettings() {
    setState(() {
      _showSettings = !_showSettings;
      _showPredefined = false;
    });
  }

  Future<void> _loadSettings() async {
    final settings = await AppSettings.load();

    if (!mounted) {
      return;
    }

    setState(() {
      _useCustomPredefined = settings.useCustomPredefined;
    });
  }

  void _setUseCustomPredefined(bool value) {
    setState(() {
      _useCustomPredefined = value;
    });
  }

  Widget _buildBody() {
    if (_showSettings) {
      return const SettingsView();
    }

    if (_showPredefined) {
      return PredefinedView(
        useCustomPredefined: _useCustomPredefined,
        onUseCustomPredefinedChanged: _setUseCustomPredefined,
      );
    }

    return TabBarView(
      controller: _tabController,
      children: [
        ApiView(widget.output),
        EventsView(useCustomPredefined: _useCustomPredefined),
        const StoreView(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_showEditButton) ...[
            FloatingActionButton(
              onPressed: _togglePredefined,
              backgroundColor: _useCustomPredefined ? Colors.red : null,
              foregroundColor: _useCustomPredefined ? Colors.white : null,
              shape: const CircleBorder(),
              child: Icon(_showPredefined ? Icons.check : Icons.edit),
            ),
            const SizedBox(height: 16),
          ],
          if (!_showPredefined)
            FloatingActionButton(
              onPressed: _toggleSettings,
              shape: const CircleBorder(),
              child: Icon(_showSettings ? Icons.check : Icons.settings),
            ),
        ],
      ),
      appBar: _showAppBar
          ? AppBar(
              title: AffiseTabBar(
                tabs: MainView._tabs,
                controller: _tabController,
              ),
            )
          : null,
      body: SafeArea(child: _buildBody()),
    );
  }
}
