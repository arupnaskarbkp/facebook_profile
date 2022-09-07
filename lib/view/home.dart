import 'package:facebook_profile/helper/config.dart';
import 'package:facebook_profile/resource/info_manager.dart';
import 'package:facebook_profile/resource/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/fade_network_image.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Arup Naskar",style: regular(fontSize: 18.sp,color: Colors.black),),
        leading: Icon(Icons.arrow_back_ios,size: 20.h,color: Colors.black,),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search,size: 20.h,color: Colors.black,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: EdgeInsets.all(10.h),
              child: SizedBox(
                height: 420.h,
                child: Stack(
                  children: [
                    MyImage.imageN(url: Config.coverUrl,radius: BorderRadius.circular(5.h),height: 200.h,width:double.infinity,fit: BoxFit.fill),

                    Align(
                      alignment: Alignment.center,
                      child: Stack(
                        children: [
                          CircleAvatar(radius: 80.h,backgroundColor: Colors.white,child: CircleAvatar(radius: 75.h,child: MyImage.imageN(url: Config.profileUrl,height: 150.h,width: 150.h,radius: BorderRadius.circular(100.h),))),
                          Positioned(
                            bottom: 5.h,
                            right: 15.w,
                            child: CircleAvatar(backgroundColor: Colors.grey.withOpacity(0.8),child: Icon(Icons.camera_alt,size: 20.h,color: Colors.black,),),
                          ),
                        ],
                      ),
                    ),

                    Positioned(
                     top: 155.h,
                     right: 15.w,
                     child: CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.camera_alt,size: 20.h,color: Colors.black,),),
                    ),

                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 290.h,),
                          Text("Arup Naskar",style: bold(color: Colors.black, fontSize: 25.sp),),
                          SizedBox(height: 5.h,),
                          Text("Flutter Developer 📱 (Android & Ios)",style: regular(color: Colors.grey, fontSize: 16.sp),),
                          SizedBox(height: 25.h,),
                          FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton.icon(
                                    onPressed: (){},
                                    icon: Icon(Icons.add_circle_outlined,size: 20.h,color: Colors.white,),
                                    label: Text("Add to Story",style: regular(color: Colors.white, fontSize: 16.sp),),
                                    style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff216FDB),
                                    minimumSize: Size(0.w, 38.h),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.h)),
                                    elevation: 0,
                                  ),
                                ),
                                SizedBox(width: 10.w,),
                                ElevatedButton.icon(
                                  onPressed: (){},
                                  icon: Icon(Icons.edit,size: 20.h,color: Colors.black,),
                                  label: Text("Edit Profile",style: regular(color: Colors.black, fontSize: 16.sp),),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffE5E6EB),
                                    minimumSize: Size(0.w, 38.h),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.h)),
                                    elevation: 0,
                                  ),
                                ),
                                SizedBox(width: 10.w,),
                                Container(
                                  height: 40.h,
                                  width: 50.w,

                                  decoration: BoxDecoration(
                                    color: const Color(0xffE5E6EB),
                                    borderRadius: BorderRadius.circular(6.h),
                                  ),
                                  child: Icon(Icons.more_horiz,size: 20.h,color: Colors.black,),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h,),

                  ListTile(
                    dense: true,
                    leading: CircleAvatar(radius: 20.h,child: Icon(Icons.health_and_safety,size: 25.h,),),
                    title: Text("You've locked your profile",style: bold(fontSize: 18.sp,color: Colors.black),),
                    subtitle: Text("Learn More",style: regular(fontSize: 16.sp,color: Colors.blue),),
                  ),
                  Divider(thickness: 1.h,),

                  ListTile(
                    dense: true,
                    leading: Icon(Icons.more_horiz,size: 25.h,),
                    minLeadingWidth: 0.w,
                    title: Text("See your About info",style: regular(fontSize: 16.sp,color: Colors.black),),
                  ),

                  Chip(
                    label: Text("Learning Code",style: regular(fontSize: 14.sp,color: Colors.black),),
                    avatar: Icon(Icons.computer,size: 18.h,),
                    padding: EdgeInsets.all(10.h),
                  ),
                  SizedBox(height: 5.h,),

                  Chip(
                    label: Text("Interior Design & Decorating",style: regular(fontSize: 14.sp,color: Colors.black),),
                    avatar: Icon(Icons.weekend,size: 18.h,),
                    padding: EdgeInsets.all(10.h),
                  ),
                  SizedBox(height: 5.h,),

                  Chip(
                    label: Text("Martial Arts",style: regular(fontSize: 14.sp,color: Colors.black),),
                    avatar: Icon(Icons.sports_martial_arts,size: 18.h,),
                    padding: EdgeInsets.all(10.h),
                  ),

                  SizedBox(height: 10.h,),

                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffE7F3FF),
                      minimumSize: Size(double.infinity, 38.h),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.h)),
                      elevation: 0,
                    ),
                    child: Text("Edit Public Details",style: regular(color: const Color(0xff216FDB), fontSize: 14.sp),),
                  ),
                  SizedBox(height: 10.h,),
                ],
              ),
            ),

            Divider(thickness: 1.h,),

            Padding(
              padding: EdgeInsets.all(10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    dense: true,
                    title: Text("Friends",style: bold(fontSize: 20.sp,color: Colors.black),),
                    subtitle: Text("1,172 friends",style: regular(fontSize: 18.sp,color: Colors.grey),),
                    trailing: Text("Find Friends",style: regular(fontSize: 18.sp,color: const Color(0xff216FDB),),),
                    contentPadding: EdgeInsets.zero,
                  ),

                  SizedBox(height: 10.h,),

                  GridView.builder(
                      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 1.w,
                        mainAxisSpacing: 1.h,
                        childAspectRatio: (0.8/ 1),
                      ),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: friends.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (_,i){
                        var f = friends[i];
                        return FittedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              MyImage.imageN(url:f["imgUrl"]!, height: 80.h,width: 80.h,radius: BorderRadius.circular(6.h),fit: BoxFit.cover),
                              SizedBox(height: 5.h,),
                              Text(f["name"]!,textAlign: TextAlign.center,style: regular(color: Colors.black, fontSize: fontSize12),),
                              SizedBox(height: 5.h,),
                            ],
                          ),
                        );
                      }
                  ),

                  SizedBox(height: 10.h,),

                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffE5E6EB),
                      minimumSize: Size(double.infinity, 38.h),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.h)),
                      elevation: 0,
                    ),
                    child: Text("See All Friends",style: regular(color: Colors.black, fontSize: 14.sp),),
                  ),
                  SizedBox(height: 10.h,),
                ],
              ),
            ),

            Container(
              height: 15.h,
              width: double.infinity,
              color: const Color(0xffC9CCD1),
            ),

            SizedBox(height: 15.h,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Posts",style: bold(fontSize: 20.sp,color: Colors.black),),
                      const Spacer(),
                      Container(
                        height: 30.h,
                        width: 30.h,

                        decoration: BoxDecoration(
                          color: const Color(0xffE5E6EB),
                          borderRadius: BorderRadius.circular(6.h),
                        ),
                        child: Icon(Icons.tune,size: 15.h,color: Colors.black,),
                      ),
                      SizedBox(width: 6.w,),
                      Container(
                        height: 30.h,
                        width: 30.h,

                        decoration: BoxDecoration(
                          color: const Color(0xffE5E6EB),
                          borderRadius: BorderRadius.circular(6.h),
                        ),
                        child: Icon(Icons.settings,size: 15.h,color: Colors.black,),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h,),
                  ListTile(
                    dense: true,
                    leading: MyImage.imageN(url: Config.profileUrl,height: 30.h,width: 30.h,radius: BorderRadius.circular(30.h),),
                    title: Text("What's on your mind?",style: regular(fontSize: 16.sp,color: Colors.black),),
                    trailing: Icon(Icons.image_sharp,size: 25.h,color: Colors.green,),
                    contentPadding: EdgeInsets.zero,
                  ),
                ],
              ),
            ),

            Divider(thickness: 1.h,height: 0.h,),

            Container(
              height: 60.h,
              width: double.infinity,
              color: Colors.grey.withOpacity(0.1),
              child: Row(
                children: [
                  SizedBox(width: 10.w,),
                  Chip(
                    label: Text("Reel",style: regular(fontSize: 14.sp,color: Colors.black),),
                    avatar: Icon(Icons.movie,size: 18.h,color: Colors.pink,),
                    padding: EdgeInsets.all(8.h),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(side:BorderSide(color: Colors.grey,width: 1.w),borderRadius: BorderRadius.circular(20.h)),
                  ),
                  SizedBox(width: 10.w,),
                  Chip(
                    label: Text("Live",style: regular(fontSize: 14.sp,color: Colors.black),),
                    avatar: Icon(Icons.live_tv,size: 18.h,color: Colors.red,),
                    padding: EdgeInsets.all(8.h),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(side:BorderSide(color: Colors.grey,width: 1.w),borderRadius: BorderRadius.circular(20.h)),
                  ),
                  SizedBox(width: 5.w,),
                ],
              ),
            ),

            Container(
              height: 10.h,
              width: double.infinity,
              color: const Color(0xffC9CCD1),
            ),

            Container(
              height: 60.h,
              width: double.infinity,
              color: Colors.grey.withOpacity(0.1),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 10.w,),
                    Chip(
                      label: Text("Photos",style: regular(fontSize: 14.sp,color: Colors.black),),
                      avatar: Icon(Icons.photo,size: 18.h,color: Colors.black,),
                      padding: EdgeInsets.all(8.h),
                    ),
                    SizedBox(width: 10.w,),
                    Chip(
                      label: Text("Reels",style: regular(fontSize: 14.sp,color: Colors.black),),
                      avatar: Icon(Icons.live_tv,size: 18.h,color: Colors.black,),
                      padding: EdgeInsets.all(8.h),
                    ),

                    SizedBox(width: 10.w,),
                    Chip(
                      label: Text("Life events",style: regular(fontSize: 14.sp,color: Colors.black),),
                      avatar: Icon(Icons.emoji_events,size: 18.h,color: Colors.black,),
                      padding: EdgeInsets.all(8.h),
                    ),

                    SizedBox(width: 10.w,),
                    Chip(
                      label: Text("Music",style: regular(fontSize: 14.sp,color: Colors.black),),
                      avatar: Icon(Icons.audiotrack,size: 18.h,color: Colors.black,),
                      padding: EdgeInsets.all(8.h),
                    ),
                    SizedBox(width: 10.w,),
                  ],
                ),
              ),
            ),

            Container(
              height: 5.h,
              width: double.infinity,
              color: const Color(0xffC9CCD1),
            ),

            SizedBox(height: 10.h,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 10.w,),
                    MyImage.imageN(url: Config.profileUrl,height: 30.h,width: 30.h,radius: BorderRadius.circular(30.h),),
                    SizedBox(width: 10.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Arup Naskar",style: bold(fontSize: 14.sp,color: Colors.black),),
                        Text("5 September at 13:02",style: regular(fontSize: 12.sp,color: Colors.grey),),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 30.h,
                      width: 30.h,

                      decoration: BoxDecoration(
                        color: const Color(0xffE5E6EB),
                        borderRadius: BorderRadius.circular(6.h),
                      ),
                      child: Icon(Icons.more_horiz,size: 15.h,color: Colors.black,),
                    ),
                    SizedBox(width: 10.w,),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.all(10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mydigigold app promotion Moments.\nThis App Developed by me.",style: regular(fontSize: 14.sp,color: Colors.black),),
                      Text("#flutter #flutterdeveloper #android #ios",style: regular(fontSize: 14.sp,color: const Color(0xff1876F2)),),
                    ],
                  ),
                ),
                MyImage.imageN(url: Config.postUrl,height: 200.h,width:double.infinity,fit: BoxFit.fill),
                Padding(
                  padding: EdgeInsets.all(10.h),
                  child: Row(
                    children: [
                      Icon(Icons.recommend,size: 18.h,color: Colors.blue,),
                      Icon(Icons.favorite,size: 18.h,color: Colors.red,),
                      SizedBox(width: 5.w,),
                      Text("Raju Das and 11 others",style: regular(fontSize: 14.sp,color: Colors.grey),),
                      const Spacer(),
                      Text("1 Comments",style: regular(fontSize: 14.sp,color: Colors.grey),),
                    ],
                  ),
                ),

                Divider(indent: 10.w,endIndent: 10.w,height: 0.h,thickness: 1.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Chip(
                      label: Text("Like",style: regular(fontSize: 14.sp,color: Colors.grey),),
                      avatar: Icon(Icons.thumb_up_off_alt,size: 18.h,color: Colors.grey,),
                      padding: EdgeInsets.all(8.h),
                      backgroundColor: Colors.transparent,
                    ),
                    Chip(
                      label: Text("Comment",style: regular(fontSize: 14.sp,color: Colors.grey),),
                      avatar: Icon(Icons.chat_bubble_outline,size: 18.h,color: Colors.grey,),
                      padding: EdgeInsets.all(8.h),
                      backgroundColor: Colors.transparent,
                    ),

                    Chip(
                      label: Text("Share",style: regular(fontSize: 14.sp,color: Colors.grey),),
                      avatar: Icon(Icons.share,size: 18.h,color: Colors.grey,),
                      padding: EdgeInsets.all(8.h),
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
              ],
            ),

            Container(
              height: 15.h,
              width: double.infinity,
              color: const Color(0xffC9CCD1),
            ),


            SizedBox(height: 40.h,),

          ],
        ),
      ),
    );
  }
}
