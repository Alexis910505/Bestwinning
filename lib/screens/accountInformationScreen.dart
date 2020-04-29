import 'package:betswinning/components/customButton.dart';
import 'package:betswinning/components/modalButtonSheet.dart';
import 'package:betswinning/models/bloc.dart';
import 'package:betswinning/package/dotted_border.dart';
import 'package:betswinning/package/searchable_dropdown.dart';
import 'package:betswinning/screens/zoom_scaffold.dart';
import 'package:betswinning/widgets/appBarAction.dart';
import 'package:betswinning/widgets/textField.dart';
import 'package:flutter/material.dart';

final Screen accountScreen = Screen(
    background: Colors.black,
    actions: [AppBarAction()],
    contentBuilder: (BuildContext context) {
      return Container(
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
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          height: 60.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/pedro.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Trader Pre macht',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Pedro Ramos Perez',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Expanded(child: Container()),
                      Container(
                        margin: EdgeInsets.only(top: 20.0, right: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('\$ 650.00',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0
                            ),),
                            Text('Valor a pagar',
                            style: TextStyle(
                              color: Colors.black
                            ),)
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
                      Text('Información de cuentas',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      myText(
                        labelText: 'Valor total en casas',
                        autocorrect: true,
                      ),
                      myText(
                        labelText: 'Máximo a operar',
                        autocorrect: true,
                      ),
                      SearchableDropdownWidget(),
                      GestureDetector(
                        onTap: (){},
                        child: DottedBorder(
                          borderType: BorderType.RRect,
                          padding: EdgeInsets.all(6),
                          child: Container(
                            height: 80.0,
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 5.0),
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.panorama,size: 40.0,),
                                Container(
                                  margin: EdgeInsets.only(left: 15.0, right: 15.0),
                                  child: Text('Por favor suministre un documento con los',
                                  style: TextStyle(
                                    color: Colors.grey
                                  ),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15.0, right: 15.0),
                                  child: Text('accesos de las cuentas',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            CheckboxWidget(),
                            Container(
                              margin: EdgeInsets.only(top: 18.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Aceptar los terminos y condiciones del',style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.0
                                  ),),
                                  Text(' Contrato Trader', style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 12.0
                                  ),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          _onButtonPressed(context);
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 20.0),
                          child: CustomButton(
                            label: "PAGAR AHORA",
                            background: Colors.green,
                            fontColor: Colors.white,
                            borderColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )

              ],
            ),
          ],
        ),
      );
    });




class SearchableDropdownWidget extends StatefulWidget {
  @override
  _StateSearchableDropdownWidget createState() => _StateSearchableDropdownWidget();
}

class _StateSearchableDropdownWidget extends State<SearchableDropdownWidget> {

  List<Casa> casas = [
    Casa(idcasa: "1", casa: "Casa 1"),
    Casa(idcasa: "2", casa: "Casa 2"),
    Casa(idcasa: "3", casa: "Casa 3"),
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
        items: casas.map((item) {
          return new DropdownMenuItem<Casa>(
              child: Text(item.casa), value: item);
        }).toList(),
        isExpanded: true,
        value:selectedValue,
        isCaseSensitiveSearch: true,
        hint: "Seleccione casas",
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

class Casa {
  String idcasa;
  String casa;

  Casa({this.idcasa, this.casa});

  @override
  String toString() {
    return '${casa}'.toLowerCase() +  '${idcasa}'.toUpperCase();
  }
}


void _onButtonPressed(context){
  showModalBottomSheet(context: context, builder: (context){
    return ModalButtonSheet(
      title: 'Pago Trader',
      text: 'Como se suele decir, en vez de reinventar la rueda y programar nosotros todo el diseño',
      monto: '\$ 650.000',
      subtitle: 'Pagar por paypal',
      image1:  AssetImage('assets/paypal.png'),
      titleImage1: 'Retiro por paypal',
      image2: AssetImage('assets/card.png'),
      titleImage2: 'Pagar con tarjeta de credito',
    );
  });
}

class CheckboxWidget extends StatefulWidget {
  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: bloc.selectedCheckbox,
        onChanged: (bool value){
          setState(() {
            bloc.selectedCheckbox = value;
          });
        }
    );
  }
}
