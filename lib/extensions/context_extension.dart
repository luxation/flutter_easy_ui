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

/// Useful Extensions for using [BuildContext] inside widgets
extension ContextUtils on BuildContext {

  /// Get Media Query Data
  MediaQueryData get mq => MediaQuery.of(this);

  /// Get Theme Data
  ThemeData get theme => Theme.of(this);

  /// Get Screen Width from Media Query
  double get screenWidth => mq.size.width;

  /// Get Screen Height from Media Query
  double get screenHeight => mq.size.height;

  /// Get Percentage Width from Screen Width
  double get percentWidth => screenWidth / 100;

  /// Get Percentage Height from Screen Height
  double get percentHeight => screenHeight / 100;

  /// Get Aspect Ratio from Media Query
  double get aspectRation => mq.size.aspectRatio;

  /// Get Pixel Ratio from Media Query
  double get pixelRatio => mq.devicePixelRatio;

  /// Get Orientation from Media Query
  Orientation get orientation => mq.orientation;

  /// Check if orientation is portrait
  bool get isPortrait => orientation == Orientation.portrait;

  /// Check if orientation is landscape
  bool get isLandscape => orientation == Orientation.portrait;

  /// Get Primary Color from Theme
  Color get primaryColor => theme.primaryColor;

  /// Get Accent Color from Theme
  Color get accentColor => theme.accentColor;

  /// Get Brightness Color from Theme
  Brightness get brightness => theme.brightness;

  /// Get Scaffold State
  ScaffoldState get scaffold => Scaffold.of(this);

  /// Show SnackBar
  void showSnackBar(SnackBar snackbar) => scaffold.showSnackBar(snackbar);
}
