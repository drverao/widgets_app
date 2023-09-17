import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportacion { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportacion selectedTransportation = Transportacion.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text('Developer Mode'),
            subtitle: const Text('Controles adicionales'),
            value: isDeveloper,
            onChanged: (value) {
              setState(() {
                isDeveloper = !isDeveloper;
              });
            }),
        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
                title: const Text('By Car'),
                subtitle: const Text('Viajar en auto'),
                value: Transportacion.car,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportacion.car;
                    })),
            RadioListTile(
                title: const Text('By Plane'),
                subtitle: const Text('Viajar en avion'),
                value: Transportacion.plane,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportacion.plane;
                    })),
            RadioListTile(
                title: const Text('By Boat'),
                subtitle: const Text('Viajar en barco'),
                value: Transportacion.boat,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportacion.boat;
                    })),
            RadioListTile(
                title: const Text('By Submarine'),
                subtitle: const Text('Viajar en submarino'),
                value: Transportacion.submarine,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportacion.submarine;
                    })),
          ],
        ),
        CheckboxListTile(
          title: const Text('Desayuno?'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Almuerzo?'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Cena?'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
