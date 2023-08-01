
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:firebase_notifications/notification_services.dart';
import "package:http/http.dart" as http;
class HomeScreen extends StatefulWidget{
  const HomeScreen({Key?key}): super(key: key);
  @override
  State<HomeScreen>createState()=>_HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{
  
  NotificationServices notificationServices=NotificationServices();
  @override
  void initState() {
    super.initState();
    notificationServices.requestNotificationPermission();
    notificationServices.firebaseInit();
    notificationServices.getDeviceToken().then((value){
      print("Device token");
      print(value);
    });
    
  }
  @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Wearable"),
    ),
    body: Center(
      child: ElevatedButton(
              onPressed: () {{
                  notificationServices.getDeviceToken().then((value) async {
                    var movil =
                        "dqogJg-LRrmBXoQ8cd9Ty8:APA91bEky74qgz6z7iAlDbYOaDBEFNf2pC0-hxzZ6lHbalI8EIo21MpN8vK8wLf-o2n6BxuS_YCmx8uTEcmwsWN3185-KS8RP8ExujacVKkfdbImylLHcdvzaTfemsuwuicWt_g0iIfF";
                    var wear =
                        "e5JXJcMwS4GW1XWyDnwiNj:APA91bFU9OWyzvxSKPvzMJRG0DkDCJXImgwxcXvzO_KxGqPSsLbhWHZB5lXPVf_ki9f_nU4QzY8VEHxYVbqedDX-S8gt0U0ZF5i51AtOF3LeBq33CkuxjinrcdWokS6FIZiEHwGboCRG";
                    var data = {
                      "to":movil,
                      "priority": "high",
                      "notification": {
                        "title": "Hola", // Título ingresado en el formulario
                        "body": "Soy una notificacion", // Cuerpo ingresado en el formulario
                      },
                      "data": {
                        "type": "msj",
                        "id": "123456"
                      }
                    };
                    await http.post(Uri.parse("https://fcm.googleapis.com/fcm/send"),
                        body: jsonEncode(data),
                        headers: {
                          "Content-Type": "application/json; charset=UTF-8",
                          "Authorization":
                              "key=AAAAOwvxDRM:APA91bGRPH8kIuZ54e-iMLzdTvrZRYldTUzPWl0YYkJLrz7M8J6Uiv2uMQ5fuTVaJzQ7HmRj8T6XAJr6aa1v0_lVDIicOysZPUSctOPwscG2tCvjxuVUXMyFqjaPhThN0U2cQQHefEsQ"
                        });
                  });
                }
              },
              child: const Text('Enviar'),
            ),
    ),
  );
}
}