import 'package:flutter/material.dart';
import 'package:green_hornet/model/request_leave_data_structure.dart';
import 'package:green_hornet/ui/screen/leave_request_screen/leave_request_detail_screen.dart';
import 'package:green_hornet/ui/widget/common_space_divider_widget.dart';
import '../../../utils/colors.dart';
import '../../../utils/helper.dart';
import '../drawer_screen/drawer_widget.dart';
class LeaveRequestWidget extends StatefulWidget {
  final uBaAttachFile;
   LeaveRequestWidget({super.key, this.uBaAttachFile});

  @override
  State<LeaveRequestWidget> createState() => _LeaveRequestWidgetState();
}

class _LeaveRequestWidgetState extends State<LeaveRequestWidget> {


  @override
  Widget build(BuildContext context) {
    List<LeaveRequestData> dummyLRData = [
      LeaveRequestData(
          userName: 'U Ba',
          grade: 'Year-3 (Gold)',
          studentName: 'Ko Ko',
          postTimeStamp: DateTime.now().subtract(Duration(days: 2)),
          postTitle: 'Sick Leave because of too much rain and Ko Ko is so Lazy to come to school',
          postDescription: 'At some point in your career, you may want to take some time off work. Regardless of your specific reason, you can do this by submitting a leave request to your employer. Knowing how to properly structure your request is a useful skill that may help you throughout your career. In this article, we explain what a leave request is, show you how to write a leave request email and provide a few examples of effective leave request emails that you can use as inspiration when drafting your own.',
          timeUploaded: DateTime(2021,3,24),
          startDate: DateTime(2023,1,7),
          endDate: DateTime(2023,1,14),
          status: true,
          attachmentFiles: widget.uBaAttachFile
      ),
      LeaveRequestData(
          userName: 'Daw Mya',
          grade: 'Year-4 (Sapphire)',
          studentName: 'Mg Mg',
          postTimeStamp: DateTime.now().subtract(Duration(days: 5)),
          postTitle: 'Covid Leave',
          postDescription: 'At some point in your career, you may want to take some time off work. Regardless of your specific reason, you can do this by submitting a leave request to your employer. Knowing how to properly structure your request is a useful skill that may help you throughout your career. In this article, we explain what a leave request is, show you how to write a leave request email and provide a few examples of effective leave request emails that you can use as inspiration when drafting your own.',
          timeUploaded: DateTime(2021,1,5),
          startDate: DateTime(2022,12,23),
          endDate: DateTime(2022,12,28),
          status: false
      )
    ];


    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: buildAppTitleRow(() {
                showPopup(context);
              },
                  dateFormatted(date: DateTime.now().toString(),
                      formatType: formatForDateTime(FormatType.date)),
                  title: 'Leave Request'
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(

                          backgroundColor: AppColor.themeNavyBlueColor
                      ),
                      onPressed: (){

                      }, child: const Row(
                    children: [
                      Text('Add Request',style: TextStyle(color: Colors.white),),
                      Icon(Icons.add_rounded,color: Colors.white,),
                    ],
                  ))
                ],
              ),
            ),
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(
                        color: Colors.grey
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                      separatorBuilder: (context,index){
                        return const Divider(color: Colors.grey,);
                      },
                      itemCount: dummyLRData.length,
                      itemBuilder: (context,index){
                        return _leaveRequest(dummyLRData[index] );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _leaveRequest(LeaveRequestData data){
    return ListTile(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context)=>  LeaveRequestDetail(leaveRequestData: data,)
            ));
      },
       leading: 
      Column(
        children: [
          if(data.timeUploaded != null)
            Text(
              dateFormatted(
                  date: data.timeUploaded.toString(),
                  formatType: formatForDateTime(FormatType.d)),
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25),),
          if(data.timeUploaded != null)
            Text(
                dateFormatted(
                    date: data.timeUploaded.toString(),
                    formatType: formatForDateTime(FormatType.MMM))),
        ],
      ),
      title:  Text(data.postTitle ?? '',
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18),),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(data.studentName ?? '',style: const TextStyle(fontWeight: FontWeight.bold),),
              horizontalSpace(7),
              Text(data.grade ?? '')
            ],
          ),
          Row(
            children: [
              //Text('From '),
              Text(dateFormatted(date: data.startDate.toString(),
                  formatType: formatForDateTime(FormatType.date)),style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
              ),),
              const Text(' To '),
              Text(dateFormatted(date: data.endDate.toString(),
                  formatType: formatForDateTime(FormatType.date)),style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),)
            ],
          ),
        ],
      ),
      isThreeLine: true,
      trailing:
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

    );


  }

}





