// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:newlaundry/navigationbar.dart';

// final FirebaseAuth _auth = FirebaseAuth.instance;
// final GoogleSignIn googleSignIn = GoogleSignIn();

// String name;
// String email;
// String imageUrl;

// Future<String> signInWithGoogle() async {
//   await Firebase.initializeApp();

//   final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
//   final GoogleSignInAuthentication googleSignInAuthentication =
//       await googleSignInAccount.authentication;

//   final AuthCredential credential = GoogleAuthProvider.credential(
//     accessToken: googleSignInAuthentication.accessToken,
//     idToken: googleSignInAuthentication.idToken,
//   );

//   final UserCredential authResult =
//       await _auth.signInWithCredential(credential);
//   final User user = authResult.user;

//   if (user != null) {
//     assert(!user.isAnonymous);
//     assert(await user.getIdToken() != null);
//     assert(user.email != null);
//     assert(user.displayName != null);
//     assert(user.photoURL != null);

//     name = user.displayName;
//     email = user.email;
//     imageUrl = user.photoURL;

//     final User currentUser = _auth.currentUser;
//     assert(user.uid == currentUser.uid);

//     if (name.contains(" ")) {
//       name = name.substring(0, name.indexOf(" "));
//     }

//     print('signInWithGoogle succeeded: $user');

//     return '$user';
//   }

//   return null;
// }

// Future<void> signOutGoogle() async {
//   await googleSignIn.signOut();

//   print("User Signed Out");
// }

// class GoogleLogin extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // return Container(
//     //   height: 50,
//     //   width: 50,
//     //   child: InkWell(
//     //     onTap: () => {
//     //       signInWithGoogle().then((result) {
//     //         if (result != null) {
//     //           Navigator.of(context).push(
//     //             MaterialPageRoute(
//     //               builder: (context) {
//     //                 return NavigationBarPage();
//     //               },
//     //             ),
//     //           );
//     //         }
//     //       }),
//     //     },
//     //     child: ClipOval(
//     //       child: Container(
//     //         color: Colors.white,
//     //         child: Center(
//     //           child: Image.asset(
//     //             'assets/logogoogle.png',
//     //             width: 35,
//     //             height: 35,
//     //           ),
//     //         ),
//     //       ),
//     //     ),
//     //   ),
//     // );
//     return Scaffold(
//       body: Container(
//         color: Colors.white,
//         child: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               _signInButton(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _signInButton() {
//     return GoogleSignInButton(
//       onPressed: () {
//         signInWithGoogle().then((result) {
//           if (result != null) {
//             // Navigator.of(context).push(
//             //   MaterialPageRoute(
//             //     builder: (context) {
//             //       return NavigationBarPage();
//             //     },
//             //   ),
//             // );
//             print('object');
//           }
//         });
//       },
//       darkMode: true, // default: false
//     );
//   }
// }
