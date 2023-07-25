import 'package:flutter/material.dart';

class ContactoDetalle extends StatelessWidget {
  const ContactoDetalle({super.key, required this.user});
  final Map<String, dynamic> user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 40),
                  child: CircleAvatar(
                      radius: 40,
                      child: Text(
                        '${user['name'][0]}',
                        style: const TextStyle(
                          fontSize: 26,
                        ),
                      )),
                ),
                const SizedBox(height: 60),
                Text(
                  '${user['name']}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(
              height: 0.5,
              color: Colors.grey,
              indent: 16,
              endIndent: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.call_outlined),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.message_outlined),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.video_camera_front_outlined),
                  onPressed: () {},
                ),
              ],
            ),
            const Divider(
              height: 1,
              color: Colors.grey,
              indent: 16,
              endIndent: 16,
            ),
          ],
        ),
      ),
    );
  }
}
