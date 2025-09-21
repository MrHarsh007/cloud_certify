// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_certify/src/data/datasource/activity_remote_datasource.dart'
    as _i814;
import 'package:cloud_certify/src/data/datasource/authentication_remote_datasource.dart'
    as _i382;
import 'package:cloud_certify/src/data/datasource/image_upload_remote_data_source.dart'
    as _i182;
import 'package:cloud_certify/src/data/datasource/leaderboard_remote_datasource.dart'
    as _i297;
import 'package:cloud_certify/src/data/datasource/profile_remote_datasource.dart'
    as _i1070;
import 'package:cloud_certify/src/data/datasource/streak_remote_datasource.dart'
    as _i255;
import 'package:cloud_certify/src/data/datasource/test_history_remote_datasource.dart'
    as _i127;
import 'package:cloud_certify/src/data/datasource/test_remote_datasource.dart'
    as _i59;
import 'package:cloud_certify/src/data/repository/activity_repository_impl.dart'
    as _i946;
import 'package:cloud_certify/src/data/repository/auth_repository_impl.dart'
    as _i1061;
import 'package:cloud_certify/src/data/repository/image_upload_repository_impl.dart'
    as _i777;
import 'package:cloud_certify/src/data/repository/leaderboard_repository_impl.dart'
    as _i87;
import 'package:cloud_certify/src/data/repository/profile_repository_impl.dart'
    as _i589;
import 'package:cloud_certify/src/data/repository/streak_repository_impl.dart'
    as _i332;
import 'package:cloud_certify/src/data/repository/test_history_repository_impl.dart'
    as _i1014;
import 'package:cloud_certify/src/data/repository/test_repository_impl.dart'
    as _i637;
import 'package:cloud_certify/src/domain/repository/activity_repository.dart'
    as _i969;
import 'package:cloud_certify/src/domain/repository/auth_repository.dart'
    as _i910;
import 'package:cloud_certify/src/domain/repository/image_upload_repository.dart'
    as _i752;
import 'package:cloud_certify/src/domain/repository/leaderboard_repository.dart'
    as _i1054;
import 'package:cloud_certify/src/domain/repository/profile_repository.dart'
    as _i4;
import 'package:cloud_certify/src/domain/repository/streak_repository.dart'
    as _i677;
import 'package:cloud_certify/src/domain/repository/test_history_repository.dart'
    as _i687;
import 'package:cloud_certify/src/domain/repository/test_repository.dart'
    as _i236;
import 'package:cloud_certify/src/domain/usecase/activity_usecase.dart'
    as _i635;
import 'package:cloud_certify/src/domain/usecase/authentication_usecase.dart'
    as _i300;
import 'package:cloud_certify/src/domain/usecase/image_uploader.dart' as _i311;
import 'package:cloud_certify/src/domain/usecase/leaderboard_usecase.dart'
    as _i988;
import 'package:cloud_certify/src/domain/usecase/profile_usecase.dart' as _i994;
import 'package:cloud_certify/src/domain/usecase/streak_usecase.dart' as _i1058;
import 'package:cloud_certify/src/domain/usecase/test_history_usecase.dart'
    as _i19;
import 'package:cloud_certify/src/domain/usecase/test_usecase.dart' as _i1019;
import 'package:cloud_certify/src/presentation/all_export.dart' as _i36;
import 'package:cloud_certify/src/presentation/bloc/auth_blocs/authentication/authentication_bloc.dart'
    as _i536;
import 'package:cloud_certify/src/presentation/bloc/auth_blocs/authenticator_watcher/authenticator_watcher_bloc.dart'
    as _i757;
import 'package:cloud_certify/src/presentation/bloc/imageuploader/image_uploader_bloc.dart'
    as _i1064;
import 'package:cloud_certify/src/presentation/bloc/leaderboard/leaderboard_bloc.dart'
    as _i322;
import 'package:cloud_certify/src/presentation/bloc/personalized_courses/personalized_courses_bloc.dart'
    as _i994;
