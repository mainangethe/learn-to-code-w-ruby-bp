# Mixins
A module that is added to a class

## Why not just add the methods to the class?
Different classes need similar functionalities
String & Numeric both need <, <= , >, <=, == operators
when the classes can't be represented as a subclass of the other
DRY principle - Do Not Repeat Yourself - No duplication of code

Mixins allow us to mimic inheritance from more than one class. Ruby has a single inheritance property.
Constants & methods mixed into a class do not need to be prefixed with the module name.

## Modules (Mixins) vs inheritance
Class inheritance should be used for an "is-a" relationship.
Example , an array is a type of Object. A Fixnum is a type of Integer.
Modules should be used for a "has-a" relationship. It adds functionality.
Example, a String **has a** Comparable feature set.

## The Method Lookup Path
The order that modules are in a class matters
Ruby looks at the last module included in the class **"first"**.
If multiple modules mix in methods with the same name, the last module included in the class definition will be used first.
Ruby will throw an error if the method is not found in the class, the modules or any superclasses.
