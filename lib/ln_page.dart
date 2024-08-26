import 'package:flutter/material.dart';
import 'package:ln_list/ln.dart';

class LnPage extends StatelessWidget {
  const LnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LnList(),
    );
  }
}

class LnList extends StatefulWidget {
  const LnList({
    super.key,
  });

 
  
  @override
  State<StatefulWidget> createState() => _LnList();
}

class _LnList extends State<LnList>{
  TextEditingController _namaCtrl = TextEditingController();
  TextEditingController _deskripsiCtrl = TextEditingController();
  List<Ln> lnList = Ln.dummyData;

  void refreshList(){
    lnList = lnList;
  }

  void deleteItem(int index){
    lnList.removeAt(index);
    refreshList();
  }

  void addItem (){
    lnList.add(Ln(_namaCtrl.text, _deskripsiCtrl.text));
    refreshList();

    _namaCtrl.text = '';
    _deskripsiCtrl.text = '';
  }  

  void tampilForm(){
    showDialog(context: context,
    builder: (context)=> AlertDialog(
      insetPadding: EdgeInsets.all(20),
      title: Text("Tambah Ln"),
      actions: [
        ElevatedButton(onPressed:(){
          Navigator.pop(context);
        } , child: Text("Tutup")),
        ElevatedButton(onPressed:(){
          addItem();
          Navigator.pop(context);
        } , child: Text('Tambah')),
      ],
      content: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: Column(children: [
          TextField(
            controller: _namaCtrl,
            decoration: InputDecoration(hintText: 'Nama Ln'),),
          TextField(
            controller: _deskripsiCtrl,
            decoration: InputDecoration(hintText: 'Deskripsi Ln'),),
        ],),
      ),
    ));
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Ln(light novel)'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){tampilForm();},
        child: Icon(Icons.add_box),
        ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
            itemCount: lnList.length,
            itemBuilder: (context, index){
              return ListTile(
                title: Text(lnList[index].nama),
                subtitle: Text(lnList[index].deskripsi),
                trailing: IconButton(icon: Icon(Icons.delete),
                onPressed: () {
                  deleteItem(index);
                },),
                );
            }),
            ),
        ],
      ),
    );
  }
}