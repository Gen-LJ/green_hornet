class LeaveRequestData{

  final String? userName;
  final String? studentName;
  final String? userThumbnail;
  final String? grade;
  final bool status;
  final DateTime? postTimeStamp;
  final DateTime? timeUploaded;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? postTitle;
  final String? postDescription;
  final String? attachmentFiles;

  LeaveRequestData({
    this.userName,
    this.studentName,
    this.userThumbnail,
    this.grade,
    required this.status,
    this.postTimeStamp,
    this.startDate,
    this.endDate,
    this.timeUploaded,
    this.postTitle,
    this.postDescription,
    this.attachmentFiles,

  });


}