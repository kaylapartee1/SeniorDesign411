import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AuthenticateModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordController1Validator;
  // State field(s) for password widget.
  TextEditingController? passwordController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordController2Validator;
  // State field(s) for emailAddress-Create widget.
  TextEditingController? emailAddressCreateController;
  String? Function(BuildContext, String?)?
      emailAddressCreateControllerValidator;
  // State field(s) for password-Create widget.
  TextEditingController? passwordCreateController1;
  late bool passwordCreateVisibility1;
  String? Function(BuildContext, String?)? passwordCreateController1Validator;
  // State field(s) for password-Create widget.
  TextEditingController? passwordCreateController2;
  late bool passwordCreateVisibility2;
  String? Function(BuildContext, String?)? passwordCreateController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
    passwordCreateVisibility1 = false;
    passwordCreateVisibility2 = false;
  }

  void dispose() {
    emailAddressController?.dispose();
    passwordController1?.dispose();
    passwordController2?.dispose();
    emailAddressCreateController?.dispose();
    passwordCreateController1?.dispose();
    passwordCreateController2?.dispose();
  }

  /// Additional helper methods are added here.

}
