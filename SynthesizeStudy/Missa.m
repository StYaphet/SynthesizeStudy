//
//  Missa.m
//  SynthesizeStudy
//
//  Created by 郝一鹏 on 2016/10/23.
//  Copyright © 2016年 bupt. All rights reserved.
//

#import "Missa.h"

@implementation Missa

// 1.不使用@synthesize，编译器自动合成与属性名同名带下划线的实例变量
//  @property (nonatomic, copy) NSString *firstName;
//  @property (nonatomic, copy) NSString *lastName;
//
//  lldb output:
//  po [[Missa class] instanceVariables]
//  <__NSArrayI 0x600000037800>(
//                              NSString* _firstName,
//                              NSString* _lastName
//                              )
//

// 2.使用@synthesize，不指定实例变量名字，编译器生成了两个与属性名重名的实例变量（无下划线）
//  @synthesize firstName;
//  @synthesize lastName;
//
//  lldb output:
//  po [[Missa class] instanceVariables]
//  <__NSArrayI 0x608000037f20>(
//                              NSString* firstName,
//                              NSString* lastName
//                              )

// 3.使用@synthesize，指定实例变量名字，编译器生成了两个指定的实例变量
//  @synthesize firstName = _myFirstName;
//  @synthesize lastName = _mylastName;
//  po [[Missa class] instanceVariables]
//
//  lldb output:
//  <__NSArrayI 0x608000221d00>(
//                              NSString* _myFirstName,
//                              NSString* _mylastName
//                              )

// 4.使用@synthesize，如果指定的实例变量已经存在，就不再重新生成
//  注意：这里一个指定了实例变量名，一个没有指定实例变量名
//
//  {
//      NSString *_myFirstName;
//      NSString *lastName;
//  }
//  @synthesize firstName = _myFirstName;
//  @synthesize lastName;
//
//  lldb output:
//  po [[Missa class] instanceVariables]
//  <__NSArrayI 0x608000222400>(
//                              NSString* _myFirstName,
//                              NSString* lastName
//                              )

@end
