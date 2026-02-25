import 'package:get_it/get_it.dart';
import '../../features/onboarding/presentation/bloc/onboarding_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Features - Onboarding
  
  // Bloc
  sl.registerFactory(() => OnboardingBloc());

  // Use cases

  // Repository

  // Data sources

  // Core
}
