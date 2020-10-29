//
//  ViewController.m
//  GPUImage_Study
//
//  Created by benjaminlmz@qq.com on 2020/10/29.
//

#import "ViewController.h"
#import <GPUImageView.h>
#import <GPUImage/GPUImage.h>

@interface ViewController ()
@property (nonatomic,strong)UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.width)];
    
    /*
    //透明度滤镜
    GPUImageOpacityFilter *beautifyFilter = [[GPUImageOpacityFilter alloc] init];
    beautifyFilter.opacity = 1;
    UIImage *filteredImage = [beautifyFilter imageByFilteringImage:[UIImage imageNamed:@"baby"]];
    self.imageView.image = filteredImage;
     */
    
    /*
    // 暗角 边缘阴影
    GPUImageVignetteFilter *disFilter = [[GPUImageVignetteFilter alloc] init];
        //设置要渲染的区域
    [disFilter forceProcessingAtSize:CGSizeMake(0, 0)];
    [disFilter useNextFrameForImageCapture];
    disFilter.vignetteColor = (GPUVector3){ 0.0f, 1.0f, 0.0f }; //边缘颜色
    disFilter.vignetteStart = 0.9;  //开始渲染点与中心点的距离比例。0与中心重合，1与边缘重合
    disFilter.vignetteEnd = 1;
    
    //获取数据源
    GPUImagePicture *stillImageSource = [[GPUImagePicture alloc]initWithImage:[UIImage imageNamed:@"baby"]];
    //添加上滤镜
    [stillImageSource addTarget:disFilter];
    //开始渲染
    [stillImageSource processImage];
    //获取渲染后的图片
    UIImage *newImage = [disFilter imageFromCurrentFramebuffer];
    self.imageView.image = newImage;
     */
    /*
    
    // 高斯模糊
    GPUImageGaussianBlurFilter *gaussianBlurFilter = [[GPUImageGaussianBlurFilter alloc] init];
//    GPUImageGaussianSelectiveBlurFilter *gaussianBlurFilter = [[GPUImageGaussianSelectiveBlurFilter alloc] init];
    gaussianBlurFilter.blurRadiusInPixels = 5; //模糊度
    [gaussianBlurFilter forceProcessingAtSize:CGSizeMake(200, 300)];
    [gaussianBlurFilter useNextFrameForImageCapture];
    
    //获取数据源
    GPUImagePicture *stillImageSource = [[GPUImagePicture alloc]initWithImage:[UIImage imageNamed:@"baby"]];
    //添加上滤镜
    [stillImageSource addTarget:gaussianBlurFilter];
    //开始渲染
    [stillImageSource processImage];
    
    

//    gaussianBlurFilter.excludeCirclePoint = CGPointMake(150, 150);

//    gaussianBlurFilter.excludeCircleRadius = 10;
    
    //获取渲染后的图片
    UIImage *newImage = [gaussianBlurFilter imageFromCurrentFramebuffer];
    self.imageView.image = newImage;
    */
    
    
    /*
        // GPUImageSepiaFilter(怀旧)
        GPUImageSepiaFilter *gaussianBlurFilter = [[GPUImageSepiaFilter alloc] init];
        [gaussianBlurFilter forceProcessingAtSize:CGSizeMake(200, 300)];
        [gaussianBlurFilter useNextFrameForImageCapture];
        // 获取数据源
        GPUImagePicture *stillImageSource = [[GPUImagePicture alloc]initWithImage:[UIImage imageNamed:@"baby"]];
        // 添加上滤镜
        [stillImageSource addTarget:gaussianBlurFilter];
        // 开始渲染
        [stillImageSource processImage];
        // 获取渲染后的图片
        UIImage *newImage = [gaussianBlurFilter imageFromCurrentFramebuffer];
        // 加载出来
        self.imageView.image = newImage;
     */
    
    /*
     //饱和度
    GPUImageSaturationFilter *saturationFilter = [[GPUImageSaturationFilter alloc] init];
    [saturationFilter forceProcessingAtSize:self.imageView.frame.size];
    [saturationFilter useNextFrameForImageCapture];
    
    saturationFilter.saturation = 1.0f;
    GPUImagePicture *stillImageSource = [[GPUImagePicture alloc] initWithImage:[UIImage imageNamed:@"baby"]];
    [stillImageSource addTarget:saturationFilter];
    [stillImageSource processImage];
    UIImage *newImage = [saturationFilter imageFromCurrentFramebuffer];
    self.imageView.image = newImage;
     */
    /*
    //对比度
    GPUImageContrastFilter *filter = [[GPUImageContrastFilter alloc] init];
    [filter forceProcessingAtSize:self.imageView.frame.size];
    [filter useNextFrameForImageCapture];
    filter.contrast = 0.3f;
    
    GPUImagePicture *stillImageSource = [[GPUImagePicture alloc] initWithImage:[UIImage imageNamed:@"baby"]];
    [stillImageSource addTarget:filter];
    [stillImageSource processImage];
    UIImage *newImage = [filter imageFromCurrentFramebuffer];
    self.imageView.image = newImage;
    
     */
    
    /*
    //伽玛射线 CRT(纯平)显示器 亮度输出 = 输入 * 伽玛值
    
    GPUImageGammaFilter *filter = [[GPUImageGammaFilter alloc] init];
    [filter forceProcessingAtSize:self.imageView.frame.size];
    [filter useNextFrameForImageCapture];
    filter.gamma = 1;
    
    GPUImagePicture *stillImageSource = [[GPUImagePicture alloc] initWithImage:[UIImage imageNamed:@"baby"]];
    [stillImageSource addTarget:filter];
    [stillImageSource processImage];
    UIImage *newImage = [filter imageFromCurrentFramebuffer];
    self.imageView.image = newImage;
    */
    
    
    // 素描
    GPUImageSketchFilter *filter = [[GPUImageSketchFilter alloc] init];
    [filter forceProcessingAtSize:self.imageView.frame.size];
    [filter useNextFrameForImageCapture];
    
    GPUImagePicture *stillImageSource = [[GPUImagePicture alloc] initWithImage:[UIImage imageNamed:@"baby"]];
    [stillImageSource addTarget:filter];
    [stillImageSource processImage];
    UIImage *newImage = [filter imageFromCurrentFramebuffer];
    self.imageView.image = newImage;

    
//    self.imageView.image = [UIImage imageNamed:@"baby"];
    [self.view addSubview:self.imageView];
    
}


@end
