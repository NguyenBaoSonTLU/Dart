import 'package:flutter/material.dart';

class Bai1Stateless extends StatelessWidget {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();

  Bai1Stateless({super.key});

  int _tinhTong() {
    final so1 = int.tryParse(controller1.text) ?? 0;
    final so2 = int.tryParse(controller2.text) ?? 0;
    return so1 + so2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bài 1 - Stateless')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: controller1,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Nhập số thứ nhất'),
            onChanged: (_) => (context as Element).markNeedsBuild(),
          ),
          TextField(
            controller: controller2,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Nhập số thứ hai'),
            onChanged: (_) => (context as Element).markNeedsBuild(),
          ),
          const SizedBox(height: 20),
          Text('Tổng: ${_tinhTong()}'),
        ],
      ),
    );
  }
}
