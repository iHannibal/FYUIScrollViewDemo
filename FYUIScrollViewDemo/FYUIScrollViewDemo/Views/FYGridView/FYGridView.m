//
//  FYGridView.m
//  FYUIScrollViewDemo
//
//  Created by Frankenstein Yang on 12/20/15.
//  Copyright © 2015 Frankenstein Yang. All rights reserved.
//

#import "FYGridView.h"

static const NSUInteger kTagOffset = 50;
static const CGFloat kDefaultAnimationDuration = 0.3;
static const UIViewAnimationOptions kDefaultAnimationOptions =
UIViewAnimationOptionBeginFromCurrentState |
UIViewAnimationOptionAllowUserInteraction;

@interface FYGridView () <UIGestureRecognizerDelegate, UIScrollViewDelegate> {
    
    UIScrollView *_scrollView;
    UIPanGestureRecognizer *_sortingPanGesture;
    UILongPressGestureRecognizer *_sortingLongPressGesture;
    UIPinchGestureRecognizer *_pinchGesture;
    UITapGestureRecognizer *_tapGesture;
    UIRotationGestureRecognizer *_rotationGesture;
    UIPanGestureRecognizer *_panGesture;
    NSInteger _numberTotalItems;
    CGSize _itemSize;
    NSMutableSet *_reusableCells;
    FYGridViewCell *_sortMovingItem;
    NSInteger _sortFuturePosition;
    BOOL _autoScrollActive;
    CGPoint _minPossibleContentOffset;
    CGPoint _maxPossibleContentOffset;
    FYGridViewCell *_transformingItem;
    CGFloat _lastRotation;
    CGFloat _lastScale;
    BOOL _inFullSizeMode;
    BOOL _rotationActive;
}

@property (nonatomic, readonly) BOOL itemsSubviewsCacheIsValid;
@property (nonatomic, strong) NSArray *itemSubviewsCache;
@property (atomic) NSInteger firstPositionLoaded;
@property (atomic) NSInteger lastPositionLoaded;

- (void)sortingPanGestureUpdated:(UIPanGestureRecognizer *)panGesture;

@end

@implementation FYGridView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)sortingPanGestureUpdated:(UIPanGestureRecognizer *)panGesture {

}

- (FYGridViewCell *)dequeueReusableCell {

    return nil;
}

- (FYGridViewCell *)cellForItemAtIndex:(NSInteger)position {

    return nil;
}

- (void)reloadData {

}

- (void)insertObjectAtIndex:(NSInteger)index {

}

- (void)removeObjectAtIndex:(NSInteger)index {

}

- (void)reloadObjectAtIndex:(NSInteger)index {

}

- (void)swapObjectAtIndex:(NSInteger)index toObjectAtIndex:(NSInteger)targetObjIndex {
    
}

- (void)scrollToObjectAtIndex:(NSInteger)index animated:(BOOL)animated {

}

@end
