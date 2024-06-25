
import 'package:flutter/cupertino.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';


successSnackBar(context)=>showTopSnackBar(
  Overlay.of(context),const CustomSnackBar.success(message: "Note added successfully")
);
errorSnackBar(context)=>showTopSnackBar(
  Overlay.of(context),const CustomSnackBar.error(message: "Note added  failed")
);
warningSnackBar(context)=>showTopSnackBar(
  Overlay.of(context),const CustomSnackBar.info(message: "Title must not be empty")
);
updatedSnackBar(context)=>showTopSnackBar(
  Overlay.of(context),const CustomSnackBar.success(message: "Updated successfully")
);
