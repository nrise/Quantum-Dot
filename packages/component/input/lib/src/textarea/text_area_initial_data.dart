import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:input/input.dart';

part 'text_area_initial_data.freezed.dart';

@freezed
class TextAreaInitialData with _$TextAreaInitialData {
  const factory TextAreaInitialData({
    @Default(null) String? label,
    @Default(null) String? helperMessage,
    @Default(null) String? placeholder,
    @Default(null) int? maxCount,
    @Default(null) TextInputType? inputType,
    @Default("") String text,
    @Default(TextInputFocusState.focusout()) TextInputFocusState focusState,
    @Default(TextInputErrorState.none()) TextInputErrorState errorState,
    @Default(TextInputState.inactive) TextInputState state,
  }) = _TextAreaInitialData;

  factory TextAreaInitialData.fromUiState(TextAreaUiState uiState) {
    return TextAreaInitialData(
      label: uiState.label,
      helperMessage: uiState.helperMessage,
      placeholder: uiState.placeholder,
      maxCount: uiState.maxCount,
      inputType: uiState.inputType,
      text: uiState.text,
      focusState: uiState.focusState,
      errorState: uiState.errorState,
      state: uiState.state,
    );
  }
}

extension TextAreaInitialDataExtension on TextAreaInitialData {
  TextAreaUiState toUiState() {
    return TextAreaUiState(
      label: label,
      helperMessage: helperMessage,
      placeholder: placeholder,
      maxCount: maxCount,
      inputType: inputType,
      text: text,
      focusState: focusState,
      errorState: errorState,
      state: state,
    );
  }
}