
#import <UIKit/UIKit.h>

@interface PPCollectionViewCell : UICollectionViewCell

- (void)setImage:(UIImage*) image;
- (void)setTitle:(NSString*) title;
- (void) setImageTitleLabelWitdh:(CGFloat)width withHeight:(CGFloat)height;
- (void) setImageTitleTextColor:(UIColor*)textColor withBackgroundColor:(UIColor*)bgColor;
@end
