import 'package:atm_navegacao_entre_telas/telas/tela_cliente.dart';
import 'package:atm_navegacao_entre_telas/telas/tela_contato.dart';
import 'package:atm_navegacao_entre_telas/telas/tela_empresa.dart';
import 'package:atm_navegacao_entre_telas/telas/tela_servico.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("ATM Consultoria"),
          centerTitle: true,
        ),
        body: Home()
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _abrirRotaEmpresa(){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => TelaEmpresa())
    );
  }

  void _abrirRotaCliente(){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => TelaCliente())
    );
  }

  void _abrirRotaContato(){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => TelaContato())
    );
  }
  
  void _abrirRotaServico(){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => TelaServico())
    );
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView (      
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Image.asset("images/logo.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                GestureDetector(
                  onTap: (){
                    _abrirRotaEmpresa();
                    },
                  child: Image.asset("images/menu_empresa.png"),
                ),


                GestureDetector(
                  onTap: (){
                    _abrirRotaCliente();
                  },
                  child: Image.asset("images/menu_cliente.png"),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(            
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                GestureDetector(
                  onTap: (){
                    _abrirRotaServico();
                  },
                  child: Image.asset("images/menu_servico.png"),
                ),


                GestureDetector(
                  onTap: (){
                    _abrirRotaContato();
                  },
                  child: Image.asset("images/menu_contato.png"),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}