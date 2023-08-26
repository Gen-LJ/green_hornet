import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../../model/request_leave_data_structure.dart';
import '../../../utils/colors.dart';
import '../../../utils/helper.dart';
import '../../widget/pdf_view_screen.dart';

class LeaveRequestDetail extends StatefulWidget {
  final LeaveRequestData leaveRequestData;
  const LeaveRequestDetail({super.key, required this.leaveRequestData});

  @override
  State<LeaveRequestDetail> createState() => _LeaveRequestDetailState();
}

class _LeaveRequestDetailState extends State<LeaveRequestDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.leaveRequestData.postTitle ?? ''),
        backgroundColor: AppColor.themeGreenColor,),
      body: SingleChildScrollView(
          child: _leaveRequestDetail(widget.leaveRequestData)),
    );
  }

  Widget _leaveRequestDetail(LeaveRequestData data){
    return Padding(
      padding: const EdgeInsets.only(top: 2,bottom: 2),
      child: Card(
          elevation: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.person,size: 34,),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(data.userName?? '',style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            const SizedBox(height: 3,),
                            Row(
                              children: [
                                Text(data.grade?? '',style: const TextStyle(fontSize: 15),),
                                const SizedBox(width: 10,),
                                //Text(readTimestamp(data.timeStamp!),style: TextStyle(fontSize: 20),),
                                Text(timeago.format(data.postTimeStamp!),style: const TextStyle(fontSize: 15),),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                    data.status ?
                    TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: AppColor.cRedText
                        ),
                        onPressed: (){

                        }, child: const Text('Pending',style: TextStyle(color: Colors.white),)) :
                    TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: AppColor.themeGreenColor
                        ),
                        onPressed: (){

                        }, child: const Text('Approved',style: TextStyle(color: Colors.white),))

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('Student Name   :  ${data.studentName ?? ''}',style: const TextStyle(fontSize: 17),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('Student Grade   :  ${data.grade ?? ''}',style: const TextStyle(fontSize: 17),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    const Text('Request Date     :  ',style: TextStyle(fontSize: 17),),
                    Text(dateFormatted(date: data.startDate.toString(),
                        formatType: formatForDateTime(FormatType.date)),style: const TextStyle(
                      fontSize: 17,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                    ),),
                    const Text(' To '),
                    Text(dateFormatted(date: data.endDate.toString(),
                        formatType: formatForDateTime(FormatType.date)),style: const TextStyle(
                      fontSize: 17,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              const Divider(),
              const Padding(padding: EdgeInsets.only(left: 10),
                child: Text('Description',style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),),),
              Padding(
                padding: const EdgeInsets.only(top :10 ,left: 10,bottom: 10),
                child: Text(data.postDescription?? '',style: const TextStyle(fontSize: 17),),
              ),
              if(data.attachmentFiles != null)
                const Divider(),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> PdfViewScreen(file: data.attachmentFiles,)));
                },
                    child: Text(data.attachmentFiles ?? '')),
            ],
          )

      ),
    );
  }

}
