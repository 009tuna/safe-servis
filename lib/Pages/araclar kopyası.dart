import 'package:flutter/material.dart';

class Araclarim extends StatefulWidget {
  @override
  _AraclarimState createState() => _AraclarimState();
}

class _AraclarimState extends State<Araclarim> {
  final List<Map<String, String>> _araclar = [];
  String aracAdi = '';
  String aracTipi = '';
  String marka = '';
  String model = '';
  String yil = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Araçlar'),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF090C14),
            Color(0xFF0D1326),
            Color(0xFF1A2740),
            Color(0xFF2E3959),
            Color(0xFF364159),
          ],
          stops: [0.0, 0.5, 0.75, 0.875, 1.0],
        ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _araclar.length,
                itemBuilder: (context, index) {
                  return 
                    
                     Container(
                      padding: const EdgeInsets.all(5.0), 
                      margin: const EdgeInsets.all(16.0), 
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),  
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(height: 80, width: 80, child: Image.asset('lib/Images/FillerDriver.jpg')),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text('Araç Adı: ' + _araclar[index]['ad']!),
                               Text('Araç Tipi: ' + _araclar[index]['tipi']!),
                               Text('Marka: ' + _araclar[index]['marka']!),
                               Text('Model: ' + _araclar[index]['model']!),
                               Text('Yıl: ' + _araclar[index]['yil']!),
                            ],
                          ),
                        ],
                      ),
                    )
                  ;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Yeni Araç Ekle'),
                        content: SizedBox(
                          height: MediaQuery.of(context).size.height /  3,
                          child: Column(
                            children: [
                              TextField(
                                decoration: const InputDecoration(labelText: 'Araç Adı'),
                                onChanged: (value) {
                                  setState(() {
                                    aracAdi = value;
                                  });
                                },
                              ),
                              TextField(
                                decoration: const InputDecoration(labelText: 'Araç Tipi'),
                                onChanged: (value) {
                                  setState(() {
                                    aracTipi = value;
                                  });
                                },
                              ),
                              TextField(
                                decoration: const InputDecoration(labelText: 'Marka'),
                                onChanged: (value) {
                                  setState(() {
                                    marka = value;
                                  });
                                },
                              ),
                              TextField(
                                decoration: const InputDecoration(labelText: 'Model'),
                                onChanged: (value) {
                                  setState(() {
                                    model = value;
                                  });
                                },
                              ),
                              TextField(
                                decoration: const InputDecoration(labelText: 'Yıl'),
                                onChanged: (value) {
                                  setState(() {
                                    yil = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('İptal'),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _araclar.add({
                                  'ad': aracAdi,
                                  'tipi': aracTipi,
                                  'marka': marka,
                                  'model': model,
                                  'yil': yil,
                                });
                              });
                              Navigator.of(context).pop();
                            },
                            child: const Text('Kaydet'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text('Araç Ekle'),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
