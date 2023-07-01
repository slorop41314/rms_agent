part of 'shared.dart';

class CustomBottomSheet {
  static PersistentBottomSheetController show(
    BuildContext context, {
    String? title,
    Widget? content,
    Widget? bottomAction,
    VoidCallback? onClose,
    bool useBackButton = false,
    bool showBackButton = true,
    bool isDismissible = true,
  }) {
    return showBottomSheet(
      context: context,
      builder: (context) => WillPopScope(
        onWillPop: () async {
          return isDismissible;
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 87,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  if (useBackButton && showBackButton)
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                        onClose?.call();
                      },
                      child: const Icon(Icons.arrow_back),
                    ),
                  title != null
                      ? Expanded(
                          child: Text(
                            title,
                            style: CustomTextStyles.extraBold14,
                          ),
                        )
                      : const Spacer(),
                  if (!useBackButton && showBackButton)
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                        onClose?.call();
                      },
                      child: const Icon(Icons.close),
                    ),
                ],
              ),
              if (title != null || showBackButton)
                const SizedBox(
                  height: 12,
                ),
              if (content != null) ...[
                content,
                const SizedBox(
                  height: 24,
                ),
              ],
              if (bottomAction != null) bottomAction,
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            16.0,
          ),
        ),
      ),
      enableDrag: isDismissible,
    );
  }

  static PersistentBottomSheetController showConfirmation(
    BuildContext context, {
    required String message,
    String? title,
    String? confirmLabel,
    VoidCallback? onPressConfirm,
    String? cancelLabel,
  }) {
    return show(
      context,
      title: title ?? "Confirm",
      content: Text(
        message,
        style: CustomTextStyles.regular14,
      ),
      bottomAction: Row(
        children: [
          Expanded(
            child: CustomButton(
              buttonType: CustomButtonType.secondary,
              onPressed: () {
                Navigator.of(context).pop();
              },
              label: cancelLabel ?? 'Cancel',
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {
                Navigator.of(context).pop();
                onPressConfirm?.call();
              },
              label: confirmLabel ?? 'Confirm',
            ),
          )
        ],
      ),
    );
  }
}
