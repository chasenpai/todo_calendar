import 'package:flutter/material.dart';
import 'package:todo_calendar/presentation/todo_write/component/custom_text_form_field.dart';

class TodoWriteScreen extends StatefulWidget {
  const TodoWriteScreen({super.key});

  @override
  State<TodoWriteScreen> createState() => _TodoWriteScreenState();
}

class _TodoWriteScreenState extends State<TodoWriteScreen> {

  final formKey = GlobalKey<FormState>();
  bool dateFocus = false;
  bool startTimeFocus = false;
  bool endTimeFocus= false;
  String title = '';
  String content = '';
  DateTime date = DateTime.now();
  TimeOfDay startTime = const TimeOfDay(hour: 0, minute: 0);
  TimeOfDay endTime = const TimeOfDay(hour: 0, minute: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
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
                  GestureDetector(
                    onTap: () async {
                      setState(() {
                        FocusScope.of(context).unfocus();
                        dateFocus = true;
                      });
                      await selectDate(context);
                      setState(() {
                        dateFocus = false;
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      height: 62,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onInverseSurface,
                        borderRadius: BorderRadius.circular(16.0),
                        border: dateFocus ? Border.all(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1.5,
                        ) : null,
                      ),
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
                  ),
                  const SizedBox(height: 16.0,),
                  Row(
                    children: [
                      Flexible(
                        child: GestureDetector(
                          onTap: () async {
                            setState(() {
                              FocusScope.of(context).unfocus();
                              startTimeFocus = true;
                            });
                            await selectTime(context, true);
                            setState(() {
                              startTimeFocus = false;
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            height: 62,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.onInverseSurface,
                              borderRadius: BorderRadius.circular(16.0),
                              border: startTimeFocus ? Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1.5,
                              ) : null,
                            ),
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
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Flexible(
                        child: GestureDetector(
                          onTap: () async {
                            setState(() {
                              FocusScope.of(context).unfocus();
                              endTimeFocus = true;
                            });
                            await selectTime(context, false);
                            setState(() {
                              endTimeFocus = false;
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            height: 62,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.onInverseSurface,
                              borderRadius: BorderRadius.circular(16.0),
                              border: endTimeFocus ? Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1.5,
                              ) : null,
                            ),
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
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0,),
                  CustomTextFormField(
                    hintText: '제목을 입력해 주세요.',
                    onChanged: (value) {
                      title = value;
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
                      content = value;
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
          onSavePressed();
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
      date = picked;
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

  void onSavePressed() {
    if(formKey.currentState == null) {
      return;
    }
    if(formKey.currentState!.validate()) {
      formKey.currentState!.save();
      print('pass');
    }else{
      print('error');
    }
  }
}
