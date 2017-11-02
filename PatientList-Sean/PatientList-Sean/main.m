//
//  main.m
//  PatientList-Sean
//
//  Created by Sean Liu on 2017-11-02.
//  Copyright © 2017 Sean Liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "InputControl.h"
#import "SmartClinic.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor* doctor = [Doctor new];
        [doctor sessionInit];
        Patient* patient = [Patient new];
        [patient sessionInit];
        [SmartClinic interactionofDoctor:doctor andPatient:patient];
        
        
        
        
        
        
        
        
    }

        
        
            
            
            

        
        
        
        
        
        
        
        
        
    

    return 0;
}
