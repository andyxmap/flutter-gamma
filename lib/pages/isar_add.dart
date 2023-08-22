import 'package:bolsa_flutter/utils/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import '../models/isar_models/solicitud.dart';

class IsarAdd extends StatelessWidget {
  IsarAdd({super.key});
  final _formKey = GlobalKey<FormBuilderState>();
  final provider = GetIt.instance.get<SolicitudProvider>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(24),
        padding: EdgeInsets.all(24),
        child: FormBuilder(
            key: _formKey,
            child: Column(
              children: [
                FormBuilderTextField(
                    name: 'serie',
                    decoration: const InputDecoration(
                      labelText: 'Serie',
                      ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ])),
                const SizedBox(height: 10),
                FormBuilderCheckbox(
                  name: 'isDone',
                  decoration: const InputDecoration(labelText: 'Terminada'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  title: const Text("Terminada"),
                ),
                MaterialButton(
                  color: Theme.of(context).colorScheme.secondary,
                  onPressed: () async {
                    // Validate and save the form values
                    if(_formKey.currentState?.saveAndValidate() ?? false){
                         debugPrint(_formKey.currentState?.value.toString());
                         provider.addOrUpdateSolicitud(
                            Solicitud()
                            ..serie = _formKey.currentState?.value['serie']
                            ..isClose =  _formKey.currentState?.value['isDone']
                            ..createdAt = DateTime.now()
                         );
                         _formKey.currentState?.reset();
                          Navigator.of(context).pushNamed("/list");
                    }
                    
                  },
                  child: const Text('Agregar'),
                ),
                 MaterialButton(
                  color: Theme.of(context).colorScheme.secondary,
                  onPressed: () {
                    
                    Navigator.of(context).pop();
                    
                    
                  },
                  child: const Text('Volver'),
                )
              ],
            ),
          ),
      ),
      );
  }
}
