import 'package:flutter/material.dart';
class NewsDetails extends StatefulWidget {
  const NewsDetails({Key? key}) : super(key: key);

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  @override
  Widget build(BuildContext context) {
    final publishAt=ModalRoute.of(context)!.settings.arguments as String;
    return Container(
      
    );
  }
}
