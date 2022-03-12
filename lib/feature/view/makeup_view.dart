import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_weekend/feature/view_model/makeup_view_model.dart';

class MakeupView extends StatelessWidget {
  const MakeupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MakeupCubit(),
      child: BlocConsumer<MakeupCubit, MakeupState>(
        listener: (context, state) {
          if (state is MakeupErrorState) {
            showModalBottomSheet(
                context: context, builder: (context) => const Text('Hataa'));
          }
        },
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                  backgroundColor: Color(0xffFBF0D7),
                  title: Text(
                    "Makeup App",
                    style: TextStyle(color: Colors.black),
                  )),
              body: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (BuildContext context, int index) {
                      return buildMakeupCard(context, index);
                    }),
              ));
        },
      ),
    );
  }

  Padding buildMakeupCard(BuildContext context, int index) {
    return Padding(
        padding: const EdgeInsets.all(1.0),
        child: Card(
          elevation: 10,
          margin: EdgeInsets.all(8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Image.network(
                        context
                                .watch<MakeupCubit>()
                                .makeupModel?[index]
                                .imageLink ??
                            "",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: InkWell(
                        child: Icon(
                          Icons.add_circle_outline_sharp,
                          color: Color(0xff6F697F),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        context.watch<MakeupCubit>().makeupModel?[index].name ??
                            "",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Icon(
                        Icons.favorite_border_sharp,
                        size: 23,
                        color: Color(0xff6F697F),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
