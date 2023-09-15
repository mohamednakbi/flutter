import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mohamed_s_application1/presentation/setting_preference_page/models/setting_preference_model.dart';
part 'setting_preference_event.dart';
part 'setting_preference_state.dart';

class SettingPreferenceBloc
    extends Bloc<SettingPreferenceEvent, SettingPreferenceState> {
  SettingPreferenceBloc(SettingPreferenceState initialState)
      : super(initialState) {
    on<SettingPreferenceInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingPreferenceInitialEvent event,
    Emitter<SettingPreferenceState> emit,
  ) async {
    emit(state.copyWith(
      currencyOneController: TextEditingController(),
      timezoneOneController: TextEditingController(),
    ));
  }
}
