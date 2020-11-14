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

/// Extensions Methods for strings
extension StringExtension on String {
  /// Check if the string is null or empty
  bool get isEmptyOrNull => this == null || isEmpty;

  /// Check if string is not blank (null or only white spaces)
  bool get isNotBlank => this != null && trim().isNotEmpty;

  /// Check if the string is an email
  bool get isEmail => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(this);

  /// Returns the string if it is not `null`, or the empty string otherwise
  String get orEmpty => this ?? "";

  ///Returns the capitalized string.
  ///
  ///Example:
  ///```dart
  ///"hello".capitalize(); // "Hello"
  ///```
  String capitalize() => this.length > 1
      ? "${this[0].toUpperCase()}${substring(1).toLowerCase()}"
      : this;

  /// Returns a String without any white space
  ///
  /// Example:
  /// ```dart
  /// "hello world".removeAllWhiteSpace() // "helloworld"
  /// ```
  String removeAllWhiteSpace() => replaceAll(RegExp(r"\s+\b|\b\s"), "");

  /// Returns a protected string
  ///
  /// Example:
  /// ```dart
  /// "hello world".protect() // "***********"
  /// `
  String protect() => this.replaceAll(RegExp(r".*"), "*");
}
