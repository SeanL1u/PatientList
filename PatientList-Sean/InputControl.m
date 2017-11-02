#import "InputControl.h"

@implementation InputControl

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self getandConvert];
    }
    return self;
}


-(void) getandConvert{
    char inputstr[255];
    scanf("%s", inputstr);
    self.currentInputStr = [NSString stringWithUTF8String:inputstr];
    self.numValue = [_currentInputStr integerValue];
    
}

+(NSString*) loopTilValid:(NSArray<NSString*>*) validCommands{

    NSString* input = [InputControl new].currentInputStr;
    while([validCommands indexOfObjectIdenticalTo: input] == NSNotFound){
        NSLog(@"\nInput Not Valid, try again");
        input = [InputControl new].currentInputStr;
        }
    return input;
}




@end
