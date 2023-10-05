import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:research/blocks/internet_bloc/internet_event.dart';
import 'package:research/blocks/internet_bloc/internet_state.dart';
import 'package:connectivity/connectivity.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  InternetBloc() : super(InternetInitialState()) {
    on<InternetGainedEvent>((event, emit) => emit(InternetGainedState()));
    on<InternetLostEvent>((event, emit) => emit(InternetLostState()));

    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.mobile ||
          event == ConnectivityResult.wifi) {
        add(InternetGainedEvent());
      } else {
        add(InternetLostEvent());
      }
    });
  }

  @override
  Future<void>close()  async {
    await _connectivitySubscription.cancel();
    super.close();
  }
}
