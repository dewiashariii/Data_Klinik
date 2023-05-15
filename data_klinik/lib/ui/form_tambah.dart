import 'package:data_klinik/model/home.dart';
import 'package:data_klinik/model/pasien.dart';
import 'package:data_klinik/ui/pasien_detail.dart';
import 'package:flutter/material.dart';

class FormTambah extends StatefulWidget {
  const FormTambah({Key? key}) : super(key: key);
  _FormTambahState createState() => _FormTambahState();
}

class _FormTambahState extends State<FormTambah> {
  final _formKey = GlobalKey<FormState>();
  final _nomorRmCtrl = TextEditingController();
  final _namaPasienCtrl = TextEditingController();
  final _tanggalLahirpasienCtrl = TextEditingController();
  final _nomorTeleponpasienCtrl = TextEditingController();
  final _alamatCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Poli")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [_fieldNamaPoli(), SizedBox(height: 20), _tombolSimpan()],
          ),
        ),
      ),
    );
  }

  _fieldNamaPoli() {
    return TextField(
      decoration: const InputDecoration(labelText: " Nama Poli"),
      controller: _nomorRmCtrl,
      
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        Pasien pasien = new Pasien(
            nomorRm: _nomorRmCtrl.text,
            namaPasien: _namaPasienCtrl.text,
            tanggalLahirpasien: _tanggalLahirpasienCtrl.text,
            nomorTeleponpasien: _nomorTeleponpasienCtrl.text,
            alamat: _alamatCtrl.text);
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => PasienDetail(pasien: pasien)));
      },
      child: const Text("Simpan"),
    );
  }
}
