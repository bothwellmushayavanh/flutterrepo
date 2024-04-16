class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false
  });

  static List<ToDo> todoList()
  {
    return[
      ToDo(id: '01', todoText: 'Morning Ecercise', isDone: true),
       ToDo(id: '02', todoText: 'Buy grocceries', isDone: true),
        ToDo(id: '03', todoText: 'Write Code', isDone: true),
         ToDo(id: '04', todoText: 'Mujolo baba ', isDone: true),
    ];
  }


}