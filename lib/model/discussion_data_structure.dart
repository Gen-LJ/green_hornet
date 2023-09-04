class DiscussionData{

  final String? userName;
  final String? userThumbnail;
  final String? grade;
  final DateTime? postTimeStamp;
  final String? postContent;
  final List<String>? postImage;
  final int? postCommentCount;
  final String? postVideo;
  final bool status;

  DiscussionData({
    this.userName,
    this.userThumbnail,
    this.grade,
    this.postTimeStamp,
    this.postContent,
    this.postImage,
    this.postCommentCount,
    this.postVideo,
    required this.status

  });


}