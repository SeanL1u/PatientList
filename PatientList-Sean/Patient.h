//
//  Patient.h
//  PatientList-Sean
//
//  Created by Sean Liu on 2017-11-02.
//  Copyright © 2017 Sean Liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputControl.h"

@interface Patient : NSObject
@property NSString* name;
@property NSString* healthCardNumber;
@property NSString* symptoms;
@property NSMutableArray* medsRequested;
@property NSArray* sessionSummary;
@property NSMutableDictionary* medicalHistory;
- (void)sessionInit;
-(void)summaryPrint;
@end
