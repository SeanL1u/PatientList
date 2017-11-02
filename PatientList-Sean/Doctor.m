//
//  Doctor.m
//  PatientList-Sean
//
//  Created by Sean Liu on 2017-11-02.
//  Copyright © 2017 Sean Liu. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor
- (instancetype)sessionInit
{
    self.name = [InputControl new].currentInputStr;
    return self;
}








@end
