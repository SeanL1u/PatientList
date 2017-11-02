//
//  Patient.m
//  PatientList-Sean
//
//  Created by Sean Liu on 2017-11-02.
//  Copyright © 2017 Sean Liu. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)sessionInit{
    
    NSLog(@"Name:");
    self.name = [InputControl new].currentInputStr;
    
    NSLog(@"HealthCard No.:");
    self.healthCardNumber = [InputControl new].currentInputStr;
    
    NSLog(@"Symptoms:");
    self.symptoms = [InputControl new].currentInputStr;
    return self;
}

-(void)summaryPrint{
    
    NSLog(@"Patient: %@\nDoctor: %@\nDate: %@\nSymptoms: %@\nMed Requested: %@\nFeedback: %@\nPrescription:%@",self.name,self.sessionSummary[0],self.sessionSummary[1][1],self.sessionSummary[1][2],self.sessionSummary[1][0],self.sessionSummary[1][3],self.sessionSummary[1][4]);
    
    //@[doctor.name,@[patient.medsRequested,date,patient.symptoms,doctor.feedback,doctor.medPrescribed]];}
        //@[doctor.name,@[patient.medsRequested,patient.symptoms,doctor.feedback,doctor.medPrescribed]];}
}

@end
