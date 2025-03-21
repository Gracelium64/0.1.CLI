class Task {
  final int taskId;
  final String taskCatagory;
  final String taskDesctiption;
  final String? deadlineDate;
  final String? deadlineTime;
  final String? dayOfWeek;
  final bool isDone;

  Task(
    this.taskId,
       this.taskCatagory,
       this.taskDesctiption, 
       this.deadlineDate,
       this.deadlineTime,
       this.dayOfWeek,
       this.isDone,
      );

  @override
  String toString() {
    // TODO: implement toString
    return 'Id: $taskId; Cat: $taskCatagory;  Desc: $taskDesctiption; DL: $deadlineDate $deadlineTime; Day: $dayOfWeek  Done? ${isDone.toString()}';
  }
}