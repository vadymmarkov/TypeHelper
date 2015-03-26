# TypeHelper

[![Version](https://img.shields.io/cocoapods/v/TypeHelper.svg?style=flat)](http://cocoadocs.org/docsets/TypeHelper)
[![License](https://img.shields.io/cocoapods/l/TypeHelper.svg?style=flat)](http://cocoadocs.org/docsets/TypeHelper)
[![Platform](https://img.shields.io/cocoapods/p/TypeHelper.svg?style=flat)](http://cocoadocs.org/docsets/TypeHelper)

A simple function for getting the name of the non optional type in Swift (from optional or implicitly unwrapped optional types).

## Usage

```swift
  let some: SomeClass = SomeClass()
  let someOptional: SomeClass? = SomeClass()
  let someImplicitlyUnwrappedOptional: SomeClass! = SomeClass()

  println(nonOptionalTypeName(some.dynamicType)) // <namespace>.SomeClass
  println(nonOptionalTypeName(someOptional.dynamicType)) // <namespace>.SomeClass
  println(nonOptionalTypeName(someImplicitlyUnwrappedOptional.dynamicType)) // <namespace>.SomeClass

  println(nonOptionalTypeName(Printable)) // Swift.Printable
  println(nonOptionalTypeName(Printable?)) // Swift.Printable

  println(nonOptionalTypeName(UIView)) // UIView
  println(nonOptionalTypeName(UIView?)) // UIView

```

## Installation

**TypeHelper** is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TypeHelper'
```

## Author

Vadym Markov, impressionwave@gmail.com

## License

**TypeHelper** is available under the MIT license. See the LICENSE file for more info.
