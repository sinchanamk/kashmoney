import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loanapp/common/color.dart';
import 'package:provider/provider.dart';

import '../common/common_styles.dart';
import '../common/utils.dart';
import '../services/image_picker_service.dart';

class ImageUpload extends StatefulWidget {
  // const ImageUpload(
  //     {Key? key, this.imageFile, required this.customerProvider})
  //     : super(key: key);
  // final ProductImagePickProvider customerProvider;
  late final File? imageFile;

  @override
  State<ImageUpload> createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
            onTap: () async {
              await _chooseImageFile(context);
            },
            child: Container(
              child: Row(
                children: [
                  SizedBox(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: DottedBorder(
                        color: ColorsConsts.grey,
                        dashPattern: [6, 6, 6, 6],
                        child: Container(
                            decoration: BoxDecoration(
                                //border: Border.all(color: ColorsConsts.blackColor),
                                color: ColorsConsts.primary2),
                            height: 150,
                            width: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  onPressed: () => _chooseImageFile(context),
                                  icon: Image.asset(
                                    'assets/camera.png',
                                    height: 28,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 25),
                                  child: Text(
                                    'Front Picture',
                                    style: CommonStyles.textField13w500primarypink(),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: DottedBorder(
                        color: ColorsConsts.grey,
                        dashPattern: [6, 6, 6, 6],
                        child: Container(
                            decoration: BoxDecoration(
                                //border: Border.all(color: ColorsConsts.blackColor),
                                color: ColorsConsts.primary2),
                            height: 150,
                            width: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  onPressed: () => _chooseImageFile(context),
                                  icon: Image.asset(
                                    'assets/camera.png',
                                    height: 28,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 25),
                                  child: Text(
                                    'Back Picture',
                                    style: CommonStyles.textField13w500primarypink(),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }

  Future<void> _chooseImageFile(BuildContext context) async {
    try {
      // 1. Get image from picker

      await showModalBottomSheet(
          context: context, builder: (builder) => bottomSheet(context));

      // final file = await imagePicker.pickImage(source: ImageSource.gallery);
      // 2. Upload to storage
      // 3. Save url to Firestore
      // 4. (optional) delete local file as no longer needed
    } catch (e) {
      print(e);
    }
  }

  Widget bottomSheet(BuildContext context) {
    final imagePicker = Provider.of<ImagePickerService>(context);
    return Container(
      height: 130,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          const Text(
            "Choose Image",
            style: TextStyle(fontSize: 20.0),
          ),
          Utils.getSizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.userCircle,
                        size: 22,
                      ),
                      onPressed: () async {
                        final file = await imagePicker.pickImage(
                            source: ImageSource.camera);
                        File selected = File(
                          file.path,
                        );
                        Navigator.pop(context);
                        //widget.customerProvider.customerPCIDimage = selected;
                      }),
                  const Text(
                    "Camera",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        letterSpacing: 1),
                  )
                ],
              ),
              Utils.getSizedBox(width: 20),
              Column(
                children: [
                  IconButton(
                      icon: const Icon(
                        Icons.image,
                        size: 22,
                      ),
                      onPressed: () async {
                        final file = await imagePicker.pickImage(
                            source: ImageSource.gallery);
                        File selected = File(file.path);
                        Navigator.pop(context);
                        // widget.customerProvider.customerPCIDimage = selected;
                      }),
                  const Text(
                    "Gallery",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        letterSpacing: 1),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
