//
//  InputControl.m
//  ThreeLow
//
//  Created by Sean Liu on 2017-11-01.
//  Copyright © 2017 Sean Liu. All rights reserved.
//

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
    char inputstr[4];
    scanf("%s", inputstr);
    self.currentInputStr = [NSString stringWithUTF8String:inputstr];
    self.numValue = [_currentInputStr integerValue];
    
}



@end
