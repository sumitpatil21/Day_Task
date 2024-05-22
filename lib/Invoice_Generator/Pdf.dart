import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';

import 'Invoice_page.dart';

class PdfPageScreen extends StatefulWidget {
  const PdfPageScreen({super.key});

  @override
  State<PdfPageScreen> createState() => _PdfPageScreenState();
}
class _PdfPageScreenState extends State<PdfPageScreen
> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build: (format) => generatePdf(),
      ),
    );
  }
}
