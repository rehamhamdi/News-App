import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/data/cubit/cubit.dart';
import 'package:news/data/cubit/states.dart';
import 'package:news/ui/widget/article_item.dart';

class GeneralNewsScreen extends StatelessWidget {
  const GeneralNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var list = NewsCubit.get(context).general;
          return ConditionalBuilder(
              condition: state is! GetBusinessDataLoading,
              builder: (context) => ListView.separated(
                  itemBuilder: (context, index) {
                    return buildArticleItem(context,list[index]);
                  },
                  separatorBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Divider(
                        color: Colors.black,
                      ),
                    );
                  },
                  itemCount: list.length),
              fallback: (context) =>
                  const Center(child: CircularProgressIndicator()));
        });
  }
}
