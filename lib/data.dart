import 'dart:convert';

class Document {
  final Map<String, dynamic> _json;  // Alterado para Map<String, dynamic>
  Document() : _json = jsonDecode(documentJson);

  // Função para retornar o título e a data de modificação
  (String, DateTime modified) getMetadata() {
    // Acessando os dados com Map<String, dynamic>
    var title = _json['metadata']['title'] as String;
    var modified = DateTime.parse(_json['metadata']['modified'] as String);
    return (title, modified);
  }
}

const documentJson = '''
{
  "metadata": {
    "title": "My Document",
    "modified": "2023-05-10"
  },
  "blocks": [
    {
      "type": "h1",
      "text": "Chapter 1"
    },
    {
      "type": "p",
      "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
      "type": "checkbox",
      "checked": false,
      "text": "Learn Dart 3"
    }
  ]
}
''';
