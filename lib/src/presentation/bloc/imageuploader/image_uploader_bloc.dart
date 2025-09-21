import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../../common/enum.dart';
import '../../../domain/usecase/image_uploader.dart';

part 'image_uploader_event.dart';
part 'image_uploader_state.dart';
part 'image_uploader_bloc.freezed.dart';

@singleton
class ImageUploaderBloc extends Bloc<ImageUploaderEvent, ImageUploaderState> {
  ImageUploaderBloc(this.imageuploader) : super(ImageUploaderState.initial()) {
    on<ImageUploaderEvent>((event, emit) async {
      await event.map(
        uploadImage: (value) async {
          emit(state.copyWith(state: RequestState.loading));
          final result = await imageuploader.execute(
              event.images, event.folderName, event.docType);

          result.fold(
            (f) => emit(
                state.copyWith(state: RequestState.error, message: f.message)),
            (s) {
              emit(state.copyWith(state: RequestState.loaded, imagepath: s));
            },
          );
        },
      );
    });
  }

  ImageUploader imageuploader;
}
