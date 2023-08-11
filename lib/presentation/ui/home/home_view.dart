import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/bloc/news_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News"),
      ),
      body: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) {
          return state.when(
            initial: () => Container(),
            loading: () => const CircularProgressIndicator(),
            success: (sucess) => ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemCount: sucess.data?.length ?? 0,
              separatorBuilder: (context, index) => const SizedBox(height: 15),
              itemBuilder: (context, index) => Container(
                width: double.infinity,
                height: 100,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      offset: const Offset(0.0, 2.0),
                      blurRadius: 2.0,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/newspaper.png",
                      height: 80,
                      width: 100,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: Text(
                              sucess.data?[index].title ?? "",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Text(
                            sucess.data?[index].author ?? "",
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            error: (error) => Container(),
          );
        },
      ),
    );
  }
}
