import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'package:green_hornet/ui/widget/common_space_divider_widget.dart';
import 'package:green_hornet/utils/colors.dart';
import 'package:open_file/open_file.dart';
import '../../../utils/helper.dart';

class AddRequestScreen extends StatefulWidget {
  const AddRequestScreen({super.key});

  @override
  State<AddRequestScreen> createState() => _AddRequestScreenState();
}

class _AddRequestScreenState extends State<AddRequestScreen>
    with SingleTickerProviderStateMixin {
  //TextEditingController _name = TextEditingController();
  //TextEditingController _grade = TextEditingController();
  TextEditingController _title = TextEditingController();
  TextEditingController _description = TextEditingController();
  TextEditingController _startDate = TextEditingController();
  TextEditingController _endDate = TextEditingController();

  // File? _file;
  List<PlatformFile>? _platformFile;
  late AnimationController loadingController;

  selectFile() async {
    final result = await FilePicker.platform
        .pickFiles(type: FileType.any, allowMultiple: true);
    if (result == null) return;
    _platformFile = result.files;
    // if(file != null) {
    //   _file = File(file.files.single.path!);
    //   _platformFile = file.files.first;
    //   final newFile = await saveFilePermanently(_platformFile!);
    // }
    loadingController.forward();
    // if(file == null){
    //   return;
    // }
  }

  openFile(PlatformFile file) async {
    OpenFile.open(file.path);
  }

  //
  // Future<File> saveFilePermanently(PlatformFile file) async {
  //   final appStorage = await getApplicationDocumentsDirectory();
  //   final newFile = File('${appStorage.path}/${file.name}');
  //   return File(file.path!).copy(newFile.path);
  // }

  @override
  void initState() {
    loadingController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Request Form',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.person,
                      size: 30,
                    ),
                  ),
                  Text(
                    "Name",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              const Divider(),
              // TextFormField(
              //   decoration: InputDecoration(
              //       labelText: 'Enter Student Name',
              //       prefixIcon: const Icon(Icons.book),
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(10)
              //       )
              //   ),
              //   controller: _name,
              // ),
              // verticalSpace(10),
              // TextFormField(
              //   decoration: InputDecoration(
              //       labelText: 'Enter Grade',
              //       prefixIcon: const Icon(Icons.book),
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(10)
              //       )
              //   ),
              //   controller: _grade,
              // ),
              // verticalSpace(10),
              // TextFormField(
              //   decoration: InputDecoration(
              //       labelText: 'Enter Title',
              //       prefixIcon: const Icon(Icons.title),
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(10))),
              //   controller: _title,
              // ),
              verticalSpace(10),
              TextFormField(
                maxLines: 6,
                decoration: InputDecoration(
                    labelText: 'Enter Description',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                controller: _description,
              ),
              verticalSpace(10),
              Row(
                children: [
                  SizedBox(
                    width: 300,
                    child: Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.none,
                          controller: _startDate,
                          decoration: InputDecoration(
                            labelText: 'Select Start Date',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          onTap: selectStartDate),
                    ),
                  ),
                  IconButton(
                      onPressed: selectStartDate,
                      icon: const Icon(Icons.calendar_today_rounded))
                ],
              ),
              verticalSpace(10),
              Row(
                children: [
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      keyboardType: TextInputType.none,
                        controller: _endDate,
                        decoration: InputDecoration(
                          labelText: 'Select End Date',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onTap: selectEndDate),
                  ),
                  IconButton(
                      onPressed: selectEndDate,
                      icon: Icon(Icons.calendar_today_rounded))
                ],
              ),
              verticalSpace(10),
              ElevatedButton(
                  onPressed: () {
                    selectFile();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.themeGreenColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.add), Text('Attach Files')],
                  )),

              // ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //         backgroundColor: AppColor.themeGreenColor),
              //     onPressed: selectFile,
              //     child: const Row(
              //       crossAxisAlignment: CrossAxisAlignment.stretch,
              //       children: [
              //         Icon(Icons.add), Text('Attach Files')
              //       ],
              //     )),
              if (_platformFile != null)
                GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    itemCount: _platformFile!.length,
                    itemBuilder: (context, index) {
                      final file = _platformFile![index];
                      return buildFile(file);
                    }),
              // _platformFile != null ?
              //     Container(
              //       padding: EdgeInsets.all(10),
              //       child: Column(
              //         children: [
              //           Container(
              //             padding: EdgeInsets.all(8),
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(10),
              //               color: Colors.white
              //
              //             ),
              //             child: Row(
              //               children: [
              //                 ClipRRect(
              //                   borderRadius: BorderRadius.circular(8),
              //                   child: Icon(Icons.picture_as_pdf_outlined),
              //                 ),
              //                 SizedBox(width: 10,),
              //                 Expanded(
              //                     child: Column(
              //                       crossAxisAlignment: CrossAxisAlignment.start,
              //                       children: [
              //                         Text(_platformFile!.name,
              //                         style: TextStyle(
              //                           fontSize: 13,color: Colors.black
              //                         ),
              //                         ),
              //                         SizedBox(height: 5,),
              //                         Text('${_platformFile!.size}'),
              //                         SizedBox(height: 5,),
              //                         Container(
              //                           height: 5,
              //                           clipBehavior: Clip.hardEdge,
              //                           decoration: BoxDecoration(
              //                             borderRadius: BorderRadius.circular(5),
              //                             color: Colors.blue
              //                           ),
              //                           child: LinearProgressIndicator(
              //                             value: loadingController.value,
              //                           ),
              //                         )
              //                       ],
              //                     )
              //                 ),
              //                 SizedBox(width: 10,)
              //
              //               ],
              //             ),
              //           ),
              //
              //         ],
              //       ),
              //     ) : Container(
              //   // height: 150,
              //   // color: Colors.black,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                      child: Text('Cancel')),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.themeNavyBlueColor),
                      onPressed: () {},
                      child: const Text('Upload')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFile(PlatformFile file) {
    final kb = file.size / 1024;
    final mb = kb / 1024;
    final fileSize = mb >= 1
        ? '${mb.toStringAsFixed(2)} mb '
        : '${kb.toStringAsFixed(2)} kb';
    final extension = file.extension ?? 'none';
    final color = getColor(extension);
    return InkWell(
      onTap: () async {
        OpenFile.open(file.path);
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        //color: Colors.pink,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              //height: 20,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(10)),
              child: Text(
                '.$extension',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )),
            const SizedBox(
              height: 8,
            ),
            Text(
              file.name,
              style: const TextStyle(overflow: TextOverflow.ellipsis),
            ),
            Text(fileSize),
            Container(
              height: 5,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.blue),
              child: LinearProgressIndicator(
                value: loadingController.value,
              ),
            )
          ],
        ),
      ),
    );
  }

  selectStartDate() async {
    DateTime? pickStartDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(3000));
    if (pickStartDate != null) {
      setState(() {
        _startDate.text = dateFormatted(
            date: pickStartDate.toString(),
            formatType: formatForDateTime(FormatType.date));
      });
    }
  }

  selectEndDate() async {
    DateTime? pickStartDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(3000));
    if (pickStartDate != null) {
      setState(() {
        _endDate.text = dateFormatted(
            date: pickStartDate.toString(),
            formatType: formatForDateTime(FormatType.date));
      });
    }
  }

  getColor(String extension) {
    if (extension == 'pdf') {
      return Colors.red;
    } else if (extension == 'none') {
      return Colors.black;
    } else if (extension == 'jpeg') {
      return Colors.blue;
    }
  }
}
