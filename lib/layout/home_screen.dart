import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:news/layout/cubit/cubit.dart';
import 'package:news/layout/cubit/states.dart';
import 'package:news/modules/search_screen.dart';
import 'package:news/shared/components/components/components.dart';
import '../shared/cubit/cubit.dart';
import '../shared/resources/color_manager.dart';
import '../shared/resources/values_manager.dart';

class HomeScreen extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (BuildContext context, NewsState state) {},
      builder: (BuildContext context, NewsState state) {
        NewsCubit cubit = NewsCubit.get(context);
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            title: Text(cubit.titles[cubit.currentIndex]),
            actions: [
              IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    navigateTo(context, SearchScreen());
                  }),
              IconButton(
                icon: const Icon(Icons.brightness_4_outlined),
                onPressed: () {
                  AppCubit.get(context).changeAppMode();
                },
              )
            ],
          ),
          body: NewsCubit.get(context)
              .screens[NewsCubit.get(context).currentIndex],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(color: ColorManager.lightGrey, spreadRadius: AppSize.s1)
            ]),
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: cubit.currentIndex,
                elevation: 0,
                onTap: (index) {
                  cubit.changeBottomNavBar(index);
                },
                items: cubit.bottomItems),
          ),
        );
      },
    );
  }
}
