//
//  VCSingleton.h
//  Heal Me
//
//  Created by Victor Chan on 19/3/13.
//  Copyright (c) 2013 CS3284. All rights reserved.
//

#define SINGLETON(singletonname) \
+ (id)singletonname \
{ \
    static id instance = nil; \
    static dispatch_once_t predicate; \
    dispatch_once(&predicate, ^{ \
        instance = [[self alloc] init]; \
    }); \
    return instance; \
}