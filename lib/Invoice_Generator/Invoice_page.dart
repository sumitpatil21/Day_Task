import 'dart:typed_data';

import 'package:daytodaytask/Invoice_Generator/Pdf.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;


class InvoicePage extends StatefulWidget {
  const InvoicePage({super.key});

  @override
  State<InvoicePage> createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ...List.generate(
          invoiceList.length,
          (index) => Padding(
            padding: const EdgeInsets.only(top: 80),
            child: ListTile(
              title: Text(
                invoiceList[index].name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                invoiceList[index].price,
                style: TextStyle(fontSize: 20),
              ),
              trailing: Text(
                invoiceList[index].brand,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PdfPageScreen(),));
            },
            icon: Icon(
              Icons.picture_as_pdf,
              size: 50,
            ))
      ]),
    );
  }
}

List invoiceList = [
  invoiceModel(name: "one plus", price: "10000", brand: "mi"),
  invoiceModel(name: "i phone", price: "100000", brand: "apple"),
  invoiceModel(name: "mi", price: "15000", brand: "mi"),
];

class invoiceModel {
  String? name = "";
  String? price = "";
  String? brand = "";

  invoiceModel({this.name, this.price, this.brand});
}

Future<Uint8List> generatePdf() {
  final pdf=pw.Document();
  pdf.addPage(
    pw.Page(
      build: (context) => pw.Column(
        children: [
          pw.Container(

            height: 100,
            width: double.infinity,
            decoration: pw.BoxDecoration(
               color: PdfColors.blue,
            ),
            child: pw.Row(
              children: [
                ...List.generate(invoiceList.length, (index) => pw.Row(
                 children: [
                    pw.Text(
                    invoiceList[index].name,
                    style: pw.TextStyle(fontSize: 20,),),
                   pw.Text(
                     invoiceList[index].price,
                     style: pw.TextStyle(fontSize: 20,),),
                   pw.Text(
                     invoiceList[index].brand,
                     style: pw.TextStyle(fontSize: 20,),)
                 ]
                ),
                )
              ]
            )
          )
        ]
      ),
    )
  );
  return pdf.save();

}

