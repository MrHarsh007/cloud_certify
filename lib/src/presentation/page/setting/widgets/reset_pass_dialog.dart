import 'package:cloud_certify/src/presentation/all_export.dart';
import 'package:cloud_certify/src/presentation/bloc/update_pass_delete_account/update_pass_delete_account_bloc.dart';

class ResetPassDialog extends StatefulWidget {
  const ResetPassDialog({super.key});

  @override
  State<ResetPassDialog> createState() => _ResetPassDialogState();
}

class _ResetPassDialogState extends State<ResetPassDialog> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController _currentPasswordController;
  late TextEditingController _newPasswordController;

  @override
  void initState() {
    _currentPasswordController = TextEditingController();
    _newPasswordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 500,
        minWidth: 500,
      ),
      decoration: CommonUtilities.commonBoxDecoration.copyWith(
        color: Colors.white,
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.circular(SMALL_RADIUS),
      ),
      padding: const EdgeInsets.all(BOX_PADDING * 2),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: BOX_PADDING * 1.2, vertical: BOX_PADDING * 2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.primarySecondaryColor,
              ),
              child: Icon(Icons.lock_reset, size: 50, color: Colors.white),
            ),
            10.hx,
            Text(
              "Reset Password",
              style: context.textTheme.headlineSmall,
            ),
            const SizedBox(height: 5),
            Text(
              "Are you sure you want to reset your password? You will be logged out and need to sign in again after the reset.",
              textAlign: TextAlign.center,
              style: context.textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              title: "Password",
              controller: _currentPasswordController,
              textInputType: TextInputType.visiblePassword,
              hintText: "Enter your current password",
            ),
            const SizedBox(height: 10),
            CustomTextFormField(
              title: "Confirm Password",
              controller: _newPasswordController,
              textInputType: TextInputType.visiblePassword,
              hintText: "Enter your new password",
            ),
            const SizedBox(height: 20),
            BlocListener<AuthenticatorWatcherBloc, AuthenticatorWatcherState>(
              listener: (context, state) {
                if (state.state == UserState.unauthenticated) {
                  GoRouter.of(context).goNamed(AppRoutes.ONBOARDING_ROUTE_NAME);
                }
              },
              child: Row(
                children: [
                  Expanded(
                      child: CustomElevatedButton(
                    height: 40,
                    onTap: () => Navigator.of(context).pop(),
                    label: "Cancel",
                    backgroundColor: Colors.grey.shade200,
                    radius: SMALL_RADIUS,
                    labelColor: Colors.black,
                  )),
                  20.wx,
                  Expanded(
                      child: BlocConsumer<UpdatePassDeleteAccountBloc,
                          UpdatePassDeleteAccountState>(
                    listener: (context, state) {
                      if (state.state.isError) {
                        showCommonToast(
                            context: context,
                            message: state.message,
                            notificationType: ToastificationType.warning);
                      } else if (state.state.isLoaded) {
                        showCommonToast(
                            context: context,
                            message: "Password reset successfully",
                            notificationType: ToastificationType.success);
                        Navigator.of(context).pop();
                        context
                            .read<AuthenticatorWatcherBloc>()
                            .add(AuthenticatorWatcherEvent.signOut());
                      }
                    },
                    builder: (context, state) {
                      return CustomElevatedButton(
                        height: 40,
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            if (_currentPasswordController.text.trim() !=
                                _newPasswordController.text.trim()) {
                              showCommonToast(
                                  context: context,
                                  message:
                                      "New password and current password should be same",
                                  notificationType: ToastificationType.warning);
                              return;
                            }
                            context.read<UpdatePassDeleteAccountBloc>().add(
                                    UpdatePassDeleteAccountEvent.changePassword(
                                  oldPassword: _currentPasswordController.text,
                                  newPassword: _newPasswordController.text,
                                ));
                          }
                        },
                        isLoading: state.state.isLoading,
                        label: "Reset Password",
                        backgroundColor: AppColor.primarySecondaryColor,
                        radius: SMALL_RADIUS,
                        labelColor: Colors.white,
                      );
                    },
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
