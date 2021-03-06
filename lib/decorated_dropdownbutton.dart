library decorated_dropdownbutton;

import 'package:flutter/material.dart';


class DecoratedDropdownButton extends StatelessWidget{
  List<DropdownMenuItem<String>> items;
  Color? color;
  Border? border;
  BorderRadius? borderRadius;
  List<BoxShadow>? boxShadow;
  Gradient? gradient;
  BoxShape shape;
  Icon icon;
  String value;
  EdgeInsets iconPadding;
  EdgeInsets padding;
  TextStyle? style;
  Widget? underline;
  bool isExpanded;
  bool autoFocus;
  Color? iconEnableColor;
  Color? iconDisableColor;
  Color? dropdownColor;
  Color? focusColor;
  void Function(Object? value) onChanged;
  void Function()? onTap;
  AlignmentGeometry alignment;
  FocusNode? node;
  Widget? hint;
  Widget? disabledHint;

  DecoratedDropdownButton(
     {Key? key, 
        required this.value, 
        required this.items,
        required this.onChanged,
        this.borderRadius,
        this.border,
        this.color,
        this.gradient,
        this.icon = const Icon(Icons.arrow_drop_down),
        this.iconPadding = const EdgeInsets.only(left:20),
        this.shape = BoxShape.rectangle,
        this.padding = const EdgeInsets.only(left:20, right:20),
        this.style,
        this.underline,
        this.isExpanded = true,
        this.iconEnableColor,
        this.iconDisableColor,
        this.dropdownColor,
        this.focusColor,
        this.autoFocus = false,
        this.alignment = AlignmentDirectional.centerStart,
        this.node,
        this.hint,
        this.disabledHint,
     }
  ) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
     return DecoratedBox(
          decoration: BoxDecoration( 
            color:color, 
            border: border??Border.all(color: Colors.black45),
            borderRadius: borderRadius,
            boxShadow: boxShadow,
            gradient: gradient,
            shape: shape
          ),
          
          child:Padding(
            padding: padding,
            child:DropdownButton(
              value: value,
              items: items.map((e){
                 return e;
              }).toList(),
              onChanged: (value){
                 onChanged(value);
              },
              onTap: onTap,
              icon: Padding(
                padding: iconPadding,
                child:icon
              ), 
              iconEnabledColor: iconEnableColor,
              iconDisabledColor: iconDisableColor,
              style: style,
              dropdownColor: dropdownColor,
              underline: underline ?? Container(),
              isExpanded: isExpanded,
              autofocus: autoFocus,
              alignment: alignment,
              focusNode: node,
              hint: hint,
              disabledHint: disabledHint,
            )
          )
        );
  }
}
