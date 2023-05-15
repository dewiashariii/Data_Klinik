import 'package:flutter/material.dart';
import 'package:data_klinik/model/pasien.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien;

  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Pasien"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "Nomor Ruangan : ${widget.pasien.nomorRm}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Nama Pasien : ${widget.pasien.namaPasien}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Tanggal Lahir : ${widget.pasien.tanggalLahirpasien}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Nomor Telepon : ${widget.pasien.nomorTeleponpasien}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Alamat : ${widget.pasien.alamat}",
            style: const TextStyle(fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text("Ubah")),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text("Hapus")),
            ],
          )
        ],
      ),
    );
  }
}
