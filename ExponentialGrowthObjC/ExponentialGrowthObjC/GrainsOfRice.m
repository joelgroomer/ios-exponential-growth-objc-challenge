//
//  GrainsOfRice.m
//  ExponentialGrowthObjC
//
//  Created by joshua kaunert on 7/24/19.
//  Copyright © 2019 joshua kaunert. All rights reserved.
//

#import "GrainsOfRice.h"
#include <math.h>

@interface GrainsOfRice ()

@property (nonatomic, copy) NSMutableArray *squares;

@end

@implementation GrainsOfRice

//- (instancetype)init
//{
//    _squares[0] = 1;
//}

// Test your logic with the unit tests (Command + U)

- (unsigned long long)grainsOnSquareNumber:(NSInteger)number {
    if (number > 64 || number < 1) {
        return -1;
    }
    NSLog(@"Answer for number %ld: %llu", (long)number, (unsigned long long int)pow(2, number - 1));
    return (unsigned long long int)pow(2, number - 1);
}


- (unsigned long long)grainsOnBoard {
    unsigned long long int total = 0;
    
    for (int i = 1; i <= 64; i++) {
        total += [self grainsOnSquareNumber:i];
    }
    
    return total;
}

@end
