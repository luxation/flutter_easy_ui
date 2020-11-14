/*
 * Copyright (c) 2020 Alexandre El Khoury
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

import 'package:flutter/material.dart';

/// Extensions Methods for Widgets
extension WidgetUtils on Widget {
  /// Center a widget
  Widget center() {
    return Center(
      child: this,
    );
  }

  /// Place the widget inside a container
  Widget contain({double width, double height}) {
    return Container(
      width: width,
      height: height,
      child: this,
    );
  }

  /// Add padding to a widget
  Widget padding(
      {double value = 0.0,
      double top,
      double right,
      double bottom,
      double left}) {
    return Padding(
      padding: EdgeInsets.only(
          top: top ?? value,
          right: right ?? value,
          bottom: bottom ?? value,
          left: left ?? value),
      child: this,
    );
  }

  /// Add a tap callback to a widget
  Widget onTap(Function onTap) {
    return GestureDetector(
      onTap: onTap,
      child: this,
    );
  }
}

/// Extensions Methods for List<Widget>
extension ListWidgetExtension on List<Widget> {
  /// Convert a list of widgets to a row
  Widget row(
      {MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
      CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start,
      MainAxisSize mainAxisSize = MainAxisSize.min}) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: this,
    );
  }

  /// Convert a list of widgets to a column
  Widget column(
      {MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
        CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start,
        MainAxisSize mainAxisSize = MainAxisSize.min}) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: this,
    );
  }
}
