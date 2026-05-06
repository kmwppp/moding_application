import 'package:flutter/material.dart';
import 'package:kpostal/kpostal.dart';

class AddressSearchScreen extends StatefulWidget {
  const AddressSearchScreen({super.key});

  @override
  State<AddressSearchScreen> createState() => _AddressSearchScreenState();
}

class _AddressSearchScreenState extends State<AddressSearchScreen> {
  bool _didPop = false;

  void _popOnce(Kpostal result) {
    if (_didPop) return;
    _didPop = true;
    // Navigator.of(context).pop(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: KpostalView(useLocalServer: true, callback: _popOnce),
            ),
            Positioned(
              left: 8,
              top: 8,
              child: Material(
                color: Colors.white,
                shape: const CircleBorder(),
                elevation: 2,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
