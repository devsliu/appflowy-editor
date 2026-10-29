import 'package:appflowy_editor/src/editor/util/file_picker/file_picker_service.dart';
import 'package:file_picker/file_picker.dart' as fp;
import 'package:file_picker_platform_interface/file_picker_platform_interface.dart' as pfi;

class AppFlowyFilePicker implements FilePickerService {
  @override
  Future<String?> getDirectoryPath({String? title}) {
    return fp.FilePicker.getDirectoryPath();
  }

  @override
  Future<FilePickerResult?> pickFiles({
    String? dialogTitle,
    String? initialDirectory,
    pfi.FileType type = pfi.FileType.any,
    List<String>? allowedExtensions,
    Function(pfi.FilePickerStatus p1)? onFileLoading,
  }) async {
    final result = await fp.FilePicker.pickFiles(
      dialogTitle: dialogTitle,
      initialDirectory: initialDirectory,
      type: type,
      allowedExtensions: allowedExtensions,
      onFileLoading: onFileLoading,
    );

    return FilePickerResult(result);
  }
}
