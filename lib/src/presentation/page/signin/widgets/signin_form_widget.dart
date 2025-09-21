import '../../../all_export.dart';

class SignInForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const SignInForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return AutofillGroup(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 64),
        children: [
          Center(
            child: Text(
              "Welcome Back!",
              style: context.textTheme.headlineMedium,
            ),
          ),
          30.hx,
          CustomTextFormField(
            controller: emailController,
            autofillHints: [AutofillHints.email],
            textFieldType: TextFieldType.email,
            hintText: "example@gmail.com",
            title: "Email",
          ),
          15.hx,
          CustomTextFormField(
            controller: passwordController,
            autofillHints: [AutofillHints.password],
            hintText: "Enter at least 8+ characters",
            title: "Password",
            textFieldType: TextFieldType.password,
          ),
          20.hx,
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    BlocBuilder<AuthenticationBloc, AuthenticationState>(
                      buildWhen: (previous, current) =>
                          previous.isRememberMe != current.isRememberMe,
                      builder: (context, state) {
                        return Checkbox(
                          value: state.isRememberMe,
                          side: BorderSide(color: Colors.black87),
                          onChanged: (value) => context
                              .read<AuthenticationBloc>()
                              .add(AuthenticationEvent.changeRememberMe(
                                  value ?? false)),
                          fillColor: WidgetStateProperty.all(state.isRememberMe
                              ? AppColor.primaryColor
                              : Colors.white),
                          checkColor: Colors.white,
                        );
                      },
                    ),
                    Text(
                      "Remember Me",
                      style: TextStyle(color: AppColor.primaryColor),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () => context.read<AuthenticationBloc>().add(
                      AuthenticationEvent.changeOnboardingType(
                          OnboardingType.forgotPassword),
                    ),
                child: Text(
                  "Forgot Password?",
                  style: context.textTheme.bodyMedium?.copyWith(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          20.hx,
          BlocConsumer<AuthenticatorWatcherBloc, AuthenticatorWatcherState>(
            listenWhen: (previous, current) => previous.state != current.state,
            listener: (context, authState) =>
                authCheckRequest(context, authState),
            builder: (context, authState) {
              return BlocConsumer<AuthenticationBloc, AuthenticationState>(
                listener: (context, state) {
                  if (state.state == AuthFlow.error) {
                    showCommonToast(
                        context: context,
                        message: state.message,
                        notificationType: ToastificationType.error);
                  }
                  if (state.state == AuthFlow.userExist) {
                    context.read<AuthenticationBloc>().add(
                        AuthenticationEvent.signIn(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim()));
                  }

                  if (state.state == AuthFlow.signIn) {
                    context
                        .read<AuthenticatorWatcherBloc>()
                        .add(AuthenticatorWatcherEvent.authCheckRequest());
                  }
                },
                builder: (context, state) {
                  return CustomElevatedButton(
                    onTap: () {
                      if (formKey.currentState?.validate() ?? false) {
                        TextInput.finishAutofillContext();
                        context.read<AuthenticationBloc>().add(
                            AuthenticationEvent.checkUserExist(
                                email: emailController.text.trim()));
                      }
                    },
                    isLoading: state.state == AuthFlow.loading ||
                        authState.state == UserState.loading,
                    label: "Login",
                    radius: 100,
                  );
                },
              );
            },
          ),
          20.hx,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: context.textTheme.bodyMedium,
              ),
              5.wx,
              InkWell(
                onTap: () => context.read<AuthenticationBloc>().add(
                    AuthenticationEvent.changeOnboardingType(
                        OnboardingType.signUp)),
                child: Text(
                  "Sign Up",
                  style: context.textTheme.bodyMedium?.copyWith(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
