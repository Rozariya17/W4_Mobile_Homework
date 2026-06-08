import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, disabled }

enum IconPosition { left, right }

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconPosition iconPosition;
  final ButtonType buttonType;

  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    this.iconPosition = IconPosition.left,
    this.buttonType = ButtonType.primary,
  });

  Color get buttonColor {
    switch (buttonType) {
      case ButtonType.primary:
        return Colors.blue;

      case ButtonType.secondary:
        return Colors.green;

      case ButtonType.disabled:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final iconWidget = Icon(icon, color: Colors.white);
    final textWidget = Text(
      label,
      style: TextStyle(color: Colors.white, fontSize: 20),
    );
    final List<Widget> content = iconPosition == IconPosition.left
        ? [iconWidget, const SizedBox(width: 10), textWidget]
        : [textWidget, const SizedBox(width: 10), iconWidget];
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: content,
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Custom Buttons")),
        
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            
            children: [
              CustomButton(label: "Submit", icon: Icons.check),
              CustomButton(label: "Time", icon: Icons.access_time,iconPosition: IconPosition.right,),
              CustomButton(label: "Account", icon: Icons.supervisor_account,buttonType: ButtonType.disabled,)
            ],
          ),
        ),
      ),
    ),
  );
}
