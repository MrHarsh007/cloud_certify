import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../all_export.dart';

class SignUpForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;

  const SignUpForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.firstNameController,
    required this.lastNameController,
  });

  @override
  Widget build(BuildContext context) {
    final allCertifications = CertificationType.values.toList();

    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 64),
      children: [
        Center(
          child: Text(
            "Create an account",
            style: context.textTheme.headlineMedium,
          ),
        ),
        30.hx,
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                controller: firstNameController,
                textFieldType: TextFieldType.alphabet,
                hintText: "First name",
                title: "First Name",
              ),
            ),
            25.wx,
            Expanded(
              child: CustomTextFormField(
                controller: lastNameController,
                textFieldType: TextFieldType.alphabet,
                hintText: "Last name",
                title: "Last Name",
              ),
            ),
          ],
        ),
        15.hx,
        CustomTextFormField(
          controller: emailController,
          textFieldType: TextFieldType.email,
          hintText: "example@gmail.com",
          title: "Email",
        ),
        15.hx,
        CustomTextFormField(
          controller: passwordController,
          hintText: "Enter at least 8+ characters",
          title: "Password",
          textFieldType: TextFieldType.password,
        ),
        Text(
          "Password must be at least 8 characters long",
          style: context.textTheme.bodyMedium
              ?.copyWith(fontSize: 12, color: Colors.grey),
        ),
        15.hx,
        CommonDropDownWidget(
          listOfItem: allCertifications.map((e) => e.wireName).toList(),
          enabledBorderColor: Colors.black38,
          hint: "Select a Certification",
          title: "Which certification are you interested in?",
          validator: (value) {
            if (value == null) {
              return "Please select a certification";
            }
            return null;
          },
          onChanged: (value) => context.read<AuthenticationBloc>().add(
              AuthenticationEvent.changeIntrestedCertificate(
                  value?.toCertificationType())),
        ),
        15.hx,
        Row(
          children: [
            BlocBuilder<AuthenticationBloc, AuthenticationState>(
              buildWhen: (previous, current) =>
                  previous.isTermsAccepted != current.isTermsAccepted,
              builder: (context, state) {
                return Checkbox(
                  value: state.isTermsAccepted,
                  side: BorderSide(color: Colors.black87),
                  onChanged: (value) => context.read<AuthenticationBloc>().add(
                      AuthenticationEvent.changeTermsAccepted(value ?? false)),
                  fillColor: WidgetStateProperty.all(state.isTermsAccepted
                      ? AppColor.primaryColor
                      : Colors.white),
                  checkColor: Colors.white,
                );
              },
            ),
            Expanded(
              child: Text.rich(
                TextSpan(
                  text: "I agree to the ",
                  style: TextStyle(fontSize: 14),
                  children: [
                    TextSpan(
                      text: "Terms of Service",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launchUrl(Uri.parse(TERMS_CONDITION),
                              mode: LaunchMode.externalApplication);
                        },
                    ),
                    TextSpan(text: " and "),
                    TextSpan(
                      text: "Privacy Policy",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launchUrl(Uri.parse(PRIVACY_POLICY),
                              mode: LaunchMode.externalApplication);
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        20.hx,
        BlocConsumer<AuthenticatorWatcherBloc, AuthenticatorWatcherState>(
          listenWhen: (previous, current) => previous.state != current.state,
          buildWhen: (previous, current) => previous.state != current.state,
          listener: (context, authState) =>
              authCheckRequest(context, authState),
          builder: (context, authState) {
            return BlocConsumer<AuthenticationBloc, AuthenticationState>(
              listener: (context, state) {
                if (state.state == AuthFlow.error) {
                  showCommonToast(
                    context: context,
                    message: state.message,
                    notificationType: ToastificationType.error,
                  );
                }
                if (state.state == AuthFlow.createAccount) {
                  showCommonToast(
                    context: context,
                    message: "Account Created Successfully",
                    notificationType: ToastificationType.success,
                  );
                  context.read<AuthenticationBloc>().add(
                      AuthenticationEvent.signIn(
                          email: emailController.text.trim(),
                          password: passwordController.text.trim()));
                }
                if (state.state == AuthFlow.userExist) {
                  showCommonToast(
                    context: context,
                    message: "User Already Exist",
                    notificationType: ToastificationType.info,
                  );
                }
                if (state.state == AuthFlow.userNotExist) {
                  context.read<AuthenticationBloc>().add(
                        AuthenticationEvent.signUp(
                          email: emailController.text,
                          password: passwordController.text,
                          fName: firstNameController.text,
                          lName: lastNameController.text,
                        ),
                      );
                }
                if (state.state == AuthFlow.signIn) {
                  context
                      .read<AuthenticatorWatcherBloc>()
                      .add(AuthenticatorWatcherEvent.authCheckRequest());
                }
              },
              buildWhen: (previous, current) =>
                  previous.state != current.state ||
                  previous.isTermsAccepted != current.isTermsAccepted,
              builder: (context, state) {
                return CustomElevatedButton(
                  isLoading: state.state == AuthFlow.loading ||
                      authState.state == UserState.loading,
                  onTap: () {
                    if (formKey.currentState?.validate() ?? false) {
                      if (state.isTermsAccepted) {
                        context.read<AuthenticationBloc>().add(
                              AuthenticationEvent.checkUserExist(
                                  email: emailController.text.trim()),
                            );
                      } else {
                        showCommonToast(
                          context: context,
                          message:
                              "Please Accept terms & condition and privacy policy",
                          notificationType: ToastificationType.warning,
                        );
                      }
                    }
                  },
                  label: "Create Account",
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
              "Already have an account?",
              style: TextStyle(fontSize: 14),
            ),
            5.wx,
            InkWell(
              onTap: () => context.read<AuthenticationBloc>().add(
                  AuthenticationEvent.changeOnboardingType(
                      OnboardingType.signIn)),
              child: Text(
                "Log In",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
