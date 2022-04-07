//Global Variables
PImage pic1, pic2;
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1, picX1, picY1, picWidth1, picHeight1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2, picX2, picY2, picWidth2, picHeight2;
int pic1Width, pic1Height, pic2Width, pic2Height;
//
//Geometry: display and orientation (landscape, portrait, and square)
size(1000, 500); //fullScreen(); displayWidth, displayHeight
//Landscape Presentation, not square or portrait
//
//Population
pic1 = loadImage("maxresdefault.jpg"); //Dimensions width:1280 , height:720
pic1Width = 1280;
pic1Height = 720;
pic2 = loadImage("thumb-1920-1039414.png"); //Dimensions width:1920 , height:1234 
pic2Width = 1920;
pic2Height = 1234;
// 
//Aspect Ratio Calculations
int largerDimensionPic1, smallerDimensionPic1, largerDimensionPic2, smallerDimensionPic2;
float imageWidthRatioPic1=0.0, imageHeightRatioPic1=0.0, imageWidthRatioPic2=0.0, imageHeightRatioPic2=0.0; //Populated behind IF, must initialize with zero-decimals
Boolean widthLargerPic1=false, heightLargerPic1=false, widthLargerPic2=false, heightLargerPic2=false;
//
if ( pic1Width >= pic1Height ) { //ID Larger Dimension: Landscape and Square
  largerDimensionPic1 = pic1Width;
  smallerDimensionPic1 = pic1Height;
  widthLargerPic1 = true;
} else { //ID Larger Dimension: Portrait
  largerDimensionPic1 = pic1Height;
  smallerDimensionPic1 = pic1Width;
  heightLargerPic1 = true;
}//End pic1 larger dimension ID
if ( pic2Width >= pic2Height ) { //ID Larger Dimension: Landscape and Square
  largerDimensionPic2 = pic2Width;
  smallerDimensionPic2 = pic2Height;
  widthLargerPic2 = true;
} else { //ID Larger Dimension: Portrait
  largerDimensionPic2 = pic2Height;
  smallerDimensionPic2 = pic2Width;
  heightLargerPic2 = true;
}//End pic2 larger dimesnion ID
println (smallerDimensionPic1, largerDimensionPic1, smallerDimensionPic2, largerDimensionPic2); //Verifying Variable Details (ID Larger Dimension)
// Note: single line IFs can be summarized to IF-ELSE or IF-ELSEIF-ELSE
if ( widthLargerPic1 == true ) imageWidthRatioPic1 = float ( largerDimensionPic1 ) / float(largerDimensionPic1);
if ( widthLargerPic1 == true ) imageHeightRatioPic1 = float ( smallerDimensionPic1 ) / float(largerDimensionPic1);
if ( heightLargerPic1 == true ) imageWidthRatioPic1 = float ( smallerDimensionPic1 ) / float(largerDimensionPic1);
if ( heightLargerPic1 == true ) imageHeightRatioPic1 = float ( largerDimensionPic1 ) / float(largerDimensionPic1);
if ( widthLargerPic2 == true ) imageWidthRatioPic2 = float ( largerDimensionPic2 ) / float(largerDimensionPic2);
if ( widthLargerPic2 == true ) imageHeightRatioPic2 = float ( smallerDimensionPic2 ) / float(largerDimensionPic2);
if ( heightLargerPic2 == true ) imageWidthRatioPic2 = float ( smallerDimensionPic2 ) / float(largerDimensionPic2);
if ( heightLargerPic2 == true ) imageHeightRatioPic2 = float ( largerDimensionPic2 ) / float(largerDimensionPic1);
println(imageWidthRatioPic1, imageHeightRatioPic1, imageWidthRatioPic2, imageHeightRatioPic2); //Verifying Variable Details (Ratios)
//
rectXPic1 = width*1/4;
rectYPic1 = height*0;
rectWidthPic1 = width*1/2;
rectHeightPic1 = height*1/2;
rectXPic2 = width*1/8;
rectYPic2 = height*1/2;
rectWidthPic2 = width*6/8; // 1/8 leftover (or 7/8 used), or *3/4 (similar fraction)
rectHeightPic2 = height*1/2;
//
float pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted;
//Adjusted values based on rect() variables, not Image values
pic1WidthAdjusted = rectWidthPic1 * imageWidthRatioPic1; 
pic1HeightAdjusted = rectHeightPic1 * imageHeightRatioPic1; 
pic2WidthAdjusted = rectWidthPic2 * imageWidthRatioPic2;
pic2HeightAdjusted = rectHeightPic2 * imageHeightRatioPic2;
println(pic1Width, pic1Height, pic2Width, pic2Height);
println(pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted);
//
//Rectangle Layout and Image Drawing to Canvas
color red=#FF0000;
fill(red);
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //For Image #1
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //For Image #2
//Rectangle Coordinates Only
//image(pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); 
//image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
//Aspect Ratio
image(pic1, rectXPic1, rectYPic1, pic1WidthAdjusted, pic1HeightAdjusted); //For Image #1, based on rect()1
println ("Image looks better, put some text underneath to fill in the space.");
image(pic2, rectXPic2, rectYPic2+rectYPic2*1/5, pic2WidthAdjusted, pic2HeightAdjusted); //For Image #2
//
//End Program
