import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magang/domain/entities/news.dart';
import 'package:magang/domain/usecase/get_news_usecase.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final GetNewsUsecase getNewsUsecase;
  NewsBloc(this.getNewsUsecase) : super(const _Initial()) {
    on<NewsEvent>((event, emit) async {
      await event.when(
        started: () async => emit(const _Initial()),
        getNews: () async {
          try {
            emit(const _Loading());

            final result = await getNewsUsecase.call();

            emit(result.fold((failure) => Error(failure.errorMessage ?? ""),
                (data) => Success(data)));
          } catch (e) {
            emit(Error(e.toString()));
          }
        },
      );
    });
  }
}
