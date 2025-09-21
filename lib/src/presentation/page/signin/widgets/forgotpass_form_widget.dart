import '../../../all_export.dart';

class ForgotPasswordForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;

  const ForgotPasswordForm({
    super.key,
    required this.formKey,
    required this.emailController,
  });

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  // Write fireabse function to send password reset email

  Future<void> _sendPasswordResetEmail() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: widget.emailController.text);
      showCommonToast(
          context: context,
          message: "Password reset email sent",
          notificationType: ToastificationType.success);
      context.read<AuthenticationBloc>().add(
            AuthenticationEvent.changeOnboardingType(OnboardingType.signIn),
          );
    } catch (e) {
      showCommonToast(
          context: context,
          message: e.toString(),
          notificationType: ToastificationType.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 64),
      children: [
        Center(
          child: Text(
            "Forgot Password?",
            style: context.textTheme.headlineMedium,
          ),
        ),
        15.hx,
        Text(
          "Enter your email address below to receive a password reset link.",
          style: context.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        20.hx,
        CustomTextFormField(
          controller: widget.emailController,
          textFieldType: TextFieldType.email,
          autofillHints: [AutofillHints.email],
          hintText: "example@gmail.com",
          title: "Email",
        ),
        30.hx,
        CustomElevatedButton(
          onTap: () {
            if (widget.formKey.currentState?.validate() ?? false) {
              _sendPasswordResetEmail();
            }
          },
          label: "Send Reset Link",
          radius: 100,
        ),
        20.hx,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Remember your password?",
              style: context.textTheme.bodyMedium,
            ),
            5.wx,
            InkWell(
              onTap: () {
                context.read<AuthenticationBloc>().add(
                      AuthenticationEvent.changeOnboardingType(
                          OnboardingType.signIn),
                    );
              },
              child: Text(
                "Log In",
                style: context.textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
