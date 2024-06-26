import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:shopping_mart/consts/consts.dart';
import 'package:shopping_mart/loading_indicator.dart';
import 'package:shopping_mart/screen/chat_screen/chat_screen.dart';
import 'package:shopping_mart/services/firestore_services.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title:
            "MyMessages".text.color(darkFontGrey).fontFamily(semibold).make(),
      ),
      body: StreamBuilder(
          stream: FirestoreServices.getAllMessages(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: loadingIndicator(),
              );
            } else if (snapshot.data!.docs.isEmpty) {
              return "No messages yet".text.color(darkFontGrey).makeCentered();
            } else {
              var data = snapshot.data!.docs;
              return Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                          child: ListView.builder(
                              itemCount: data.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Card(
                                  child: ListTile(
                                    onTap: () {
                                      Get.to(() => const ChatScreen(),
                                          arguments: [
                                            data[index]['friend_name'],
                                            data[index]['toId'],
                                          ]);
                                    },
                                    leading: const CircleAvatar(
                                      backgroundColor: redcolor,
                                      child: Icon(
                                        Icons.person,
                                        color: whiteColor,
                                      ),
                                    ),
                                    title: "${data[index]['friend_name']}"
                                        .text
                                        .fontFamily(semibold)
                                        .color(darkFontGrey)
                                        .make(),
                                    subtitle: "${data[index]['last_msg']}"
                                        .text
                                        .make(),
                                  ),
                                );
                              }))
                    ],
                  ),
                ),
              );
            }
          }),
    );
  }
}
