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

-(id)initWithName:(NSString *)name done:(BOOL)done{
    self = [super init];
    if (self) {
        self.name = name;
        self.done = done;
    }
    return self;
}

@end
