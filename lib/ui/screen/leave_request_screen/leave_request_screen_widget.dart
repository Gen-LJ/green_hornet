import 'package:flutter/material.dart';
import 'package:green_hornet/model/request_leave_data_structure.dart';
import 'package:green_hornet/ui/screen/leave_request_screen/leave_request_detail_screen.dart';
import 'package:green_hornet/ui/widget/common_space_divider_widget.dart';
import '../../../utils/colors.dart';
import '../../../utils/helper.dart';
import '../drawer_screen/drawer_widget.dart';
class LeaveRequestWidget extends StatefulWidget {
  const LeaveRequestWidget({super.key});

  @override
  State<LeaveRequestWidget> createState() => _LeaveRequestWidgetState();
}

class _LeaveRequestWidgetState extends State<LeaveRequestWidget> {
  List<LeaveRequestData> dummyLRData = [
    LeaveRequestData(
      grade: 'Year-3 (Gold)',
      studentName: 'Ko Ko',
      postTitle: 'Sick Leave because of too much rain and Ko Ko is so Lazy to come to school',
      timeUploaded: DateTime(2021,3,24),
      startDate: DateTime(2023,1,7),
      endDate: DateTime(2023,1,14),
      status: true
    ),
    LeaveRequestData(
        grade: 'Year-4 (Sapphire)',
        studentName: 'Mg Mg',
        postTitle: 'Covid Leave',
        timeUploaded: DateTime(2021,1,5),
        startDate: DateTime(2022,12,23),
        endDate: DateTime(2022,12,28),
        status: false
    )
  ];

  @override
  Widget build(BuildContext context) {
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

                      }, child: Row(
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
                builder: (context)=> LeaveRequestDetail()
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
              Text('${data.studentName ?? ''}',style: TextStyle(fontWeight: FontWeight.bold),),
              horizontalSpace(7),
              Text('${data.grade ?? ''}')
            ],
          ),
          Row(
            children: [
              //Text('From '),
              Text(dateFormatted(date: data.startDate.toString(),
                  formatType: formatForDateTime(FormatType.date)),style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
              ),),
              Text(' To '),
              Text(dateFormatted(date: data.endDate.toString(),
                  formatType: formatForDateTime(FormatType.date)),style: TextStyle(
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

          }, child: Text('Pending',style: TextStyle(color: Colors.white),)) :
        TextButton(
            style: TextButton.styleFrom(
                backgroundColor: AppColor.themeGreenColor
            ),
            onPressed: (){

            }, child: Text('Approved',style: TextStyle(color: Colors.white),))

    );


  }

}





