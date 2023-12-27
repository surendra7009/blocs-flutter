import 'package:bloc/bloc.dart';
import 'package:blocs_demo_example/app.dart';
import 'package:blocs_demo_example/counter_observer.dart';
import 'package:flutter/material.dart';


void main() {
//  Bloc.observer = const CounterObserver();
  runApp(const CounterApp());
}

