:: The warning incorrectStringBooleanError: 'Conversion of string literal "xxx" to bool always evaluates to true.' is suppressed because of the commonly used idiom 'assert(condition && "error message");'
:: The warning uninitMemberVar: 'Member variable 'ClassName::memberName' is not initialized in the constructor.' is suppressed because MathGeoLib doesn't commonly initialize members in ctors (performance).
:: The warning unusedFunction: 'The function 'funcName' is never used.' is suppressed because as a generic utility library, most of the functions are not used by the library itself.
:: The warning noConstructor: 'The class 'classname' does not have a constructor is suppressed because MathGeoLib uses the keyword 'class' for POD-like objects as well.

"C:\Program Files (x86)\Cppcheck\cppcheck" --version

"C:\Program Files (x86)\Cppcheck\cppcheck" --template "{file}({line}): ({severity}) ({id}): {message}" -UMATH_QT_INTEROP -I../src -rp=../src --enable=all --suppress=unusedFunction --suppress=noConstructor --suppress=uninitMemberVar --suppress=incorrectStringBooleanError --force ../src

pause

