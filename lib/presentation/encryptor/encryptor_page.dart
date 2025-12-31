import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EncryptorPage extends StatefulWidget {
  const EncryptorPage({super.key});

  @override
  State<EncryptorPage> createState() => _EncryptorPageState();
}

class _EncryptorPageState extends State<EncryptorPage> {
  final TextEditingController _inputController = TextEditingController();
  final TextEditingController _shiftController =
      TextEditingController(text: '3');
  final TextEditingController _alphabetController = TextEditingController(
    text: 'abcdefghijklmnopqrstuvwxyz',
  );

  String _encryptedText = '';

  @override
  void initState() {
    super.initState();
    _inputController.addListener(_encrypt);
    _shiftController.addListener(_encrypt);
    _alphabetController.addListener(_encrypt);
  }

  @override
  void dispose() {
    _inputController.dispose();
    _shiftController.dispose();
    _alphabetController.dispose();
    super.dispose();
  }

  void _removeDuplicateCharacters() {
    final alphabet = _alphabetController.text;
    final seen = <String>{};
    final uniqueChars = StringBuffer();

    for (int i = 0; i < alphabet.length; i++) {
      final char = alphabet[i];
      if (!seen.contains(char)) {
        seen.add(char);
        uniqueChars.write(char);
      }
    }

    _alphabetController.text = uniqueChars.toString();
  }

  void _encrypt() {
    final input = _inputController.text;
    final shift = int.tryParse(_shiftController.text) ?? 3;
    final alphabet = _alphabetController.text;

    if (alphabet.isEmpty) {
      setState(() {
        _encryptedText = input;
      });
      return;
    }

    final StringBuffer result = StringBuffer();

    for (int i = 0; i < input.length; i++) {
      final char = input[i];
      final lowerChar = char.toLowerCase();
      final isUpperCase = char != lowerChar;

      final index = alphabet.toLowerCase().indexOf(lowerChar);

      if (index == -1) {
        // Character not in alphabet, keep as is
        result.write(char);
      } else {
        final newIndex = (index + shift) % alphabet.length;
        final encryptedChar = alphabet[newIndex];
        result.write(isUpperCase ? encryptedChar.toUpperCase() : encryptedChar);
      }
    }

    setState(() {
      _encryptedText = result.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 800, minWidth: 300),
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Encriptador',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(height: 24),
            Card(
              child: ExpansionTile(
                title: const Text('Configuración'),
                subtitle: Text(
                  'Índice de rotación: ${_shiftController.text} | Conjunto base: ${_alphabetController.text.length} caracteres',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                leading: const Icon(Icons.settings),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: TextFormField(
                            controller: _shiftController,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: const InputDecoration(
                              labelText: 'Índice de rotación',
                              hintText: 'Número de posiciones a rotar',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _alphabetController,
                                decoration: const InputDecoration(
                                  labelText: 'Conjunto base',
                                  hintText: 'Caracteres del conjunto',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            IconButton.filled(
                              onPressed: _removeDuplicateCharacters,
                              icon: const Icon(Icons.cleaning_services),
                              tooltip: 'Eliminar caracteres repetidos',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _inputController,
              maxLines: 4,
              decoration: const InputDecoration(
                labelText: 'Texto a encriptar',
                hintText: 'Escribe el texto que deseas encriptar',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Resultado:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
              child: SelectableText(
                _encryptedText.isEmpty
                    ? '(El texto encriptado aparecerá aquí)'
                    : _encryptedText,
                style: TextStyle(
                  fontSize: 16,
                  color: _encryptedText.isEmpty
                      ? Theme.of(context).colorScheme.onSurfaceVariant
                      : Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ℹ️ Información:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '• Se rota cada letra N posiciones en el conjunto base.\n'
                    '• Por defecto se usa un índice de rotación de 3.\n'
                    '• Los caracteres que no estén en el conjunto se mantienen igual.\n'
                    '• Puedes personalizar el conjunto base para incluir otros caracteres.',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
