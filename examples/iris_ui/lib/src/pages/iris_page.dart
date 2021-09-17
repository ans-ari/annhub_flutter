import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:iris_ui/bloc/iris_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:iris_ui/generated/l10n.dart';

class IrisPage extends StatefulWidget {
  const IrisPage({Key? key}) : super(key: key);

  @override
  _IrisPageState createState() => _IrisPageState();
}

class _IrisPageState extends State<IrisPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  final _sepalLengthFN = FocusNode();
  final _sepalWidthFN = FocusNode();
  final _petalLengthFN = FocusNode();
  final _petalWidthFN = FocusNode();
  final _sepalLengthController = TextEditingController();
  final _sepalWidthController = TextEditingController();
  final _petalLengthController = TextEditingController();
  final _petalWidthController = TextEditingController();
  var _irisSpecies = '';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return GetIt.instance.get<IrisBloc>();
      },
      child: BlocConsumer<IrisBloc, IrisState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {
              EasyLoading.dismiss();
              return _irisSpecies = '';
            },
            loading: () => EasyLoading.show(status: 'loading'),
            loaded: (data) {
              EasyLoading.dismiss();
              return _irisSpecies = data;
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: SafeArea(
              child: FormBuilder(
                key: _formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Column(
                  children: [
                    Flexible(
                      flex: 2,
                      child: GridView.count(
                          crossAxisCount: 2,
                          padding: const EdgeInsets.all(16.0),
                          // childAspectRatio: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 4,
                          children: [
                            _buildInputField(context,
                                focusNode: _sepalLengthFN,
                                labelText: 'Sepal length',
                                hintText: 'Sepal length',
                                nextFocusNode: _sepalWidthFN,
                                obscureText: false,
                                controller: _sepalLengthController,
                                formKey: FormKeys.sepalLength),
                            _buildInputField(context,
                                focusNode: _sepalWidthFN,
                                labelText: 'Sepal width',
                                hintText: 'Sepal width',
                                nextFocusNode: _petalLengthFN,
                                obscureText: false,
                                controller: _sepalWidthController,
                                formKey: FormKeys.sepalWidth),
                            _buildInputField(context,
                                focusNode: _petalLengthFN,
                                labelText: 'Petal length',
                                hintText: 'Petal length',
                                nextFocusNode: _petalWidthFN,
                                obscureText: false,
                                controller: _petalLengthController,
                                formKey: FormKeys.petalLength),
                            _buildInputField(context,
                                focusNode: _petalWidthFN,
                                labelText: 'Petal width',
                                hintText: 'Petal width',
                                obscureText: false,
                                controller: _petalWidthController,
                                formKey: FormKeys.petalWidth),
                          ]),
                    ),
                    Text('Result: $_irisSpecies'),
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildButton(
                                  context, _onPressedRemoteButton, 'ANS'),
                              _buildButton(
                                  context, _onPressedLocalButton, "ARI"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildInputField(BuildContext context,
          {required FocusNode focusNode,
          required String labelText,
          required String hintText,
          FocusNode? nextFocusNode,
          required bool obscureText,
          required TextEditingController controller,
          required String formKey}) =>
      CustomInputField.buildTextField(context,
          name: formKey,
          focusNode: FocusNode(),
          labelText: labelText,
          hintText: hintText,
          nextFocusNode: nextFocusNode,
          textInputAction: TextInputAction.next,
          obscureText: obscureText,
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(context),
            FormBuilderValidators.numeric(context),
          ]),
          controller: controller,
          textInputType: TextInputType.number);

  Widget _buildButton(BuildContext context,
          void Function(BuildContext context) onPress, String buttonLabel) =>
      ElevatedButton(
        onPressed: () => onPress(context),
        child: Container(
          alignment: Alignment.center,
          child: Text(buttonLabel),
        ),
      );

  void _onPressedRemoteButton(BuildContext context) {
    final currentState = _formKey.currentState;
    if (currentState?.saveAndValidate() != true) {
      return;
    }

    context.read<IrisBloc>().add(IrisEvent.getIrisPrediction(data: [
          double.parse(
              _formKey.currentState?.fields[FormKeys.sepalLength]?.value),
          double.parse(
              _formKey.currentState?.fields[FormKeys.sepalWidth]?.value),
          double.parse(
              _formKey.currentState?.fields[FormKeys.petalLength]?.value),
          double.parse(
              _formKey.currentState?.fields[FormKeys.petalWidth]?.value),
        ], isCallARI: false));
  }

  void _onPressedLocalButton(BuildContext context) {
    final currentState = _formKey.currentState;
    if (currentState?.saveAndValidate() != true) {
      return;
    }

    context.read<IrisBloc>().add(IrisEvent.getIrisPrediction(data: [
          double.parse(
              _formKey.currentState?.fields[FormKeys.sepalLength]?.value),
          double.parse(
              _formKey.currentState?.fields[FormKeys.sepalWidth]?.value),
          double.parse(
              _formKey.currentState?.fields[FormKeys.petalLength]?.value),
          double.parse(
              _formKey.currentState?.fields[FormKeys.petalWidth]?.value),
        ], isCallARI: true));
  }
}
