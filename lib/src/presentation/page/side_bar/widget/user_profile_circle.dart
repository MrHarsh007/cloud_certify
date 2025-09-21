import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_certify/src/presentation/all_export.dart';

class UserProfileCircle extends StatelessWidget {
  const UserProfileCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticatorWatcherBloc, AuthenticatorWatcherState>(
      buildWhen: (previous, current) => previous.usermodel != current.usermodel,
      builder: (context, state) {
        if (state.usermodel?.photoUrl != null) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border:
                  Border.all(width: 2, color: AppColor.primarySecondaryColor),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 2, color: Colors.white),
              ),
              child: CircleAvatar(
                radius: 16,
                backgroundImage:
                    CachedNetworkImageProvider(state.usermodel!.photoUrl!),
              ),
            ),
          );
        }
        return CircleAvatar(
          radius: 16,
          backgroundColor: AppColor.primarySecondaryColor,
          child: Text(
            CommonAssets.getUserInitial(state.usermodel?.email ?? ""),
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        );
      },
    );
  }
}
