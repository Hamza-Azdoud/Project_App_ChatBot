import 'package:flutter/material.dart';

class ChatBotPage extends StatefulWidget {
  ChatBotPage({super.key});

  @override
  State<ChatBotPage> createState() => _ChatBotPageState();
}

class _ChatBotPageState extends State<ChatBotPage> {
  List messages = [
    {'message': 'Hello', 'type': 'user'},
    {'message': 'How can i help you', 'type': 'assistant'},
    {'message': 'Give me information about you', 'type': 'user'},
    {'message': 'I am a helful assistant', 'type': 'assistant'},
  ];

  TextEditingController queryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Chat Bot page",
           style: TextStyle(
              color: Theme.of(context).indicatorColor
        ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(
                        messages[index]['message'],
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    Divider(
                      height: 1,
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                );
            }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: queryController,
                    // obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                          Icons.visibility
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Theme.of(context).primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: (){
                    String query = queryController.text;
                    setState(() {
                      messages.add({"message" : query, "type" : "user"});
                    });

                  },
                  icon: Icon(Icons.send,),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

