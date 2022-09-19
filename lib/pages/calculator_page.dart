import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geri_health/widgets/subscription.dart';
import 'package:geri_health/widgets/textbox.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'dart:math';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorState();
}

class _CalculatorState extends State<CalculatorPage> {
  final TextEditingController pesoController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();

  double? altura;
  double? peso;
  double imc = 0;

  @override
  Widget build(BuildContext context) {
    var maskAltura = MaskTextInputFormatter(
      mask: '#,##',
      filter: {"#": RegExp(r'[0-9]+[,.]{0,1}[0-9]*')},
      type: MaskAutoCompletionType.lazy,
    );

    return Center(
      child: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
          child: Column(
            children: [
              const Text(
                'Seu IMC:',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                imc.toStringAsFixed(2),
                style: const TextStyle(fontSize: 120),
              ),
              Visibility(
                visible: imc == 0 ? false : true,
                child: verificaImc(imc),
              ),
              const SizedBox(height: 20),
              TextBoxTemplate(
                label: 'Peso',
                controller: pesoController,
                hintText: 'Peso (Kg)',
                suffixIcon: const Icon(Icons.balance),
                kbType: TextInputType.number,
              ),
              TextBoxTemplate(
                controller: alturaController,
                label: 'Altura',
                hintText: 'Altura (cm)',
                suffixIcon: const Icon(CupertinoIcons.arrow_up_down),
                kbType: TextInputType.number,
                mask: maskAltura,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.only(top: 5),
                child: ElevatedButton(
                  onPressed: () => {
                    peso = double.tryParse(
                        pesoController.text.replaceAll(',', '.')) as double,
                    altura = double.tryParse(
                        alturaController.text.replaceAll(',', '.')) as double,
                    setState(() {
                      imc = (peso! / pow(altura!, 2));
                    }),
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          'Calcular',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(Icons.calculate),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget verificaImc(double imc) {
    if (imc < 16) {
      return subscriptionTemplate(
        text: 'MUITO ABAIXO DO PESO',
        colorText: Colors.red,
      );
    } else if (imc > 16 && imc < 17) {
      return subscriptionTemplate(
        text: 'MAGREZA MODERADA',
        colorText: Colors.amber,
      );
    } else if (imc > 17 && imc < 18.5) {
      return subscriptionTemplate(
        text: 'MAGREZA LEVE',
        colorText: Colors.amber,
      );
    } else if (imc > 18.5 && imc < 25) {
      return subscriptionTemplate(
        text: 'SAUDÁVEL',
        colorText: Colors.green,
      );
    } else if (imc > 25 && imc < 30) {
      return subscriptionTemplate(
        text: 'SOBREPESO',
        colorText: Colors.amber,
      );
    } else if (imc > 30 && imc < 35) {
      return subscriptionTemplate(
        text: 'OBESIDADE DE GRAU I',
        colorText: Colors.red,
      );
    } else if (imc > 35 && imc < 40) {
      return subscriptionTemplate(
        text: 'OBESIDADE DE GRAU II',
        colorText: Colors.red,
      );
    } else if (imc >= 40) {
      return subscriptionTemplate(
        text: 'OBESIDADE DE GRAU III',
        colorText: Colors.red,
      );
    }
    return subscriptionTemplate(text: "");
  }
}
