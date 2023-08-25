import 'package:flutter/material.dart';

class FeaturedCard extends StatefulWidget {
  String label;
  String src;
  dynamic onPressed;

  FeaturedCard({required this.label, required this.src, required Null Function(dynamic? value) onPressed});

  @override
  State<FeaturedCard> createState() => _FeaturedCardState();
}

class _FeaturedCardState extends State<FeaturedCard> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextButton(
        onHover: (value) {
          
        },
        onPressed: () {
          
        },
        child: SizedBox(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(3),
            child: Container(
              width: 355,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.15),
                      Colors.white.withOpacity(0.15)
                    ]
                  ),
              ),
              child: Row(
                children: [
                  Container(
                    color: Colors.purple,
                    width:75,
                    height: 70,
                    child: Image.asset(
                    widget.src,
                    fit: BoxFit.cover,
                    ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                    widget.label,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      overflow: TextOverflow.ellipsis,
                    ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}