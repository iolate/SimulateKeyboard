/*
 *  libSimulateKeyboard ( kr.iolate.simulatekeyboard )
 *
 *  iolate ( iolate@me.com )
 *  Twitter: @iolate_e
 *
 *  2014. Jan. 26.
 *
 */

#import "SimulateKeyboard.h"

#define PRINT_USAGE printf("[Usage]\n    %s usagePage keyCode [isPress] \n\n  if omit isPress, down first and up automatically.\n\n", argv[0]);

int main(int argc, char **argv, char **envp) {
    if (argc != 3 && argc != 4) {
        PRINT_USAGE;
        return 0;
    }
    
    int usagePage = atoi(argv[1]);
    int keyCode = atoi(argv[2]);
    
    if (argc == 3) {
        BOOL r = simulateKeyboardEvent(usagePage, keyCode, 1);
        if (r == FALSE) NSLog(@"## SK: Failed to simulate key event %d.%d.%d", usagePage, keyCode, 1);
        r = simulateKeyboardEvent(usagePage, keyCode, 0);
        if (r == FALSE) NSLog(@"## SK: Failed to simulate key event %d.%d.%d", usagePage, keyCode, 0);
    }else {
        int isPress = atoi(argv[3]);
        BOOL r = simulateKeyboardEvent(usagePage, keyCode, isPress);
        if (r == FALSE) NSLog(@"## SK: Failed to simulate key event %d.%d.%d", usagePage, keyCode, isPress);
    }
    
    return 0;
}