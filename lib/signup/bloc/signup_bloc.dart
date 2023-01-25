import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {
    on<SignupEvent>((event, emit) async{
       if(event is RegisterAccount){
         try {
          final CollectionReference users =
      FirebaseFirestore.instance.collection('user_details');
  
      final auth = FirebaseAuth.instance;
      final userCredential = await auth.createUserWithEmailAndPassword(
          email: event.email, password: event.password);
          await users.doc(userCredential.user!.uid).set({
        'email': event.email,
        'password': event.password,
        'username': event.username,
        'phone': event.phone,
        'userid': userCredential.user!.uid,
        'profile_image': '',
        'type':'user'
      });
      emit(SignupSuccess());
    }on FirebaseAuthException catch (e) {
      emit(SignupFailed(errormessage: e.code));
    }
        }
      // TODO: implement event handler
    });
  }
}
