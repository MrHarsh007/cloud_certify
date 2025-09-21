import 'package:cloud_certify/src/common/enum.dart';
import 'package:cloud_certify/src/domain/usecase/authentication_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_pass_delete_account_state.dart';
part 'update_pass_delete_account_event.dart';
part 'update_pass_delete_account_bloc.freezed.dart';

@singleton
class UpdatePassDeleteAccountBloc
    extends Bloc<UpdatePassDeleteAccountEvent, UpdatePassDeleteAccountState> {
  final AuthenticationUsecase _authenticationUsecase;
  UpdatePassDeleteAccountBloc(this._authenticationUsecase)
      : super(UpdatePassDeleteAccountState.initial()) {
    on<UpdatePassDeleteAccountEvent>((event, emit) async {
      await event.map(
        initial: (_Initial value) {
          emit(UpdatePassDeleteAccountState.initial());
        },
        changePassword: (_ChangePassword value) async {
          emit(state.copyWith(
              state: RequestState.loading, message: "Changing password..."));
          final result = await _authenticationUsecase.changePassword(
            oldPassword: value.oldPassword,
            newPassword: value.newPassword,
          );
          result.fold(
            (f) => emit(
                state.copyWith(state: RequestState.error, message: f.message)),
            (s) {
              emit(state.copyWith(
                  state: RequestState.loaded,
                  message: "Password changed successfully"));
            },
          );
        },
        deleteAccount: (_DeleteAccount value) async {
          emit(state.copyWith(
              state: RequestState.loading, message: "Deleting account..."));
          final result = await _authenticationUsecase.deleteAccount();
          result.fold(
            (f) => emit(
                state.copyWith(state: RequestState.error, message: f.message)),
            (s) {
              emit(state.copyWith(
                  state: RequestState.loaded,
                  message: "Account deleted successfully"));
            },
          );
        },
      );
    });
  }
}
