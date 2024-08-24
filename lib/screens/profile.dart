import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:onyeije/utils/styles/stylings.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool edit = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Stylings.brown,
          leading: Container(
            padding: const EdgeInsets.only(left: 5),
            margin: const EdgeInsets.all(13),
            width: 30,
            height: 40,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            child: Icon(
              Icons.arrow_back_ios,
              color: Stylings.brown,
              size: 17,
            ),
          ),
          title: Text(
            "PROFILE",
            style: Stylings.subHeader.copyWith(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: (){
                if(edit==false) {
                 setState(() {
                   edit = true;
                 });
                }
                else if(edit==true){
                  setState(() {
                    edit = false;
                  });
                }
              },
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                width: 40,
                height: 30,
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Icon(
                  Icons.edit,
                  color: Stylings.brown,
                  size: 18,
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Stack(
              children: [
                //user
                Container(
                  width: size.width,
                  height: size.height*0.76,
                  color: Stylings.brown,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white)),
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(("${Stylings.imgPath}/market.jpg")),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 12,
                          ),
                          Text(
                            "Ekene Umenwa",
                            style: Stylings.subHeader.copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.mail,
                            color: Colors.white,
                            size: 12,
                          ),
                          Text(
                            "ekeneumenwa672@gmail.com",
                            style: Stylings.subHeader.copyWith(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                //details
                Positioned(
                  top: 200,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
                    width: size.width,
                    height: size.height*0.6,
                    decoration: BoxDecoration(
                        color: Stylings.bgColor,
                        borderRadius: BorderRadius.circular(20),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              hintText: "09038467395",
                              hintStyle: TextStyle(
                                color: edit==true?Stylings.brown:Colors.grey
                              ),
                              prefixIcon: const Icon(Icons.phone,size: 20, color: Colors.grey,),
                              helperText: "Phone Number",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Stylings.brown),
                                borderRadius: BorderRadius.circular(15)
                              )
                            ),
                          ),
                         const SizedBox(height: 20,),
                          TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.zero, hintStyle: TextStyle(
                                color: edit==true?Stylings.brown:Colors.grey
                            ),
                              hintText: "Student",
                              prefixIcon: const Icon(Icons.work,size: 20, color: Colors.grey,),
                              helperText: "Occupation",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Stylings.brown),
                                borderRadius: BorderRadius.circular(15)
                              )
                            ),
                          ),
                          const SizedBox(height: 20,),
                          TextFormField(
                            decoration: InputDecoration( hintStyle: TextStyle(
                                color: edit==true?Stylings.brown:Colors.grey
                            ),
                                contentPadding: EdgeInsets.zero,
                                hintText: "Agozie Umenwa",
                                prefixIcon: const Icon(Icons.people,size: 20, color: Colors.grey,),
                                helperText: "Next Of Kin",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Stylings.brown),
                                    borderRadius: BorderRadius.circular(15)
                                )
                            ),
                          ),
                          const SizedBox(height: 20,),
                          TextFormField(
                            decoration: InputDecoration( hintStyle: TextStyle(
                                color: edit==true?Stylings.brown:Colors.grey
                            ),
                                contentPadding: EdgeInsets.zero,
                                hintText: "08064411450",
                                prefixIcon: const Icon(Icons.phone,size: 20, color: Colors.grey,),
                                helperText: "Next Of Kin Phone Number",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Stylings.brown),
                                    borderRadius: BorderRadius.circular(15)
                                )
                            ),
                          ),
                          const SizedBox(height: 20,),
                          TextFormField(
                            decoration: InputDecoration( hintStyle: TextStyle(
                                color: edit==true?Stylings.brown:Colors.grey
                            ),
                                contentPadding: EdgeInsets.zero,
                                hintText: "Male",
                                prefixIcon: const Icon(Icons.boy_outlined,size: 20, color: Colors.grey,),
                                helperText: "Gender",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Stylings.brown),
                                    borderRadius: BorderRadius.circular(15)
                                )
                            ),
                          ),
                          const SizedBox(height: 20,),
                          TextFormField(
                            decoration: InputDecoration( hintStyle: TextStyle(
                                color: edit==true?Stylings.brown:Colors.grey
                            ),
                                contentPadding: EdgeInsets.zero,
                                hintText: "03/05/2004",
                                prefixIcon: const Icon(Icons.calendar_month_outlined,size: 20, color: Colors.grey,),
                                helperText: "Date Of Birth",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Stylings.brown),
                                    borderRadius: BorderRadius.circular(15)
                                )
                            ),
                          ),
                          const SizedBox(height: 20,),
                          TextFormField(
                            decoration: InputDecoration( hintStyle: TextStyle(
                                color: edit==true?Stylings.brown:Colors.grey
                            ),
                                contentPadding: EdgeInsets.zero,
                                hintText: "**********",
                                prefixIcon: const Icon(Icons.key,size: 20, color: Colors.grey,),
                                helperText: "Password",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Stylings.brown),
                                    borderRadius: BorderRadius.circular(15)
                                )
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(bottom: 20,top: 15),
                            alignment: Alignment.center,
                            width: size.width*0.7,
                            height: 40,
                            decoration: BoxDecoration(
                              color: edit==true?Stylings.brown:Stylings.bgColor,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Text("Save", style: Stylings.subHeader.copyWith(color: Stylings.bgColor),),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),

          ],
        ),

    );
  }
}
