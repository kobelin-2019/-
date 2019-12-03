#import <UIKit/UIKit.h>

#import "CardView.h"
#import "TABBaseCardView.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^CardViewBlock)(void);

@interface CardView : TABBaseCardView

@property (nonatomic,strong) UIImageView * cardImg;
@property (nonatomic,strong) UIButton * cardBtn;

@property (nonatomic) CardViewBlock clickBlock;

- (void)updateViewWithData:(NSString *)imageUrl;

@end

NS_ASSUME_NONNULL_END
