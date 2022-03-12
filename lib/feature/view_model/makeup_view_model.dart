import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_weekend/feature/service/makeup_service.dart';

import '../model/makeup_model.dart';

class MakeupCubit extends Cubit<MakeupState> {
  MakeupCubit() : super(MakeupInitial()) {
    getListData();
  }
  late IMakeupService makeupService;
  List<MakeupModel>? makeupModel;
  Future<void> getListData() async {
    emit(MakeupLoading());
    final MakeupModel = await makeupService.fetchMakeupData();
    emit(MakeupComplete(makeupModel));
  }
}

abstract class MakeupState {}

class MakeupInitial extends MakeupState {}

class MakeupLoading extends MakeupState {}

class MakeupComplete extends MakeupState {
  final List<MakeupModel>? items;

  MakeupComplete(this.items);
}

class MakeupErrorState extends MakeupState {}
