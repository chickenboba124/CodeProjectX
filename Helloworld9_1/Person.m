//
//  Person.m
//  HelloWorld9
//
//  Created by micheal kent. on 7/3/16.
//  Copyright © 2016 micheal kent. All rights reserved.
//

#import "Person.h"

@implementation Person

int age;
int weight;

-(void) setAge: (int) a {
    age = a;
}
-(void) setWeight: (int) w {
    weight = w;
}
-(int) age; {
    return age;
}
-(int) weight; {
    return weight;
}

@end
