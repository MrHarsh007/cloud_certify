part of 'update_pass_delete_account_bloc.dart';

@freezed
class UpdatePassDeleteAccountEvent with _$UpdatePassDeleteAccountEvent {
  // initial
  const factory UpdatePassDeleteAccountEvent.initial() = _Initial;

  // change password
  const factory UpdatePassDeleteAccountEvent.changePassword(
      {required String oldPassword,
      required String newPassword}) = _ChangePassword;

  // delete account
  const factory UpdatePassDeleteAccountEvent.deleteAccount() = _DeleteAccount;
}
