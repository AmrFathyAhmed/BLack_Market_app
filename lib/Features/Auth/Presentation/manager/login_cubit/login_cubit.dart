
import 'package:black_market/Features/Auth/Data/repo/auth_repo_impl.dart';
import 'package:black_market/Features/Auth/Presentation/manager/login_cubit/login_state.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';


class LoginCubit extends Cubit<LoginState> {
  LoginCubit():super(LoginInit());


  Future<void> login(email, password) async {
    try {
      emit(LoginLoading());

      var userCredential = await AuthRepoImpl().login(email: email, password: password);
      if (userCredential.user != null && !userCredential.user!.emailVerified) {
        emit(LoginFailure(errorMessage: "Verification email sent to you"));
      } else {
        emit(LoginSuccess());
      }
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          emit(LoginFailure(errorMessage: "No user found for that email."));
          break;
        case 'wrong-password':
          emit(LoginFailure(errorMessage: "Wrong password provided for that user."));
          break;
        case 'invalid-email':
          emit(LoginFailure(errorMessage: "The email address is not valid."));
          break;
        case 'user-disabled':
          emit(LoginFailure(errorMessage: "The user account has been disabled."));
          break;
        case 'too-many-requests':
          emit(LoginFailure(errorMessage: "Too many requests. Try again later."));
          break;
        case 'operation-not-allowed':
          emit(LoginFailure(errorMessage: "Email/password accounts are not enabled."));
          break;
        default:
          emit(LoginFailure(errorMessage: "An unknown error occurred: ${e.message}"));
          break;
      }
  }
  // Future<void> login(String email, String password) async {
  //   emit(LoginLoading());
  //   await Future.delayed(Duration(seconds: 1)); // Simulate network delay
  //   emit(LoginFailure(errorMessage: 'Test error message'));
  // }

}}
