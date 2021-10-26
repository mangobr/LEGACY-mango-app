import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MaskedInput extends StatefulWidget {
  final TextEditingController textController = TextEditingController();
  MaskTextInputFormatter formatter;
  FormFieldValidator<String> validator;
  String hint;

  MaskedInput(MaskTextInputFormatter formatter,
      FormFieldValidator<String> validator, String hint) {
    this.formatter = formatter;
    this.hint = hint;
    this.validator = validator;
  }

  @override
  _MaskedInputState createState() => _MaskedInputState();
}

class _MaskedInputState extends State<MaskedInput> {
  @override
  Widget build(BuildContext context) {
    return buildTextField(
      this.widget.textController,
      this.widget.formatter,
      (value) => null,
      this.widget.hint,
    );
  }
}

Widget buildTextField(
    TextEditingController textEditingController,
    MaskTextInputFormatter textInputFormatter,
    FormFieldValidator<String> validator,
    String hint) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Stack(
      children: [
        TextFormField(
            controller: textEditingController,
            // inputFormatters: [const UpperCaseTextFormatter(), textInputFormatter],
            autocorrect: false,
            keyboardType: TextInputType.phone,
            autovalidateMode: AutovalidateMode.always,
            validator: validator,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: const TextStyle(color: Colors.grey),
                fillColor: Colors.white,
                filled: true,
                focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
                errorBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                border: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                errorMaxLines: 1)),
        Positioned(
          right: 0,
          top: 0,
          child: SizedBox(
              width: 48,
              height: 48,
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                    borderRadius: const BorderRadius.all(Radius.circular(24)),
                    child:
                        const Icon(Icons.clear, color: Colors.grey, size: 24),
                    onTap: () => textEditingController.clear()),
              )),
        )
      ],
    ),
  );
}
