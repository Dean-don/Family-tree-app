import 'package:flutter/material.dart';
import '../widgets/family_tree_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _person1Controller = TextEditingController();
  final TextEditingController _person2Controller = TextEditingController();
  final TextEditingController _child1Controller = TextEditingController();
  final TextEditingController _child2Controller = TextEditingController();

  String? person1;
  String? person2;
  String? child1;
  String? child2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Family Tree")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text("Family Tree", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildInput("Основатель 1", _person1Controller),
                _buildInput("Основатель 2", _person2Controller),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildInput("Ребёнок 1", _child1Controller),
                _buildInput("Ребёнок 2", _child2Controller),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  person1 = _person1Controller.text.trim();
                  person2 = _person2Controller.text.trim();
                  child1 = _child1Controller.text.trim();
                  child2 = _child2Controller.text.trim();
                });
              },
              child: const Text("Сохранить и Показать"),
            ),
            const SizedBox(height: 30),
            FamilyTreeWidget(
              person1: person1,
              person2: person2,
              child1: child1,
              child2: child2,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInput(String label, TextEditingController controller) {
    return SizedBox(
      width: 150,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
          isDense: true,
        ),
      ),
    );
  }
}
