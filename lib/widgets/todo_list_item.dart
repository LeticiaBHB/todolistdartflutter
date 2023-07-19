import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

import '../models/todo.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({Key? key, required this.todo, required this.onDelete})
      : super(key: key);

  final Todo todo;
  final Function(Todo) onDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Slidable(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[200],
          ),
          padding: const EdgeInsets.all(16),
          //espaçamento de dentro
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //PARA FICAR DO LADO ESQUERDO A COLUNA,
            children: [
              Text(
                DateFormat('dd/MM/yyyy - EE - HH:mm').format(todo.dateTime),
                style: TextStyle(fontSize: 12),
              ),
              Text(
                todo.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        actionExtentRatio: 0.20,
        actionPane: const SlidableDrawerActionPane(),
        secondaryActions: [ //aparedem botoes do lado direito
          IconSlideAction(
              color: Colors.red,
              icon: Icons.delete,
              caption: 'Delete',
              onTap: () {
                onDelete(todo);
              },
          ),
        ],
      ),
    );
  }
}
