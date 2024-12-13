import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_with_bloc/main_page.dart';
import 'package:flutter_test_with_bloc/widget/result.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => CounterCubit(),
    child: MyApp(),
  ));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _inputController = TextEditingController();
  String _valueInput = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter Cubit',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          floatingActionButtonTheme:
              const FloatingActionButtonThemeData(splashColor: Colors.white12)),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Flutter Test Apps"),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: (value) => {
                    _valueInput = value,
                  },
                  controller: _inputController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Input N",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: ElevatedButton(
                          onPressed: () =>
                              BlocProvider.of<CounterCubit>(context)
                                  .btnOne(_valueInput),
                          child: const Text("1"),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: ElevatedButton(
                          onPressed: () =>
                              BlocProvider.of<CounterCubit>(context)
                                  .btnTwo(_valueInput),
                          child: const Text("2"),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: ElevatedButton(
                          onPressed: () =>
                              BlocProvider.of<CounterCubit>(context)
                                  .btnThree(_valueInput),
                          child: const Text("3"),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: ElevatedButton(
                          onPressed: () =>
                              BlocProvider.of<CounterCubit>(context)
                                  .btnFour(_valueInput),
                          child: const Text("4"),
                        ),
                      ),
                    ],
                  ),
                ),
                const Result(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
