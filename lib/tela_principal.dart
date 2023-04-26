import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return
      
      SafeArea(
         child: Scaffold(
           appBar: PreferredSize(
             preferredSize: Size.fromHeight(50.0),
             child: AppBar(
               centerTitle: false,
               title: Text("WhatsApp"),
               backgroundColor: Color(0xff075E54),
               actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                PopupMenuButton(itemBuilder: (ctx) => [
                  _buildPopupMenuItem(" Novo grupo", Icons.add),
                  _buildPopupMenuItem(" Mensagens favoritas", Icons.star),
                  _buildPopupMenuItem(" Configurações", Icons.engineering)
                ])
                
               ],
               
             )
           ),
           
           body: getListView(),
          ),
         );
  }
}
class Object {
  var name;
  var number;
  var description;
  Object({required this.name, required this.number, required this.description});
}

List<Object> getListElements() {
  var list = List<Object>.generate(100, (index) => 
    Object(
      name: 'Number $index',
      number: index,
      description: 'Description $index',
    ),
  );
  return list;
}

Widget getListView() {
  var listItems = getListElements();
  var listView = ListView.builder(
    itemCount: listItems.length,
    itemBuilder: (context, index) {
      return ListTile (
        leading: CircleAvatar(backgroundImage: NetworkImage("data:image/jpeg;base64,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")),
        title: Text(listItems[index].name),
        subtitle: Text(listItems[index].description),
        trailing: Text("Katchau"),
      );
    } 
    );
  return listView;
}

PopupMenuItem _buildPopupMenuItem(
      String title, IconData iconData) {
    return PopupMenuItem(
      child:  Row(
        children: [
          Icon(iconData, color: Colors.black,),
          Text(title),
        ],
      ),
    );
  }
