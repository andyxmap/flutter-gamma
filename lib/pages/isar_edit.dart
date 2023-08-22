import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:getwidget/getwidget.dart';

import '../models/isar_models/solicitud.dart';
import '../utils/provider.dart';

class IsarEdit extends StatelessWidget {
  IsarEdit({super.key,required this.solicitud});
  Solicitud solicitud;

  

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
      final _formKey = GlobalKey<FormBuilderState>();
  final provider = GetIt.instance.get<SolicitudProvider>();
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(24),
        padding: EdgeInsets.all(24),
        child: FormBuilder(
            key: _formKey,
            initialValue: solicitud.toMap(),
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
                FormBuilderField<bool>(
            name: 'isClose',
            builder: (FormFieldState field) {
              return GFCheckboxListTile(
                title: const Text('Terminada'),
                value: field.value ?? false,  
                onChanged: (value) => field.didChange(value),
              );
            },
          ),
                MaterialButton(
                  color: Theme.of(context).colorScheme.secondary,
                  onPressed: () async {
                    // Validate and save the form values
                    if(_formKey.currentState?.saveAndValidate() ?? false){
                         debugPrint(_formKey.currentState?.value.toString());
                         provider.addOrUpdateSolicitud(
                            solicitud
                            ..serie = _formKey.currentState?.value['serie']
                            ..isClose =  _formKey.currentState?.value['isClose']
                         );
                         
                    }
                    
                  },
                  child: const Text('Guardar'),
                ),
                 MaterialButton(
                  color: Theme.of(context).colorScheme.secondary,
                  onPressed: () {
                    
                    Navigator.of(context).pushNamed("/list");
                    
                    
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