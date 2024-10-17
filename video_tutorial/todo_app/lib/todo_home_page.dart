import 'package:flutter/material.dart';
class TodoHomePage extends StatefulWidget {
@override
_TodoHomePageState createState() => _TodoHomePageState();
}
class _TodoHomePageState extends State<TodoHomePage> {
List<String> _tasks = []; // Lista de tarefas
final TextEditingController _controller =
TextEditingController(); // Controlador para o campo de texto
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('To-Do List'), // Título da barra de navegação
),
body: Column(
children: [
Expanded(
child: ListView.builder(
itemCount: _tasks.length, // Número de tarefas
itemBuilder: (context, index) {
return ListTile(
title: Text(_tasks[index]), // Tarefa exibida
trailing: IconButton(
icon: Icon(Icons.delete), // Botão para remover a tarefa
onPressed: () {
setState(() {
_tasks.removeAt(
index); // Remove a tarefa ao pressionar o botão
});
},
),
);
},
),
),
Padding(
padding: const EdgeInsets.all(8.0), // Espaçamento
child: Row(
children: [
Expanded(
child: TextField(
controller: _controller, // Controlador do campo de texto
decoration: InputDecoration(
labelText: 'Nova Tarefa'), // Rótulo do campo
),
),
IconButton(
icon: Icon(Icons.add), // Botão para adicionar nova tarefa
onPressed: () {
if (_controller.text.isNotEmpty) {
setState(() {
_tasks.add(_controller.text); // Adiciona tarefa
});
_controller.clear(); // Limpa o campo de texto
}
},
),
],
),
),
],
),
);
}
}
