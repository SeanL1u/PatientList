//
//  SmartClinic.h
//  PatientList-Sean
//
//  Created by Sean Liu on 2017-11-02.
//  Copyright © 2017 Sean Liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "InputControl.h"


@interface SmartClinic : NSObject
+(void)interactionofDoctor:(Doctor*) doctor andPatient:(Patient*) patient;
@end
