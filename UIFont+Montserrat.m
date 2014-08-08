//
// UIFont+Montserrat.m
//
// Created by Kyle Fuller on 08/08/2014
//

#import <CoreText/CoreText.h>
#import "UIFont+Montserrat.h"


@implementation UIFont (OpenSans)

void MontserratLoadFontWithName(NSString *fontName) {
    NSURL *bundleURL = [[NSBundle mainBundle] URLForResource:@"Montserrat" withExtension:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithURL:bundleURL];
    NSURL *fontURL = [bundle URLForResource:fontName withExtension:@"ttf"];
    NSData *fontData = [NSData dataWithContentsOfURL:fontURL];

    CGDataProviderRef provider = CGDataProviderCreateWithCFData((CFDataRef)fontData);
    CGFontRef font = CGFontCreateWithDataProvider(provider);

    if (font) {
        CFErrorRef error = NULL;
        if (CTFontManagerRegisterGraphicsFont(font, &error) == NO) {
            CFStringRef errorDescription = CFErrorCopyDescription(error);
            @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:(__bridge NSString *)errorDescription userInfo:@{ NSUnderlyingErrorKey: (__bridge NSError *)error }];
        }

        CFRelease(font);
    }

    CFRelease(provider);
}

+ (instancetype)montserratLoadAndReturnFont:(NSString *)fontName size:(CGFloat)fontSize onceToken:(dispatch_once_t *)onceToken fontFileName:(NSString *)fontFileName {
    dispatch_once(onceToken, ^{
        MontserratLoadFontWithName(fontFileName);
    });

    return [self fontWithName:fontName size:fontSize];
}

+ (instancetype)montserratFontOfSize:(CGFloat)fontSize {
    static dispatch_once_t onceToken;
    return [self montserratLoadAndReturnFont:@"Montserrat" size:fontSize onceToken:&onceToken fontFileName:@"Montserrat-Regular"];
}

+ (instancetype)montserratBoldFontOfSize:(CGFloat)fontSize {
    static dispatch_once_t onceToken;
    return [self montserratLoadAndReturnFont:@"Montserrat-Bold" size:fontSize onceToken:&onceToken fontFileName:@"Montserrat-Bold"];
}

@end
