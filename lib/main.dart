import 'package:flutter/material.dart';
import 'data.dart';

void main() {
  runApp(const DocumentApp());
}

class DocumentApp extends StatelessWidget {
  const DocumentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: DocumentScreen(
        document: Document(),
      ),
    );
  }
}

class DocumentScreen extends StatelessWidget {
  final Document document;

  const DocumentScreen({
    required this.document,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var metadataRecord = document.getMetadata();

    // Obter a data e hora do sistema
    var currentDateTime = DateTime.now();
    var formattedDate = "${currentDateTime.day}/${currentDateTime.month}/${currentDateTime.year} ${currentDateTime.hour}:${currentDateTime.minute}:${currentDateTime.second}";

    return Scaffold(
      appBar: AppBar(
        title: Text(metadataRecord.$1), // Exibe o título corretamente
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Last modified: $formattedDate', // Exibe a data, hora, minutos e segundos atuais
            ),
          ),
        ],
      ),
    );
  }
}
