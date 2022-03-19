import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutor_eye_app/AcceptedPage/AccepetdPage.dart';
import 'package:tutor_eye_app/FixFiles/palette.dart';

class AwaitPage extends StatefulWidget {
  const AwaitPage({Key key}) : super(key: key);

  @override
  _AwaitPageState createState() => _AwaitPageState();
}

class _AwaitPageState extends State<AwaitPage> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      minimum: EdgeInsets.only(top:280.h),
      child: Column(
           children: [
             AlertDialog(
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
                 title: ListTile(title:const Text("Chapter 1",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                     subtitle: Text("14 minutes ago",style: TextStyle(color: Palette.inputBorderColor,fontSize: 10.sp),),
                 trailing: const Text("Awaited",style: TextStyle(color: Palette.Awaited,fontWeight: FontWeight.bold),),),
                 content: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Text("Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do\n eiusmod tempor incidident ut labore et solore magna aliqua\n ut enim ad minim veniam",style: TextStyle(color:Palette.inputBorderColor,fontFamily: "Proxima",fontSize: 12.sp,)),
                     Row(
                       children: [
                         Image.asset("assets/images/download.png",height:10.h,color: Colors.blue),
                         SizedBox(width: 8.w),
                         Text("Download Attachment",style: TextStyle(color: Colors.blue,fontSize: 12.sp),),
                          SizedBox(width:10.w),
                          Column(children: [
                            Text("Milestone Price",style: TextStyle(color:Palette.inputBorderColor,fontSize:12.sp),),
                            const Text("\$05.00",style: TextStyle(color:Palette.inputHintColor),)
                          ],),
           ]
      ),]),

                 actions: [
                   Container(
                     decoration: BoxDecoration(border: Border.all(color: Colors.red,width: 0.3)),
                     child: FlatButton(
                       textColor: Colors.black,
                       onPressed: () {},
                       child: const Text('Not Satified',style: TextStyle(color: Colors.red),),
                     ),
                   ),
                   FlatButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),color: Colors.green.shade400,
                     textColor: Colors.black,
                     onPressed: () {
                     Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const AcceptedPage()));
                     },height:50.h,minWidth: 100.w,
                     child: const Text('Accept',style: TextStyle(color: Colors.white),),
                   ),
                 ],
               ),
           ],
      ),
    );
  }
}
