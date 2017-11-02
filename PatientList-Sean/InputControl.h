//
//  InputControl.h
//  ThreeLow
//
//  Created by Sean Liu on 2017-11-01.
//  Copyright © 2017 Sean Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputControl : NSObject
@property NSString* currentInputStr;
@property NSInteger numValue;
-(void) getandConvert;
@end
