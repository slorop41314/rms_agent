part of 'shared.dart';

class CustomInput extends StatefulWidget {
  final TextEditingController? controller;
  final String? placeholder;
  final String? label;
  final bool secureText;
  final Function? onTapTrailingIcon;
  final Widget? leadingIcon;
  final void Function(String value)? onSubmit;
  final void Function(String value)? onChanged;
  final TextInputType keyboardType;
  final bool isRequired;
  final bool isInputArea;
  final bool isDisabled;
  final List<TextInputFormatter>? formatter;
  final String? Function(String?)? validator;
  final Widget? trailingIcon;
  final BoxConstraints? trailingConstraint;
  final Color? boxDecorationColor;
  final Color? labelColor;

  /// Text below the input box
  ///
  /// Used for telling the requirement to user.
  final String? helperText;

  /// Error message
  final String? errorMessage;

  CustomInput({
    this.controller,
    this.label,
    this.placeholder,
    this.secureText = false,
    this.onTapTrailingIcon,
    this.leadingIcon,
    this.onSubmit,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.isRequired = false,
    this.isDisabled = false,
    this.isInputArea = false,
    this.formatter,
    this.validator,
    this.helperText,
    this.errorMessage,
    this.trailingIcon,
    this.trailingConstraint,
    this.boxDecorationColor,
    this.labelColor,
  });

  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  bool showValue = true;

  bool isFocused = false;

  bool get isError =>
      widget.errorMessage != null &&
      (widget.errorMessage?.trim().isNotEmpty ?? false);

  @override
  Widget build(BuildContext context) {
    final _label = widget.label;
    final _errorMessage = widget.errorMessage;
    final _helperText = widget.helperText;

    return FocusScope(
      child: Focus(
        onFocusChange: (focus) {
          setState(() {
            isFocused = focus;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: widget.boxDecorationColor ?? _getInputBackgroundColor(),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: _getBorderColor(),
                  width: _getBorderWidth(),
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 4,
              ),
              child: TextFormField(
                validator: widget.validator,
                enabled: !this.widget.isDisabled,
                onChanged: this.widget.onChanged,
                obscureText: this.widget.secureText ? this.showValue : false,
                keyboardType: this.widget.keyboardType,
                controller: widget.controller,
                onFieldSubmitted: this.widget.onSubmit,
                minLines: this.widget.isInputArea ? 4 : 1,
                maxLines: this.widget.isInputArea ? 4 : 1,
                style: CustomTextStyles.medium14.copyWith(
                  color: widget.isDisabled
                      ? CustomColors.black.shade600
                      : CustomColors.black,
                ),
                inputFormatters: widget.formatter,
                decoration: InputDecoration(
                  label: _label != null ? Text(_label) : null,
                  labelStyle: CustomTextStyles.medium16.copyWith(
                    color: _getLabelColor(),
                  ),
                  suffixIconConstraints: widget.trailingConstraint,
                  hintText: this.widget.placeholder,
                  hintStyle: CustomTextStyles.regular14.copyWith(
                    color: widget.labelColor,
                  ),
                  border: InputBorder.none,
                  prefixIcon: this.widget.leadingIcon,
                  suffixIcon: this.widget.secureText
                      ? InkWell(
                          onTap: () {
                            setState(() {
                              showValue = !this.showValue;
                            });
                          },
                          child: this.showValue
                              ? Icon(
                                  Icons.visibility_off,
                                  color: isFocused
                                      ? CustomColors.primary
                                      : CustomColors.black,
                                )
                              : Icon(
                                  Icons.visibility,
                                  color: isFocused
                                      ? CustomColors.primary
                                      : CustomColors.black,
                                ),
                        )
                      : widget.trailingIcon,
                ),
              ),
            ),
            if (isError && _errorMessage != null) ...[
              CustomGap.vSmall(),
              Text(
                _errorMessage,
                style: CustomTextStyles.medium12.error,
              ),
            ],
            if (_helperText != null) ...[
              CustomGap.vSmall(),
              Text(
                _helperText,
                style: CustomTextStyles.medium12.black20,
              ),
            ],
          ],
        ),
      ),
    );
  }

  Color _getInputBackgroundColor() {
    return widget.isDisabled ? CustomColors.grey.shade400 : Colors.white;
  }

  Color _getBorderColor() {
    if (isError) {
      return CustomColors.error;
    }
    if (isFocused) {
      return CustomColors.primary;
    }
    return CustomColors.grey.shade800;
  }

  double _getBorderWidth() {
    return 1.5;
  }

  Color _getLabelColor() {
    if (widget.isDisabled) {
      return CustomColors.black.shade400;
    }
    if (isError) {
      return CustomColors.error;
    }
    if (isFocused) {
      return CustomColors.primary;
    }
    return CustomColors.black.shade200;
  }
}
