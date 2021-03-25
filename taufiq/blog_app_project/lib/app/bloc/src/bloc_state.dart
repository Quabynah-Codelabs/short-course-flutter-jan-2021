import 'package:equatable/equatable.dart';

abstract class BlocState extends Equatable {
  const BlocState();
}

class InitialState extends BlocState {
  @override
  List<Object?> get props => [];
}

