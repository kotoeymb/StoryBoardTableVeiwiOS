//
//  Tasky.m
//  Storyboard
//
//  Created by Revo Tech on 5/10/16.
//  Copyright © 2016 Revo Tech. All rights reserved.
//

#import "Tasky.h"

@implementation Tasky

@synthesize name = _name;
@synthesize done = _done;
@synthesize fathername = _fathername;
@synthesize address = _address;
@synthesize note = _note;



-(id)initWithName:(NSString *)name fathername:(NSString *)fathername address:(NSString *)address note :(NSString *)note done:(BOOL)done{
    self = [super init];
    if (self) {
        self.name = name;
        self.fathername = fathername;
        self.address = address;
        self.note = note;
        self.done = done;
    }
    return self;                                                                          
}

@end

/* 

 -(id)initWithName:(NSString *)name fathername:(NSString *)fathername address:(NSString *)address note :(NSString *)note done:(BOOL)done{
 self = [super init];
 if (self) {
 self.name = name;
 //        self.fathername = fathername;
 //        self.address = address;
 //        self.note = note;
 self.done = done;
 }
 return self;
 }
 
 @end
*/