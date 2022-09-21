import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/movies/presentation/controller/movies_bloc.dart';
import 'package:movies_app/movies/presentation/controller/movies_state.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/network/api_constance.dart';
import '../../../core/utilis/dummy.dart';
import '../../../core/utilis/enums.dart';

class PopularMoviesComponent extends StatelessWidget {
  const PopularMoviesComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<MoviesBloc,MoviesState>(
      buildWhen:(previous,current)=>previous.popularState !=current.popularState,
      builder: (context,state){
        switch (state.popularState){

          case RequestState.loading:
            return const SizedBox(
              height: 400.0,
              child: Center(child: CircularProgressIndicator()),
            );
          case RequestState.loaded:
             return  FadeIn(
               duration: const Duration(milliseconds: 500),
               child: SizedBox(
                 height: 170.0,
                 child: ListView.builder(
                   shrinkWrap: true,
                   scrollDirection: Axis.horizontal,
                   padding: const EdgeInsets.symmetric(horizontal: 16.0),
                   itemCount: state.popularMovies.length,
                   itemBuilder: (context, index) {
                     final movie = state.popularMovies[index];
                     return Container(
                       padding: const EdgeInsets.only(right: 8.0),
                       child: InkWell(
                         onTap: () {
                           /// TODO : NAVIGATE TO  MOVIE DETAILS
                         },
                         child: ClipRRect(
                           borderRadius:
                           const BorderRadius.all(Radius.circular(8.0)),
                           child: CachedNetworkImage(
                             width: 120.0,
                             fit: BoxFit.cover,
                             imageUrl: ApiConstance.imageUrl(movie.backdropPath),
                             placeholder: (context, url) => Shimmer.fromColors(
                               baseColor: Colors.grey[850]!,
                               highlightColor: Colors.grey[800]!,
                               child: Container(
                                 height: 170.0,
                                 width: 120.0,
                                 decoration: BoxDecoration(
                                   color: Colors.black,
                                   borderRadius: BorderRadius.circular(8.0),
                                 ),
                               ),
                             ),
                             errorWidget: (context, url, error) =>
                             const Icon(Icons.error),
                           ),
                         ),
                       ),
                     );
                   },
                 ),
               ),
             );
          case RequestState.error:
            return SizedBox(
              height: 400.0,
              child: Center(child: Text(state.nowPlayingMessage)),
            );
        }

      },

    );
  }
}
