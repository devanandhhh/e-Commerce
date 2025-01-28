import 'package:e_commerce_app/bloc/product_bloc/product_bloc.dart';
import 'package:e_commerce_app/core/colors.dart';
import 'package:e_commerce_app/presentation/product_screen/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/grid_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ProductBloc>().add(HomeProductFetchEvent());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kMainColor,
          title: Text(
            "E Commerce App",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state is HomeProductLoadingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is HomeProductLoadedState) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0,
                    childAspectRatio: .62),
                itemBuilder: (context, index) {
                  final product = state.productList[index]; 
                  return InkWell( 
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ProductScreen(model: product,),));
                    },
                    child: GridContainer(product: product));
                },
              );
            } else {
              return Container(
                height: 200,
                width: 200,
                color: kMainColor,
              );
            }
          },
        ));
  }
}
