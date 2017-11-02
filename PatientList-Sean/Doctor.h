//
//  Doctor.h
//  PatientList-Sean
//
//  Created by Sean Liu on 2017-11-02.
//  Copyright © 2017 Sean Liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject
@property NSString* name;
@property NSString* feedback;
@property NSMutableArray* medPrescribed;
@property NSMutableDictionary* visitsLog;
- (instancetype)sessionInit;

@end
