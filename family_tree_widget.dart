import 'package:flutter/material.dart';

class FamilyTreeWidget extends StatelessWidget {
  final String? person1;
  final String? person2;
  final String? child1;
  final String? child2;

  const FamilyTreeWidget({
    super.key,
    required this.person1,
    required this.person2,
    required this.child1,
    required this.child2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildNode(person1 ?? "Основатель 1"),
            const SizedBox(width: 50),
            _buildNode(person2 ?? "Основатель 2"),
          ],
        ),
        const SizedBox(height: 40),
        const Icon(Icons.arrow_downward),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildNode(child1 ?? "Ребёнок 1"),
            const SizedBox(width: 50),
            _buildNode(child2 ?? "Ребёнок 2"),
          ],
        ),
      ],
    );
  }

  Widget _buildNode(String name) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Text(name, textAlign: TextAlign.center),
    );
  }
}
