/*
 * Copyright (C) 2017 Martin Hering
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the
 * Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor,
 * Boston, MA  02110-1301, USA.
 */

#import "MLVJobViewController.h"
#import "MLVContentView.h"
#import "NSImage+MacLantern.h"
#import "NSColor+MacLantern.h"

@interface MLVJobViewController ()
@property (readonly) NSImage* iconImage;
@end

@implementation MLVJobViewController

+ (instancetype) viewController {
    return [[self alloc] initWithNibName:@"JobView" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

#pragma mark -

+ (NSSet*) keyPathsForValuesAffectingIconImage {
    return [NSSet setWithObject:@"view.selected"];
}

- (NSImage*) iconImage {
    NSColor* iconColor = (((MLVContentView*)self.view).selected) ? [NSColor whiteColor] : [NSColor mlv_controlColor];
    return [[NSImage imageNamed:@"iconFile"] imageWithColor:iconColor];
}
@end
