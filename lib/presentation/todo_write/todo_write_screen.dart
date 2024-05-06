import 'package:flutter/material.dart';
import 'package:todo_calendar/domain/model/todo.dart';
import 'package:todo_calendar/presentation/todo_write/component/custom_field_container.dart';
import 'package:todo_calendar/presentation/todo_write/component/custom_text_form_field.dart';
import 'package:todo_calendar/presentation/todo_write/todo_write_view_model.dart';
import 'package:provider/provider.dart';

class TodoWriteScreen extends StatefulWidget {
  final Todo? todo;
  final DateTime selectedDay;

  const TodoWriteScreen({
    this.todo,
    required this.selectedDay,
    super.key,
  });

  @override
  State<TodoWriteScreen> createState() => _TodoWriteScreenState();
}

class _TodoWriteScreenState extends State<TodoWriteScreen> {

  final formKey = GlobalKey<FormState>();
  String title = '';
  String content = '';
  late DateTime date = widget.selectedDay;
  TimeOfDay startTime = const TimeOfDay(hour: 0, minute: 0);
  TimeOfDay endTime = const TimeOfDay(hour: 0, minute: 0);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TodoWriteViewModel>();
    final state = viewModel.state;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          top: true,
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _DateField(
                    isDateFocus: state.isDateFocus,
                    date: date,
                    onTap: () async {
                      viewModel.onDateFocus();
                      await selectDate(context);
                      viewModel.unDateFocus();
                    },
                  ),
                  const SizedBox(height: 16.0,),
                  Row(
                    children: [
                      Flexible(
                        child: _StartTimeField(
                          isStartTimeFocus: state.isStartTimeFocus,
                          startTime: startTime,
                          onTap: () async {
                            viewModel.onStartTimeFocus();
                            await selectTime(context, true);
                            viewModel.unStartTimeFocus();
                          },
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Flexible(
                        child: _EndTimeField(
                          isEndTimeFocus: state.isEndTimeFocus,
                          endTime: endTime,
                          onTap: () async {
                            viewModel.onEndTimeFocus();
                            await selectTime(context, false);
                            viewModel.unEndTimeFocus();
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0,),
                  CustomTextFormField(
                    hintText: '제목을 입력해 주세요.',
                    onChanged: (value) {
                      formKey.currentState!.validate();
                    },
                    onSaved: (value) {
                      title = value!;
                    },
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return '제목을 입력해 주세요.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0,),
                  CustomTextFormField(
                    hintText: '내용을 입력해 주세요.',
                    onChanged: (value) {
                      formKey.currentState!.validate();
                    },
                    onSaved: (value) {
                      content = value!;
                    },
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return '내용을 입력해 주세요.';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          onSavePressed(context);
        },
        child: const Icon(Icons.check,),
      ),
    );
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if(picked != null) {
      date = DateTime.utc(
        picked.year,
        picked.month,
        picked.day,
      );
    }
  }

  Future<void> selectTime(BuildContext context, bool isStartTime) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if(picked != null) {
      if(isStartTime) {
        startTime = picked;
      }else{
        endTime = picked;
      }
    }
  }

  void onSavePressed(BuildContext context) async {
    if(formKey.currentState == null) {
      return;
    }
    if(formKey.currentState!.validate()) {
      formKey.currentState!.save();
      final viewModel = context.read<TodoWriteViewModel>();
      await viewModel.saveTodo(
        date: date,
        startTime: startTime,
        endTime: endTime,
        title: title,
        content: content,
      );
      Navigator.of(context).pop(true);
    }
  }
}

class _DateField extends StatelessWidget {
  final bool isDateFocus;
  final DateTime date;
  final VoidCallback onTap;

  const _DateField({
    required this.isDateFocus,
    required this.date,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomFieldContainer(
        isFocus: isDateFocus,
        child: Row(
          children: [
            const SizedBox(width: 30,),
            const Icon(Icons.calendar_month),
            Expanded(
              child: Center(
                child: Text(
                  '${date.year}-${(date.month).toString().padLeft(2, '0')}-${(date.day).toString().padLeft(2, '0')}',
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class _StartTimeField extends StatelessWidget {
  final bool isStartTimeFocus;
  final TimeOfDay startTime;
  final VoidCallback onTap;

  const _StartTimeField({
    required this.isStartTimeFocus,
    required this.startTime,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomFieldContainer(
        isFocus: isStartTimeFocus,
        child: Row(
          children: [
            const SizedBox(width: 30,),
            const Icon(Icons.watch_later_outlined),
            Expanded(
              child: Center(
                child: Text(
                  '${(startTime.hour).toString().padLeft(2, '0')}:${(startTime.minute).toString().padLeft(2, '0')}',
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EndTimeField extends StatelessWidget {
  final bool isEndTimeFocus;
  final TimeOfDay endTime;
  final VoidCallback onTap;

  const _EndTimeField({
    required this.isEndTimeFocus,
    required this.endTime,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomFieldContainer(
        isFocus: isEndTimeFocus,
        child: Row(
          children: [
            const SizedBox(width: 30,),
            const Icon(Icons.watch_later_outlined),
            Expanded(
              child: Center(
                child: Text(
                  '${(endTime.hour).toString().padLeft(2, '0')}:${(endTime.minute).toString().padLeft(2, '0')}',
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

