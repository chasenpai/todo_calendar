import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo_calendar/presentation/calendar/calendar_view_model.dart';

class CalendarScreen extends ConsumerWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(calendarViewModelProvider);
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 8.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onInverseSurface,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: TableCalendar(
                  focusedDay: state.focusedDay,
                  firstDay: DateTime(1800),
                  lastDay: DateTime(3000),
                  availableCalendarFormats: const {
                    CalendarFormat.month: 'month',
                    CalendarFormat.week: 'week',
                  },
                  calendarFormat: state.format,
                  onFormatChanged: (format) {
                    ref.read(calendarViewModelProvider.notifier).changeFormat(format: format);
                  },
                  headerStyle: HeaderStyle(
                    headerMargin: const EdgeInsets.only(bottom: 15.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    titleTextStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                    formatButtonDecoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(
                        16.0,
                      ),
                      color: Colors.white,
                    ),
                    formatButtonTextStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  calendarStyle: CalendarStyle(
                    isTodayHighlighted: false,
                    defaultDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        16.0,
                      ),
                    ),
                    weekendDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        16.0,
                      ),
                    ),
                    selectedDecoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(
                        16.0,
                      ),
                    ),
                    selectedTextStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                    outsideDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        16.0,
                      ),
                    ),
                    markerDecoration: BoxDecoration(
                      color: Colors.blue[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  selectedDayPredicate: (day) {
                    return isSameDay(state.selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    ref.read(calendarViewModelProvider.notifier)
                        .changeDay(selectedDay: selectedDay, focusedDay: focusedDay);
                  },
                  //eventLoader: getEventsForDay,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
