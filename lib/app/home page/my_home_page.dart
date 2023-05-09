import 'package:currency_exchange/app/root%20Page/root_page.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  final dropDownController = SingleValueDropDownController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropDownTextField(
                controller: dropDownController,
                dropDownItemCount: 2,
                textFieldDecoration: const InputDecoration(
                  hintText: 'Wybierz walutę',
                  border: OutlineInputBorder(),
                ),
                dropDownList: const [
                  DropDownValueModel(
                    name: 'Euro',
                    value: "eur",
                  ),
                  DropDownValueModel(
                    name: 'Dolar Amerykański',
                    value: "usd",
                  ),
                ],
                validator: (value) {
                  if (value == null) {
                    return "Required field";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (dropDownController.dropDownValue?.value == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Nie wybrano waluty"),
                          ),
                        );
                      } else {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => RootPage(
                                showLastMonth: false,
                                currency:
                                    dropDownController.dropDownValue!.value)));
                      }
                    },
                    child: const Text("Aktualny kurs"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (dropDownController.dropDownValue?.value == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Nie wybrano waluty"),
                          ),
                        );
                      } else {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => RootPage(
                                showLastMonth: true,
                                currency:
                                    dropDownController.dropDownValue!.value)));
                      }
                    },
                    child: const Text("Ostatnie 30 dni"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
