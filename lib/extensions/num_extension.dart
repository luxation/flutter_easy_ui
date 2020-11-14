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

import 'dart:math';

/// Extensions Methods for nums
extension NumExtensions on num {

  /// Check if number is null
  bool get isNull => this == null;

  /// Check if the number is not null
  bool get isNotNull => this != null;

  /// Check if the number is even
  bool get isEven => this % 2 == 0;

  /// Check if the number is odd
  bool get isOdd => this % 2 != 0;

  /// Check if the number is positive
  bool get isPositive => this > 0;

  /// Check if the number is negative
  bool get isNegative => this < 0;

  /// Returns [this] limited to [places] decimal points.
  ///
  /// Example:
  /// ```dart
  /// 6.23456.decimalPoint(2); // 6.23
  /// ```
  num decimalPoint(int places) {
    num mod = pow(10.0, places);
    return ((this * mod).round() / mod);
  }

  /// Returns [Duration] of [this] in days.
  Duration get days => Duration(days: this);

  /// Returns [Duration] of [this] in hours.
  Duration get hours => Duration(hours: this);

  /// Returns [Duration] of [this] in minutes.
  Duration get minutes => Duration(minutes: this);

  /// Returns [Duration] of [this] in seconds.
  Duration get seconds => Duration(seconds: this);

  /// Returns [Duration] of [this] in milliseconds.
  Duration get milliseconds => Duration(milliseconds: this);

  /// Returns [Duration] of [this] in microseconds.
  Duration get microseconds => Duration(microseconds: this);
}