import 'package:cloud_certify/src/presentation/bloc/recent_activity/recent_activity_bloc.dart'
    as _i685;
import 'package:cloud_certify/src/presentation/bloc/resources/resources_bloc.dart'
    as _i911;
import 'package:cloud_certify/src/presentation/bloc/side_panel/side_panel_bloc.dart'
    as _i1020;
import 'package:cloud_certify/src/presentation/bloc/streak/streak_bloc.dart'
    as _i89;
import 'package:cloud_certify/src/presentation/bloc/test_bloc/get_test/get_test_bloc.dart'
    as _i172;
import 'package:cloud_certify/src/presentation/bloc/test_bloc/star_stop_sumbit_test/star_stop_sumbit_test_bloc.dart'
    as _i353;
import 'package:cloud_certify/src/presentation/bloc/test_bloc/test_details/test_details_bloc.dart'
    as _i359;
import 'package:cloud_certify/src/presentation/bloc/test_history/test_history_bloc.dart'
    as _i1020;
import 'package:cloud_certify/src/presentation/bloc/test_history_details/test_history_details_bloc.dart'
    as _i361;
import 'package:cloud_certify/src/presentation/bloc/update_pass_delete_account/update_pass_delete_account_bloc.dart'
    as _i1035;
import 'package:cloud_certify/src/presentation/bloc/update_profile/update_profile_bloc.dart'
    as _i495;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i1020.SidePanelBloc>(() => _i1020.SidePanelBloc());
    gh.lazySingleton<_i297.LeaderboardRemoteDatasource>(
        () => _i297.LeaderboardRemoteDatasourceImpl());
    gh.lazySingleton<_i1070.ProfileRemoteDataSource>(
        () => _i1070.ProfileRemoteDataSourceImpl());
    gh.lazySingleton<_i59.TestRemoteDatasource>(
        () => _i59.TestRemoteDatasourceImpl());
    gh.lazySingleton<_i1054.LeaderboardRepository>(() =>
        _i87.LeaderboardRepositoryImpl(
            gh<_i297.LeaderboardRemoteDatasource>()));
    gh.lazySingleton<_i127.TestHistoryRemoteDatasource>(
        () => _i127.TestHistoryRemoteDatasourceImpl());
    gh.factory<_i988.LeaderboardUsecase>(
        () => _i988.LeaderboardUsecase(gh<_i1054.LeaderboardRepository>()));
    gh.lazySingleton<_i255.StreakRemoteDatasource>(
        () => _i255.StreakRemoteDatasourceImpl());
    gh.lazySingleton<_i814.ActivityRemoteDataSource>(
        () => _i814.ActivityRemoteDataSourceImpl());
    gh.lazySingleton<_i236.TestRepository>(
        () => _i637.TestRepositoryImpl(gh<_i59.TestRemoteDatasource>()));
    gh.singleton<_i322.LeaderboardBloc>(
        () => _i322.LeaderboardBloc(gh<_i988.LeaderboardUsecase>()));
    gh.lazySingleton<_i182.ImageUploadRemoteDataSource>(
        () => _i182.ImageUploadRemoteDataSourceImpl());
    gh.lazySingleton<_i382.AuthenticationRemoteDataSource>(
        () => _i382.AuthenticationRemoteDataSourceImpl());
    gh.lazySingleton<_i687.TestHistoryRepository>(() =>
        _i1014.TestHistoryRepositoryImpl(
            gh<_i127.TestHistoryRemoteDatasource>()));
    gh.factory<_i1019.TestUsecase>(
        () => _i1019.TestUsecase(gh<_i236.TestRepository>()));
    gh.lazySingleton<_i677.StreakRepository>(
        () => _i332.StreakRepositoryImpl(gh<_i255.StreakRemoteDatasource>()));
    gh.factory<_i19.TestHistoryUsecase>(
        () => _i19.TestHistoryUsecase(gh<_i687.TestHistoryRepository>()));
    gh.lazySingleton<_i752.ImageUploadRepository>(() =>
        _i777.ImageUploadRepositoryImpl(
            gh<_i182.ImageUploadRemoteDataSource>()));
    gh.lazySingleton<_i4.ProfileRepository>(() =>
        _i589.ProfileRepositoryImpl(gh<_i1070.ProfileRemoteDataSource>()));
    gh.lazySingleton<_i969.ActivityRepository>(() =>
        _i946.ActivityRepositoryImpl(gh<_i814.ActivityRemoteDataSource>()));
    gh.factory<_i311.ImageUploader>(
        () => _i311.ImageUploader(gh<_i752.ImageUploadRepository>()));
    gh.factory<_i994.ProfileUseCase>(
        () => _i994.ProfileUseCase(gh<_i4.ProfileRepository>()));
    gh.singleton<_i1064.ImageUploaderBloc>(
        () => _i1064.ImageUploaderBloc(gh<_i311.ImageUploader>()));
    gh.singleton<_i1020.TestHistoryBloc>(
        () => _i1020.TestHistoryBloc(gh<_i19.TestHistoryUsecase>()));
    gh.singleton<_i361.TestHistoryDetailsBloc>(
        () => _i361.TestHistoryDetailsBloc(gh<_i19.TestHistoryUsecase>()));
    gh.lazySingleton<_i910.AuthRepository>(() =>
        _i1061.AuthRepositoryImpl(gh<_i382.AuthenticationRemoteDataSource>()));
    gh.factory<_i635.ActivityUsecase>(
        () => _i635.ActivityUsecase(gh<_i969.ActivityRepository>()));
    gh.factory<_i1058.StreakUsecase>(
        () => _i1058.StreakUsecase(gh<_i677.StreakRepository>()));
    gh.singleton<_i359.TestDetailsBloc>(
        () => _i359.TestDetailsBloc(gh<_i1019.TestUsecase>()));
    gh.singleton<_i172.GetTestBloc>(
        () => _i172.GetTestBloc(gh<_i1019.TestUsecase>()));
    gh.factory<_i300.AuthenticationUsecase>(
        () => _i300.AuthenticationUsecase(gh<_i910.AuthRepository>()));
    gh.singleton<_i495.UpdateProfileBloc>(() => _i495.UpdateProfileBloc(
          gh<_i300.AuthenticationUsecase>(),
          gh<_i1064.ImageUploaderBloc>(),
        ));
    gh.singleton<_i757.AuthenticatorWatcherBloc>(
        () => _i757.AuthenticatorWatcherBloc(gh<_i994.ProfileUseCase>()));
    gh.singleton<_i994.PersonalizedCoursesBloc>(
        () => _i994.PersonalizedCoursesBloc(gh<_i635.ActivityUsecase>()));
    gh.singleton<_i1035.UpdatePassDeleteAccountBloc>(() =>
        _i1035.UpdatePassDeleteAccountBloc(gh<_i300.AuthenticationUsecase>()));
    gh.singleton<_i685.RecentActivityBloc>(
        () => _i685.RecentActivityBloc(gh<_i635.ActivityUsecase>()));
    gh.singleton<_i353.StarStopSumbitTestBloc>(
        () => _i353.StarStopSumbitTestBloc(
              gh<_i1019.TestUsecase>(),
              gh<_i36.TestDetailsBloc>(),
              gh<_i36.LeaderboardBloc>(),
              gh<_i36.RecentActivityBloc>(),
              gh<_i36.TestHistoryBloc>(),
            ));
    gh.singleton<_i911.ResourcesBloc>(() => _i911.ResourcesBloc(
          gh<_i988.LeaderboardUsecase>(),
          gh<_i36.RecentActivityBloc>(),
        ));
    gh.singleton<_i89.StreakBloc>(() => _i89.StreakBloc(
          gh<_i1058.StreakUsecase>(),
          gh<_i685.RecentActivityBloc>(),
        ));
    gh.singleton<_i536.AuthenticationBloc>(() => _i536.AuthenticationBloc(
          gh<_i300.AuthenticationUsecase>(),
          gh<_i685.RecentActivityBloc>(),
        ));
    return this;
  }
}
