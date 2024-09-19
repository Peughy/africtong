import 'package:africtong/src/commons/toast_msg.dart';
import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

FirebaseFirestore bd = FirebaseFirestore.instance;

class SignupServices {
  void signWinthEmailAndMdp(
      String username, String email, String mdp, String langue) async {
    const ToastMsg(bgColor: chooseLangOff, fgColor: Colors.black)
        .showToast("Inscription en cours...");
    // add to auth table
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: mdp,
      );

      // get the uid of current user
      String? currentUid = credential.user?.uid;

      // add to bd firestore
      bd.collection("utilisateurs").doc(currentUid).set({
        "nom_utilisateur": username,
        "type_compte": "apprenant",
        "profil": "utilisateurs/defaultProfil.jpg",
        "langue": langue
      });

      // show sanckbar
      const ToastMsg(bgColor: chooseLangOn, fgColor: primaryColor)
          .showToast("Inscription re");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        const ToastMsg(bgColor: chooseLangOff, fgColor: Colors.black)
            .showToast(tMdpFaible);
      } else if (e.code == 'email-already-in-use') {
        const ToastMsg(bgColor: chooseLangOff, fgColor: Colors.black)
            .showToast(tEmailExist);
      } else if (e.code == 'invalid-email') {
        const ToastMsg(bgColor: chooseLangOff, fgColor: Colors.black)
            .showToast(tEmailError);
      }
    } catch (e) {
      const ToastMsg(bgColor: chooseLangOff, fgColor: Colors.black)
          .showToast(tErreur);
    }
  }

  signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

    // add to bd firestore
    bd.collection("utilisateurs").doc(userCredential.user!.uid).set({
      "nom_utilisateur": "",
      "type_compte": "apprenant",
      "profil": "utilisateurs/defaultProfil.jpg",
      "langue": ""
    });
  }
}
