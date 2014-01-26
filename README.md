
SimulateKeyboard
=============


It doesn't contain whole source.
I will add whole later.


Simulate keyboard library for iOS

You can simulate keyboard event.

Test on iOS7, but I think this supports iOS6 too.

How to use
----
refer to main.mm (skeyboard; command line tool)

Keycodes
----
same as keycodes for BeeKeyboard
http://api.iolate.kr/beekeyboard/headers/BeeKeycode.h

Example
----
Homebutton: 
```sh
simulateKeyboardEvent(12, 64, 1);
simulateKeyboardEvent(12, 64, 0);
```
Copy (Cmd + C): 
```sh
simulateKeyboardEvent(7, 231, 1);
simulateKeyboardEvent(7, 6, 1);
simulateKeyboardEvent(7, 6, 1);
simulateKeyboardEvent(7, 231, 0);
```