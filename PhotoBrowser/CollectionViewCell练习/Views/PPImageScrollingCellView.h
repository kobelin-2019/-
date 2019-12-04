
#import <UIKit/UIKit.h>

@class PPImageScrollingCellView;

@protocol PPImageScrollingViewDelegate <NSObject>

- (void)collectionView:(PPImageScrollingCellView *)collectionView didSelectImageItemAtIndexPath:(NSIndexPath*)indexPath;

@end


@interface PPImageScrollingCellView : UIView

@property (weak, nonatomic) id<PPImageScrollingViewDelegate> delegate;

- (void) setImageTitleLabelWitdh:(CGFloat)width withHeight:(CGFloat)height;
- (void) setImageTitleTextColor:(UIColor*)textColor withBackgroundColor:(UIColor*)bgColor;
- (void) setImageData:(NSArray*)collectionImageData;
- (void) setBackgroundColor:(UIColor*)color;

@end
