import 'package:betswinning/components/customButton.dart';
import 'package:betswinning/package/searchable_dropdown.dart';
import 'package:betswinning/screens/zoom_scaffold.dart';
import 'package:betswinning/widgets/textField.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text('PERFIL',style: TextStyle(
          color: Colors.greenAccent,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        ),
        actions: <Widget>[
          Container(
            width: 120.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/LogoBets.png')
                )
            ),
          ),
          SizedBox(width: 30.0,)
        ],
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white), onPressed: (){
          Navigator.of(context).pop();
        }),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.09,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      Stack(
                        overflow: Overflow.visible,
                        children: <Widget>[
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage('assets/gabriel.png'),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                              bottom: -10,
                              right: 1,
                              child: Container(
                                padding: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Icon(Icons.add),
                              ))
                        ],
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Bienvenido',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Gabriel Urena Chacon',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Expanded(child: Container()),
                      Container(
                        width: 80.0,
                        alignment: Alignment.center,
                        child: Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            Icon(
                              Icons.local_post_office,
                              size: 40.0,
                              color: Colors.white,
                            ),
                            Positioned(
                                top: -4,
                                right: 1,
                                child: Container(
                                  padding: EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red),
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Mis Datos',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      ),
                      myText(
                        labelText: 'Nombre',
                        autocorrect: true,
                      ),
                      myText(
                        labelText: 'Apellido',
                        autocorrect: true,
                      ),
                      myText(
                        labelText: 'Email',
                        autocorrect: true,
                      ),
                      myText(
                        labelText: 'Contraseña',
                        obscureText: true,
                      ),
                      SearchableDropdownWidget(
                      ),
                      myText(
                        labelText: 'Cuenta de retiro',
                        autocorrect: true,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        child: CustomButton(
                          label: "ACTUALIZAR",
                          background: Colors.green,
                          fontColor: Colors.white,
                          borderColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}


final Screen profileScreen = Screen(
    background: Colors.black,
    title: 'PERDIL',
    actions: [ Container(
      width: 120.0,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/LogoBets.png')
          )
      ),
    ),],
    contentBuilder: (BuildContext context) {
      return;
    });

class SearchableDropdownWidget extends StatefulWidget {
  @override
  _StateSearchableDropdownWidget createState() => _StateSearchableDropdownWidget();
}

class _StateSearchableDropdownWidget extends State<SearchableDropdownWidget> {

  List<Cuenta> cuentas = [
    Cuenta(idcuenta: "1", cuenta: "PayPal"),
    Cuenta(idcuenta: "2", cuenta: "PayPal"),
    Cuenta(idcuenta: "3", cuenta: "PayPal"),
  ];

  var selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: double.infinity,
      margin: EdgeInsets.only(top: 5.0, bottom: 20.0),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          border: Border.all(
              color: Colors.black,
              width: 1
          )
      ),
      child: SearchableDropdown(
        items: cuentas.map((item) {
          return new DropdownMenuItem<Cuenta>(
              child: Text(item.cuenta), value: item);
        }).toList(),
        isExpanded: true,
        value:selectedValue,
        isCaseSensitiveSearch: true,
        hint: "Tipo de cuenta",
        searchHint: new Text(
          'Seleccione...',
          style: new TextStyle(fontSize: 20),
        ),
        onChanged: (value) {
          setState(() {
            selectedValue = value;
          });

        },
      ),
    );
  }
}

class Cuenta {
  String idcuenta;
  String cuenta;

  Cuenta({this.idcuenta, this.cuenta});

  @override
  String toString() {
    return '${cuenta}'.toLowerCase() +  '${idcuenta}'.toUpperCase();
  }
}