import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const CommonText(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      maxLines: maxLines,
    );
  }
}

//  10/1
class Text10BlackBld extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text10BlackBld(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 10, // Set the font size to 10
        fontWeight: FontWeight.bold, // Set the text to bold
      ).merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

class Text10OrangeBld extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text10OrangeBld(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 10, color: Colors.deepOrange, // Set the font size to 10
        fontWeight: FontWeight.bold, // Set the text to bold
      ).merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

//  10/2
class Text10Black extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text10Black(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 10, // Set the font size to 10
        // Set the text to bold
      ).merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

class Text10Orange extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text10Orange(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 10, color: Colors.deepOrange, // Set the font size to 10
        // Set the text to bold
      ).merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

// 11/1
class Text11BlackBld extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text11BlackBld(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 11, // Set the font size to 10
        fontWeight: FontWeight.bold, // Set the text to bold
      ).merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

class Text11OrangeBld extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text11OrangeBld(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 11, color: Colors.deepOrange, // Set the font size to 10
        fontWeight: FontWeight.bold, // Set the text to bold
      ).merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

// 11/2

class Text11Black extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text11Black(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 11, // Set the font size to 10
        // Set the text to bold
      ).merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

class Text11Orange extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text11Orange(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
              fontSize: 11, color: Colors.deepOrange // Set the font size to 10
              // Set the text to bold
              )
          .merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

// 12/1

class Text12BlackBld extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text12BlackBld(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12, // Set the font size to 10
        fontWeight: FontWeight.bold, // Set the text to bold
      ).merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

class Text12OrangeBld extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text12OrangeBld(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12, color: Colors.deepOrange, // Set the font size to 10
        fontWeight: FontWeight.bold, // Set the text to bold
      ).merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

// 12/2

class Text12Black extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text12Black(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12, // Set the font size to 10
      ).merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

class Text12Orange extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text12Orange(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
              fontSize: 12, color: Colors.deepOrange // Set the font size to 10
              )
          .merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

// 14/1

class Text14BlackBld extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text14BlackBld(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14, color: Colors.black, // Set the font size to 10
        fontWeight: FontWeight.bold, // Set the text to bold
      ).merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

class Text14OrangeBld extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text14OrangeBld(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14, color: Colors.deepOrange, // Set the font size to 10
        fontWeight: FontWeight.bold, // Set the text to bold
      ).merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

// 14/2

class Text14Black extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text14Black(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14, // Set the font size to 10
      ).merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

class Text14Orange extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text14Orange(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
              fontSize: 14, color: Colors.deepOrange // Set the font size to 10
              )
          .merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

// 16/1

class Text16BlackBld extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text16BlackBld(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16, // Set the font size to 10
        fontWeight: FontWeight.bold, // Set the text to bold
      ).merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

class Text16OrangeBld extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text16OrangeBld(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
              fontSize: 16,
              // Set the font size to 10
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange // Set the text to bold
              )
          .merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

// 16/2

class Text16Black extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text16Black(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: 16, color: Colors.black // Set the font size to 10
                  )
              .merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

class Text16Orange extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text16Orange(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
              fontSize: 16, color: Colors.deepOrange // Set the font size to 10
              )
          .merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

// 13/1

class Text13WhitekBld extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text13WhitekBld(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 10, color: Colors.white, // Set the font size to 10
        fontWeight: FontWeight.bold, // Set the text to bold
      ).merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}
