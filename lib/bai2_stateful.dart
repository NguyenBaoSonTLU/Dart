import 'package:flutter/material.dart';

class Bai2Stateful extends StatefulWidget {
  const Bai2Stateful({super.key});

  @override
  State<Bai2Stateful> createState() => _Bai2StatefulState();
}

class _Bai2StatefulState extends State<Bai2Stateful> {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  int tong = 0;

  void _tinhTong() {
    final so1 = int.tryParse(controller1.text) ?? 0;
    final so2 = int.tryParse(controller2.text) ?? 0;
    setState(() {
      tong = so1 + so2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bài 2 - Stateful')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: controller1,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Nhập số thứ nhất'),
          ),
          TextField(
            controller: controller2,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Nhập số thứ hai'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: _tinhTong,
            child: const Text('Tính tổng'),
          ),
          const SizedBox(height: 20),
          Text('Tổng: $tong'),
        ],
      ),
    );
  }
}
