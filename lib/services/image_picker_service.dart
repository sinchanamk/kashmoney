import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  //Return a [File] object pointing to the image that was picked.
  Future<PickedFile> pickImage({required ImageSource source}) async {
    final xFileSource = await ImagePicker().pickImage(
        source: source, maxHeight: 200, maxWidth: 200, imageQuality: 60);
    return PickedFile(xFileSource!.path);
  }
}
class ImagePickerService1 {
  //Return a [File] object pointing to the image that was picked.
  Future<PickedFile> pickImage({required ImageSource source}) async {
    final xFileSource = await ImagePicker().pickImage(
        source: source, maxHeight: 200, maxWidth: 200, imageQuality: 60);
    return PickedFile(xFileSource!.path);
  }
}