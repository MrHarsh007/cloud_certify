import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_certify/src/presentation/bloc/update_pass_delete_account/update_pass_delete_account_bloc.dart';
import 'package:cloud_certify/src/presentation/bloc/update_profile/update_profile_bloc.dart';
import 'package:cloud_certify/src/presentation/page/setting/widgets/reset_pass_dialog.dart';
import '../../../all_export.dart';

class UserProfileWidget extends StatefulWidget {
  const UserProfileWidget({super.key});

  @override
  State<UserProfileWidget> createState() => _UserProfileWidgetState();
}

class _UserProfileWidgetState extends State<UserProfileWidget> {
  final formKey = GlobalKey<FormState>();
  late final TextEditingController firstNameController;
  late final TextEditingController lastNameController;
  late final TextEditingController emailController;
  late final TextEditingController bioController;

  @override
  void initState() {
    final user = context.read<AuthenticatorWatcherBloc>().state.usermodel;

    firstNameController = TextEditingController(text: user?.firstName);
    lastNameController = TextEditingController(text: user?.lastName);
    emailController = TextEditingController(text: user?.email);
    bioController = TextEditingController(text: user?.bio);

    final updateBloc = context.read<UpdateProfileBloc>();
    updateBloc
        .add(UpdateProfileEvent.changeCertificate(user?.certificationTarget));
    updateBloc.add(UpdateProfileEvent.updateImageUrl(user?.photoUrl));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CommonUtilities.commonBoxDecoration,
      padding: const EdgeInsets.all(BOX_PADDING * 1.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          20.hx,
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildProfileColumn(),
                40.wx,
                _buildFormColumn(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.primarySecondaryColor,
            ),
            child: Icon(Icons.person, size: 22, color: Colors.white)),
        10.wx,
        Text(
          'User Profile',
          style: context.textTheme.titleLarge?.copyWith(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildProfileColumn() {
    return Expanded(
      flex: 2,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildUserProfileCircle(),
            20.hx,
            Column(
              children: [
                _buildPasswordSection(),
                20.hx,
                _buildDeleteSection(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildFormColumn() {
    return Flexible(
      flex: 3,
      child: BlocConsumer<UpdateProfileBloc, UpdateProfileState>(
        listenWhen: (previous, current) => previous.state != current.state,
        buildWhen: (previous, current) =>
            previous.certificate != current.certificate ||
            previous.state != current.state,
        listener: (context, state) {
          if (state.state.isError) {
            showCommonToast(
              context: context,
              message: state.message,
              notificationType: ToastificationType.warning,
            );
          } else if (state.state.isLoaded) {
            showCommonToast(
              context: context,
              message: state.message,
              notificationType: ToastificationType.success,
            );
          }
        },
        builder: (context, state) {
          return Form(
            key: formKey,
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 20,
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        controller: firstNameController,
                        textInputType: TextInputType.name,
                        title: "First Name",
                        hintText: "Enter your first name...",
                      ),
                    ),
                    Expanded(
                      child: CustomTextFormField(
                        controller: lastNameController,
                        textInputType: TextInputType.name,
                        title: "Last Name",
                        hintText: "Enter your last name...",
                      ),
                    ),
                  ],
                ),
                CustomTextFormField(
                  controller: emailController,
                  title: "Email Address",
                  isReadOnly: true,
                  helperText: "Email address cannot be changed",
                ),
                CommonDropDownWidget(
                  width: double.infinity,
                  value: state.certificate?.wireName,
                  listOfItem:
                      CertificationType.values.map((e) => e.wireName).toList(),
                  validator: (value) => value == null || value.isEmpty
                      ? "Please select a certification"
                      : null,
                  onChanged: (val) {
                    final cert = CertificationType.values
                        .toList()
                        .firstWhereOrNull((element) => element.wireName == val);
                    context
                        .read<UpdateProfileBloc>()
                        .add(UpdateProfileEvent.changeCertificate(cert));
                  },
                  title: "Select Certification",
                ),
                CustomTextFormField(
                  controller: bioController,
                  title: "Bio",
                  textInputType: TextInputType.text,
                  maxLines: 4,
                  minline: 4,
                  maxLength: 300,
                ),
                CustomElevatedButton(
                  isLoading: state.state.isLoading,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      context
                          .read<UpdateProfileBloc>()
                          .add(UpdateProfileEvent.updateProfile(
                            firstName: firstNameController.text,
                            lastName: lastNameController.text,
                            bio: bioController.text,
                          ));
                    }
                  },
                  label: "Save Changes",
                  width: 150,
                  height: 40,
                  radius: SMALL_RADIUS,
                  backgroundColor: AppColor.primarySecondaryColor,
                  labelColor: Colors.white,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildPasswordSection() {
    return _buildInfoBox(
      title: "Change Password",
      description:
          "Change your account password here. You will be logged out after the update.",
      buttonLabel: "Change Password",
      onTap: () {
        context
            .read<UpdatePassDeleteAccountBloc>()
            .add(UpdatePassDeleteAccountEvent.initial());

        showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  surfaceTintColor: Colors.white,
                  content: const ResetPassDialog(),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(SMALL_RADIUS)),
                  contentPadding: const EdgeInsets.all(0),
                  backgroundColor: Colors.white,
                ),
            barrierDismissible: false);
      },
      backgroundColor: Colors.grey.shade200,
      labelColor: Colors.black,
    );
  }

  Widget _buildDeleteSection() {
    return _buildInfoBox(
      title: "Delete Account",
      description:
          "Once deleted, your account and data will be permanently removed.",
      buttonLabel: "Delete Account",
      onTap: () {
        context
            .read<UpdatePassDeleteAccountBloc>()
            .add(UpdatePassDeleteAccountEvent.initial());

        showDialog(
            context: context,
            builder: (context) => BlocConsumer<UpdatePassDeleteAccountBloc,
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
                          message: "Account deleted successfully",
                          notificationType: ToastificationType.success);
                      Navigator.of(context).pop();
                      context
                          .read<AuthenticatorWatcherBloc>()
                          .add(AuthenticatorWatcherEvent.signOut());
                      GoRouter.of(context)
                          .goNamed(AppRoutes.ONBOARDING_ROUTE_NAME);
                    }
                  },
                  builder: (context, state) {
                    return ReusableDialog(
                      isLoading: state.state.isLoading,
                      imageUrl: "",
                      title: "Confirm Account Deletion",
                      description:
                          "Are you sure you want to delete your account? This action is irreversible and will permanently remove all your data.",
                      confirmButtonText: "Delete Account",
                      onConfirm: () =>
                          context.read<UpdatePassDeleteAccountBloc>().add(
                                UpdatePassDeleteAccountEvent.deleteAccount(),
                              ),
                    );
                  },
                ),
            barrierDismissible: false);
      },
      backgroundColor: Colors.red,
      labelColor: Colors.white,
      borderColor: Colors.red,
      containerColor: Colors.red.shade100.withOpacity(0.5),
    );
  }

  Widget _buildInfoBox({
    required String title,
    required String description,
    required String buttonLabel,
    required VoidCallback onTap,
    required Color backgroundColor,
    required Color labelColor,
    Color? borderColor,
    Color? containerColor,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(BOX_PADDING),
      decoration: CommonUtilities.commonBoxDecoration.copyWith(
        color: containerColor ?? Colors.white,
        border: Border.all(color: borderColor ?? Colors.grey.shade400),
        borderRadius: BorderRadius.circular(SMALL_RADIUS),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: context.textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.w700)),
          5.hx,
          Text(description, style: context.textTheme.bodyMedium),
          10.hx,
          CustomElevatedButton(
            onTap: onTap,
            label: buttonLabel,
            width: 150,
            height: 40,
            radius: SMALL_RADIUS,
            backgroundColor: backgroundColor,
            labelColor: labelColor,
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          ),
        ],
      ),
    );
  }

  Widget _buildUserProfileCircle() {
    final userEmail = FirebaseAuth.instance.currentUser?.email ?? "";
    final userInitial = CommonAssets.getUserInitial(userEmail);

    return Stack(
      children: [
        BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
          builder: (context, state) {
            return Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border:
                    Border.all(color: AppColor.primarySecondaryColor, width: 4),
              ),
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 4),
                ),
                child: _buildProfileImage(state, userInitial),
              ),
            );
          },
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: InkWell(
            onTap: () => getMediaFile(true, onCallBack: (file) {
              context
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeImage(file));
            }),
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.primarySecondaryColor,
                border: Border.all(color: Colors.white, width: 2),
              ),
              child:
                  const Icon(Icons.camera_alt, color: Colors.white, size: 18),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProfileImage(UpdateProfileState state, String userInitial) {
    if (state.profileImage != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: CachedNetworkImage(
          imageUrl: state.profileImage!,
          fit: BoxFit.cover,
        ),
      );
    } else if (state.image != null) {
      return FutureBuilder<Uint8List>(
        future: state.image!.readAsBytes(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.memory(snapshot.data!, fit: BoxFit.cover),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      );
    } else {
      return CircleAvatar(
        backgroundColor: AppColor.primarySecondaryColor,
        child: Text(
          userInitial,
          style: const TextStyle(
            fontSize: 60,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }
  }
}
