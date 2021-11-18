import 'package:flutter/material.dart';
import 'package:project_for_company/widget/story_screen.dart';
import 'package:project_for_company/repository/data/data.dart';
import 'package:provider/provider.dart';

class CircleStory extends StatefulWidget {

  String image;
  //String text;
  int num;


  CircleStory(this.image, this.num);

  @override
  _CircleStoryState createState() => _CircleStoryState();
}

class _CircleStoryState extends State<CircleStory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: [
            CircleAvatar(
              radius: 45,
              backgroundColor: Colors.purple,
              child: InkWell(
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.purple,
                backgroundImage: NetworkImage(widget.image),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => StoryScreen(Provider.of<AllData>(context).storyData[widget.num])));
                },
              ),
            ),
            //Text(widget.text),
          ]
      ),
      padding: EdgeInsets.all(15),
    );
  }
}
