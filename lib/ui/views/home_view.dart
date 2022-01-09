import 'package:flutter/material.dart';
import 'package:flutter_stacked/ui/views/home_viewModel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  //bool isMinus =  model.;

  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) =>
          Scaffold(
            appBar: AppBar(
              title: Text(model.appBarTitle),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[ Text(model.title),
                SizedBox(height:20),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () { model.counterIncrement();},),
                SizedBox(width:16),

                FloatingActionButton(
                  child: Icon(Icons.home_filled),
                  onPressed: () { model.resetCounter();},),

                SizedBox(width:16),
                FloatingActionButton(
                  child: Icon(Icons.remove),
                  onPressed: () { model.counterDecrement();},),


              ],
            ),
                SizedBox(height:50),
                Text(model.bottomText),
    ],
    ),
          ),
    );
  }
}
