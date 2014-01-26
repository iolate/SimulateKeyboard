/*
 *  libSimulateKeyboard ( kr.iolate.simulatekeyboard )
 *
 *  iolate ( iolate@me.com )
 *  Twitter: @iolate_e
 *
 *  2014. Jan. 26.
 *
 *  Keycode header: http://api.iolate.kr/beekeyboard/headers/BeeKeycode.h
 *
 *  https://github.com/iolate/SimulateKeyboard
 *
 */


#ifdef __cplusplus
extern "C" {
#endif
    
BOOL simulateKeyboardEvent(int usagePage, int keyCode, BOOL isPress);

#ifdef __cplusplus
} // extern "C"
#endif