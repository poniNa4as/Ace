import 'package:flutter/material.dart';

class FilterButtons extends StatefulWidget {
  const FilterButtons({super.key});
  @override
  State<FilterButtons> createState() => _FilterButtonsState();
}

class _FilterButtonsState extends State<FilterButtons> {
  List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        borderRadius: BorderRadius.circular(12),
        fillColor: Colors.blue.shade100,
        selectedColor: Colors.blue.shade900,
        color: Colors.black87,
        borderColor: Colors.blueGrey,
        selectedBorderColor: Colors.blue,
        isSelected: isSelected,
        onPressed: (index) {
          setState(() {
            for (int i = 0; i < isSelected.length; i++) {
              isSelected[i] = i == index;
            }

            // 🔥 Здесь можно вызвать фильтрацию:
            // if (index == 0) _filterAll();
            // if (index == 1) _filterPopular();
            // if (index == 2) _filterNew();
          });
        },
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('All'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('Popular'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('New'),
          ),
        ],
      ),
    );
  }
}
