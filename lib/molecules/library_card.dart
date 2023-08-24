import 'package:flutter/material.dart';

class LibraryCard extends StatelessWidget {
  String title;
  String label;
  String source;
  String src;

  LibraryCard({required this.title, required this.label, required this.source, required this.src});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        
      },
      child: SizedBox(
        width: 300,
        child: Padding(
          padding: const EdgeInsets.all( 8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: source == 'Artist'
                        ? BorderRadius.circular(50)
                        : BorderRadius.circular(8),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.grey.shade300,
                  child: Image.asset(src, 
                        fit: BoxFit.cover,
                  ),
                )
                
              ),
               Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 5.0,),
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(source,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w500
                        ),
                        ),
                      ),
                      SizedBox(
                        child: source == 'Playlist'
                            ? Icon(
                                Icons.circle,
                                size: 5,
                                color: Colors.grey.shade600,
                              )
                            : null,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(label,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w400
                        ),),
                      )
                    ],
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
