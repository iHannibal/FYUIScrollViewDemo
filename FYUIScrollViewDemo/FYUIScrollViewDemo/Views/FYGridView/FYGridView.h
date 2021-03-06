//
//  FYGridView.h
//  FYUIScrollViewDemo
//
//  Created by Frankenstein Yang on 12/20/15.
//  Copyright © 2015 Frankenstein Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "FYGridViewCell.h"

typedef enum {
    FYGridViewStylePush = 0,
    FYGridViewStyleSwap
} FYGridViewStyle;

@protocol FYGridViewDataSource;
@protocol FYGridViewActionDelegate;
@protocol FYGridViewSortingDelegate;
@protocol FYGridViewTransformationDelegate;
@protocol FYGridViewLayoutStrategy;

@interface FYGridView : UIView

@property (nonatomic, weak) NSObject <FYGridViewDataSource> *dataSource;
@property (nonatomic, weak) NSObject <FYGridViewActionDelegate> *actionDelegate;
@property (nonatomic, weak) NSObject <FYGridViewSortingDelegate> *sortingDelegate;
@property (nonatomic, weak) NSObject <FYGridViewTransformationDelegate> *transformDelegate;
@property (nonatomic, strong) id <FYGridViewLayoutStrategy> layoutStrategy;
@property (nonatomic, getter=isEditing) BOOL editing;
@property (nonatomic, weak) UIView *mainSuperView;
@property (nonatomic) FYGridViewStyle style;
@property (nonatomic) NSInteger itemSpacing;
@property (nonatomic) NSInteger itemHSpacing;
@property (nonatomic) BOOL centerGrid;
@property (nonatomic) UIEdgeInsets minimumPressDuration;
@property (nonatomic) BOOL showFullSizeViewWithAlphaWhenTransforming;
@property (nonatomic) BOOL showsVerticalScrollIndicator;
@property (nonatomic) BOOL showsHorizontalScrollIndicator;
@property (nonatomic, readonly) UIScrollView *scrollView;

- (FYGridViewCell *)dequeueReusableCell;

- (FYGridViewCell *)cellForItemAtIndex:(NSInteger)position;

- (void)reloadData;
- (void)insertObjectAtIndex:(NSInteger)index;
- (void)removeObjectAtIndex:(NSInteger)index;
- (void)reloadObjectAtIndex:(NSInteger)index;
- (void)swapObjectAtIndex:(NSInteger)index
          toObjectAtIndex:(NSInteger)targetObjIndex;
- (void)scrollToObjectAtIndex:(NSInteger)index animated:(BOOL)animated;

@end

@protocol FYGridViewDataSource <NSObject>

@required
- (NSInteger)numberOfItemsInGridView:(FYGridView *)gridView;
- (CGSize)sizeForItemsInGridView:(FYGridView *)gridView;
- (FYGridViewCell *)gridView:(FYGridView *)gridView
          cellForItemAtIndex:(NSInteger)index;

@optional
- (void)gridView:(FYGridView *)gridView deleteItemAtIndex:(NSInteger)index;

@end

@protocol FYGridViewActionDelegate <NSObject>

@required
- (void)gridView:(FYGridView *)gridView didTapOnItemAtIndex:(NSInteger)position;

@end

@protocol FYGridViewSortingDelegate <NSObject>

@required
- (void)gridView:(FYGridView *)gridView
 moveItemAtIndex:(NSInteger)oldIndex
         toIndex:(NSInteger)targetIndex;

- (void)gridView:(FYGridView *)gridView exchangeItemAtIndex:(NSInteger)index
   toItemAtIndex:(NSInteger)targetIndex;

@optional
- (void)gridView:(FYGridView *)gridView didStartMovingCell:(FYGridViewCell *)cell;
- (void)gridView:(FYGridView *)gridView didEndMovingCell:(FYGridViewCell *)cell;
- (BOOL)gridView:(FYGridView *)gridView shouldAllowShakingBehaviorWhenMovingCell:(FYGridViewCell *)cell
         atIndex:(NSInteger)index;

@end

@protocol FYGridViewTransformationDelegate <NSObject>

@required
- (CGSize)gridView:(FYGridView *)gridView sizeInFullSizeForCell:(FYGridViewCell *)cell
           atIndex:(NSInteger)index;
- (UIView *)gridView:(FYGridView *)gridView fullSizeViewForCell:(FYGridViewCell *)cell
             atIndex:(NSInteger)index;

@optional
- (void)gridView:(FYGridView *)gridView didStartTransformingCell:(FYGridViewCell *)cell;
- (void)gridView:(FYGridView *)gridView didEnterFullSizeForCell:(FYGridViewCell *)cell;
- (void)gridView:(FYGridView *)gridView didEndTransformingCell:(FYGridViewCell *)cell;

@end

