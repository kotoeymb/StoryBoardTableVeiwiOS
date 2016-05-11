//
//  Tasky.h
//  Storyboard
//
//  Created by Revo Tech on 5/10/16.
//  Copyright © 2016 Revo Tech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tasky : NSObject

@property (nonatomic, strong)NSString *name;

@property (nonatomic, assign) BOOL done;

-(id)initWithName:(NSString *)name done: (BOOL)done;

@end
