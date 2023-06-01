



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixify/features/edit_photo_page/presentation/pages/widgets/edit_photo_layout.dart';
import 'package:pixify/features/edit_photo_page/presentation/cubit/edit_photo_cubit.dart';
class EditPhotoPage extends StatelessWidget {
  const EditPhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditPhotoCubit(),
      child: const EditPhotoLayout(),
    );
  }
}
