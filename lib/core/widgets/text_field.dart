import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocTextField<B extends BlocBase<S>, S> extends StatelessWidget {
  const BlocTextField({
    super.key,
    this.buildWhen,
    this.onChanged,
    this.lableText,
    this.errorText,
  });

  final String? lableText;
  final bool Function(S previous, S current)? buildWhen;
  final void Function(String value)? onChanged;
  final String? Function(S state)? errorText;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(
      buildWhen: buildWhen,
      builder: (context, state) {
        return TextFormField(
          onChanged: onChanged,
          decoration: InputDecoration(
            labelText: lableText,
            errorText: errorText == null ? null : errorText!(state),
          ),
        );
      },
    );
  }
}
