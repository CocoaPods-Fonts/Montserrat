//
// UIFont+Montserrat.h
//
// Created by Kyle Fuller on 08/08/2014
//

#import <UIKit/UIKit.h>

/// An extension to UIFont providing the Montserrat font
@interface UIFont (Montserrat)

/** Returns a font object using the Montserrat font in the specified size.
 @param fontSize The size (in points) to which the font is scaled. This value must be greater than 0.0.
 @return A font object of the specified size.
 */
+ (instancetype)montserratFontOfSize:(CGFloat)fontSize;

/** Returns a font object using the Montserrat Bold font in the specified size.
 @param fontSize The size (in points) to which the font is scaled. This value must be greater than 0.0.
 @return A font object of the specified size.
 */
+ (instancetype)montserratBoldFontOfSize:(CGFloat)fontSize;

@end
