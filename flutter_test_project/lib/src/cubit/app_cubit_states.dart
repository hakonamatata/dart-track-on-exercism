import 'package:equatable/equatable.dart';

abstract class CubitsStates extends Equatable
{
  const CubitsStates();
}

class InitialCubitsState extends CubitsStates
{
  @override
  List<Object> get props => [];
}

class WelcomeState extends CubitsStates
{
  @override
  List<Object> get props => [];
}