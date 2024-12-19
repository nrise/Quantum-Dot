import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/widgets.dart';

class ComposableBottomSheet extends StatelessWidget {
  final BottomSheetHeaderUiState? _headerUiState;
  final Widget _contents;

  const ComposableBottomSheet({
    BottomSheetHeaderUiState? headerUiState,
    required Widget contents,
  })  : _headerUiState = headerUiState,
        _contents = contents;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Column(
          children: [
            BottomSheetTop(),
            if (_headerUiState != null)
              BottomSheetHeader(
                uiState: _headerUiState,
              ),
            _contents,
          ],
        ),
      ],
    );
  }
}