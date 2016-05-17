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
@property (nonatomic,strong) NSString *fathername;

@property (nonatomic, strong)NSString *address;
@property (nonatomic,strong) NSString *note;


@property (nonatomic, assign) BOOL done;

// -(id)initWithName:(NSString *)name done: (BOOL)done;


 -(id)initWithName:(NSString *)name fathername:(NSString *)fathername address:(NSString *)address note :(NSString *)note done: (BOOL)done;



@end
