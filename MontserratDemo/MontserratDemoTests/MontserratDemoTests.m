//
//  MontserratDemoTests.m
//  MontserratDemoTests
//
//  Created by Kyle Fuller on 08/08/2014.
//  Copyright (c) 2014 Cocode. All rights reserved.
//

#import <XCTest/XCTest.h>
#define EXP_SHORTHAND
#import <Expecta/Expecta.h>
#import <Montserrat/UIFont+Montserrat.h>

@interface MontserratDemoTests : XCTestCase

@end

@implementation MontserratDemoTests

- (void)testMontserratFont {
    expect([[UIFont montserratFontOfSize:17.0] fontName]).to.equal(@"Montserrat-Regular");
}

- (void)testMontserratBoldFont {
    expect([[UIFont montserratBoldFontOfSize:17.0] fontName]).to.equal(@"Montserrat-Bold");
}

@end
