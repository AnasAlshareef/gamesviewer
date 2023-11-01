import 'package:anasgame/cubit/games/games_cubit.dart';
import 'package:anasgame/cubit/genres/genres_cubit.dart';
import 'package:anasgame/ui/widgets/cat.dart';
import 'package:anasgame/ui/widgets/games.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<GenresCubit>(context).getAllC();
    BlocProvider.of<GamesCubit>(context).getallg();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(left: 10, right: 10, top: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Row(
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
                BlocBuilder<GenresCubit, GenresState>(
                  builder: (context, state) {
                    if (state is GenresLoaded) {
                      final r = state.results;
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * .17,
                        child: ListView.separated(
                          physics: const ClampingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: r.length,
                          itemBuilder: (context, int index) {
                            return Cat(results: r[index]);
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(
                              width: 10,
                            );
                          },
                        ),
                      );
                    }
                    if (state is GenresLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return Container();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      'All Games',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
                BlocBuilder<GamesCubit, GamesState>(
                  builder: (context, state) {
                    if (state is GamesLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (state is GamesLoaded) {
                      final g = state.result;
                      return Flexible(
                        child: ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, int index) {
                              return Gam(res: g[index]);
                            },
                            separatorBuilder: (context, int index) {
                              return const SizedBox(
                                height: 15,
                              );
                            },
                            itemCount: g.length),
                      );
                    }
                    return Container();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
