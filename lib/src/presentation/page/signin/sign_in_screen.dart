import '../../all_export.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      buildWhen: (previous, current) =>
          previous.onboardingType != current.onboardingType,
      builder: (context, state) {
        return CommonAuthenticationBackground(
          child: Center(
            child: Form(
              key: _formKey,
              child: state.onboardingType == OnboardingType.forgotPassword
                  ? FadeInDown(
                      child: ForgotPasswordForm(
                        formKey: _formKey,
                        emailController: _emailController,
                      ),
                    )
                  : state.onboardingType == OnboardingType.signIn
                      ? FadeInUp(
                          duration: Duration(milliseconds: 500),
                          child: SignInForm(
                            formKey: _formKey,
                            emailController: _emailController,
                            passwordController: _passwordController,
                          ),
                        )
                      : FadeInDown(
                          duration: Duration(milliseconds: 500),
                          child: SignUpForm(
                            formKey: _formKey,
                            emailController: _emailController,
                            passwordController: _passwordController,
                            firstNameController: _firstNameController,
                            lastNameController: _lastNameController,
                          ),
                        ),
            ),
          ),
        );
      },
    );
  }
}
