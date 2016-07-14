//
//  Person.h
//  HelloWorld9
//
//  Created by micheal kent on 7/3/16.
//  Copyright © 2016 micheal kent. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    int age;
    int weight;
}
-(void) setAge: (int) a;
-(void) setWeight: (int) w;
-(int) age;
-(int) weight;
@end
