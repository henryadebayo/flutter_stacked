import 'package:flutter/material.dart';
import 'package:flutter_stacked/ui/views/home_viewModel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) =>
          Scaffold(
            body: Center(child: Text(model.title),
            ),
            floatingActionButton: FloatingActionButton(onPressed: () { model.updateCounter();},),
          ),
    );
  }
}
