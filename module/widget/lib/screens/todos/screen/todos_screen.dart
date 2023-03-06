import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:theme/theme.dart';
import 'package:theme/material3/icons/app_icon.dart';

import '../../../component/flutter_easyloading-3.0.5/lib/flutter_easyloading.dart';
import '../../feed/sign/bloc/sign_bloc_cubit.dart';
import '../bloc/bloc_todos.dart';
import '../bloc/todo_state.dart';
import '../model/model.dart';
import '../service/api_service.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key, required this.title});

  final String title;

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  String newText = '';
  final TextEditingController _controller = TextEditingController();

  BlocTodosCubit get blocTodos => context.read<BlocTodosCubit>();

  onPressed() async {
    EasyLoading.show();
    await Future.delayed(const Duration(milliseconds: 1000), () {
      EasyLoading.dismiss();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: blocTodos.scrollModel,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: context.surfaceColor,
            title: Text(widget.title),
            actions: [IconButton(onPressed: () => onPressed(), icon: const Icon(Icons.add))],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(90),
              child: Container(
                color: context.surfaceColor,
                child: Column(
                  children: [
                    const Divider(
                      height: 1,
                    ),
                    _searchField(context),
                  ],
                ),
              ),
            ),
          ),
          body: BlocBuilder<BlocTodosCubit, TodoBlocState>(builder: (context, state) {
            state is TodoBlocLoadingState ? const CircularProgressIndicator() : const SizedBox.shrink();

            if (state is TodoBlocSuccessState) {
              return Container(
                  color: context.surfaceColor,
                  child: ListView.builder(
                      itemCount: state.data?.length,
                      itemBuilder: (context, index) {
                        if (state.data == null) {
                          return const SizedBox.shrink();
                        }
                        newText = state.data?[index].title ?? "";
                        return _filter(_controller.text, newText)
                            ? Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      newText,
                                      style: const TextStyle(fontSize: 16),
                                    )
                                  ],
                                ),
                              )
                            : const SizedBox.shrink();
                      }));
            }

            return Container(color: context.surfaceColor, height: double.infinity,);
          })),
    );
  }

  Consumer<ScrollModel> _itemProgressLoading() {
    return Consumer<ScrollModel>(
      builder: (context, model, __) {
        return model.isFetchDone == false
            ? const Center(
          child: CircularProgressIndicator(),
        )
            : const SizedBox.shrink();
      },
    );
  }

  Widget _searchField(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: TextFormField(
        controller: _controller,
        onChanged: (value) {
          blocTodos.searchTodos();
          _filter(_controller.text, newText);
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(13),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 16, right: 10),
            child: Icon(Icons.search),
          ),
          suffixIcon: Visibility(
            visible: _controller.text.isNotEmpty,
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    _controller.clear();
                  });
                },
                child: const Icon(Icons.close)),
          ),
          enabledBorder: outlineInputBorder(),
          border: outlineInputBorder(),
          focusedBorder: outlineFocusedBorder(),
          hintText: "search list todo..",
        ),
      ),
    );
  }

  bool _filter(String textField, String newText) {
    if (textField.isEmpty) {
      return false;
    }
    if (newText.contains(textField)) {
      return true;
    }
    return false;
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.6)),
      borderRadius: BorderRadius.circular(50),
    );
  }

  OutlineInputBorder outlineFocusedBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: Colors.blue),
      borderRadius: BorderRadius.circular(50),
    );
  }
}
