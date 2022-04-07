//Global Variables
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio=0.0, imageHeightRatio=0.0;
float picWidth, picHeight, largerDimension, smallerDimension;
PImage pic;
Boolean widthLarger=false, heightLarger=false;
//
size(1280, 720);
//fullScreen(); 
//Population
pic = loadImage("https://i.ytimg.com/vi/7F4PiWYc1Rw/maxresdefault.jpg"); //Dimensions: 1280, 720
//Note: dimensions are found in the image file / Right Click / Properties / Details
//Alogrithm: Find the larger dimension for aspect ration (comparison of two numbers)
picWidth = 1280;
picHeight = 720;
if ( picWidth >= picHeight ) { //True: if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else { //Flase, if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}//End Dimension Comparison
println (smallerDimension, largerDimension);
//Note: single line IFs can be summarized to IF-ELSE or ID-ELSEIF-ELSE
//Computer chooses which formulae to execute
if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
if ( heightLarger == true) imageHeightRatio = smallerDimension / largerDimension;
if ( heightLarger == true) imageWidthRatio = largerDimension / largerDimension;
println(imageWidthRatio, imageHeightRatio);
//similar to style="width:100%"
//similar to style="height:auto"
println(imageWidthRatio, imageHeightRatio);
//Note: println() also verifies deciaml places, compiler will truncate
//Answers must be 1.0 and between 0 & 1 (decimal)
//Ratio 1.0 similar to style="width:100%" (websites)
//Ratio "0.75 similar to style="height:auto" (websites)  
imageX = width*0;
imageY = height*0;
imageWidth = width*imageWidthRatio;
imageHeight = height*imageHeightRatio;
if ( imageWidth > width ) println( "ERROR: Image is too wide" ); //Simple Display Checker
if ( imageHeight > height ) println( "ERROR: Image is too high" ); //Simple Display Checker;
//
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);
