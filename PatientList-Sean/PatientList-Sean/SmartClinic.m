//
//  SmartClinic.m
//  PatientList-Sean
//
//  Created by Sean Liu on 2017-11-02.
//  Copyright © 2017 Sean Liu. All rights reserved.
//

#import "SmartClinic.h"



@implementation SmartClinic
+(void)interactionofDoctor: (Doctor*) doctor andPatient:(Patient*) patient{
    //-----------------------------------------
    NSDate *date= [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSString *currentDateString = [dateFormatter stringFromDate:date];
    //-----------------------------------------
    
    if ([[patient healthCardNumber] isEqualToString:@""]){
        NSLog(@"Patient Not Accepted");}
    else{
        NSLog(@"Feedback: ");
        doctor.feedback = [InputControl new].currentInputStr;
        NSLog(@"Prescription:");
        NSString* med = [InputControl new].currentInputStr;
        doctor.medPrescribed = [NSMutableArray new];
        
        while ([med isEqualToString:@"done"] == NO) {
            [doctor.medPrescribed addObject: med];
            med = [InputControl new].currentInputStr;
            }
     //summary
        patient.sessionSummary =@[doctor.name,@[patient.medsRequested,date,patient.symptoms,doctor.feedback,doctor.medPrescribed]];
        
        patient.medicalHistory[currentDateString] = patient.sessionSummary;
        doctor.visitsLog[patient.name] =@[patient.name, patient.sessionSummary[1]];
        doctor.medPrescribed = [NSMutableArray new];
        [patient summaryPrint];
        
}
}
@end
