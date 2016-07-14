//
//  main.m
//  HelloWorld9
//
//  Created by micheal kent on 7/3/16.
//  Copyright © 2016 micheal kent. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.m"
@class Person;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Class Objects
        Person *alex = [[Person alloc] init];
        [alex setWeight: 247];
        [alex setAge: 36];

        NSLog(@"Alex weighs %i lbs. and is %i years old", [alex weight], [alex age]);
        
        // Number Type Conversion
        int t = 29;
        int a = 14;
        float s;
        s = (float) t / a;
        NSLog(@"Answer is %f", s);
        
        
        // For Loops
        for (int x=0; x < 10; x++) {
            NSLog(@"x is %i", x);
        }
        
        // Scanf
        int getNum;
        int getNum2;
        NSLog(@"Enter a number");
        getNum = scanf("%i", &getNum2);
        NSLog(@"\nYou entered this number: %i \n", getNum2);
        
        
        
        
    }
    return 0;
}
