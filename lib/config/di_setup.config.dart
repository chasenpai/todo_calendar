// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:todo_calendar/data/repository/todo_repository_impl.dart' as _i4;
import 'package:todo_calendar/domain/repository/todo_repository.dart' as _i3;
import 'package:todo_calendar/domain/use_case/todo_use_case.dart' as _i5;
import 'package:todo_calendar/presentation/todo_list/todo_list_view_model.dart'
    as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.TodoRepository>(() => _i4.TodoRepositoryImpl());
    gh.singleton<_i5.TodoUseCase>(
        () => _i5.TodoUseCase(gh<_i3.TodoRepository>()));
    gh.factory<_i6.TodoListViewModel>(
        () => _i6.TodoListViewModel(gh<_i5.TodoUseCase>()));
    return this;
  }
}
