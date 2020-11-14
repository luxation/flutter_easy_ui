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
  Widget center() {
    return Center(
      child: this,
    );
  }

  Widget contain({double width, double height}) {
    return Container(
      width: width,
      height: height,
      child: this,
    );
  }

  Widget padding(
      {@required double defaultValue,
      double top,
      double right,
      double bottom,
      double left}) {
    return Padding(
      padding: EdgeInsets.only(
          top: top ?? defaultValue,
          right: right ?? defaultValue,
          bottom: bottom ?? defaultValue,
          left: left ?? defaultValue),
      child: this,
    );
  }

  Widget onTap(Function onTap) {
    return GestureDetector(
      onTap: onTap,
      child: this,
    );
  }
}
