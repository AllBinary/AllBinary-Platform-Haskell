{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
-- Generated Code Do Not Modify
-- package org.allbinary.emulator.device
module TrueTypeFontUtil (module TrueTypeFontUtil, module TrueTypeFontUtilBase) where

import TrueTypeFontUtilBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getFontBitmapGL, getFontBitmapGL_super, getFontBitmapGL_impl, saveFontAtlasAsFile, saveFontAtlasAsFile_super, saveFontAtlasAsFile_impl, getFontBitmap, getFontBitmap_super, getFontBitmap_impl, getFontWidths, getFontWidths_super, getFontWidths_impl, instance_, preResourceImageUtil, widthFloatArray, fontImage, widthScale)
import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char
import Data.Int
import Data.Word
import Data.List
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Image -- javax.microedition.lcdui.Image
import qualified SWT -- org.eclipse.swt.SWT
import qualified ImageData -- org.eclipse.swt.graphics.ImageData
import qualified ImageLoader -- org.eclipse.swt.graphics.ImageLoader
import qualified SwtMutableImage -- org.microemu.device.swt.SwtMutableImage
import qualified AvianUtil -- org.allbinary.AvianUtil
import qualified ResourceUtil -- org.allbinary.data.resource.ResourceUtil
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified CanvasStrings -- org.allbinary.graphics.displayable.CanvasStrings
import qualified OpenGLCapabilities -- org.allbinary.graphics.opengles.OpenGLCapabilities
import qualified PreResourceImageUtil -- org.allbinary.image.PreResourceImageUtil
import qualified OpenGLESImage -- org.allbinary.image.opengles.OpenGLESImage
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified TrueTypeFontUtilBase

data TrueTypeFontUtil = TrueTypeFontUtil
    { header_ :: JavaHeader
    , base :: TrueTypeFontUtilBase.TrueTypeFontUtilBase
    , preResourceImageUtil :: IORef (PreResourceImageUtil.PreResourceImageUtil)
    , widthFloatArray :: IORef (JavaArray (Float))
    , fontImage :: IORef (OpenGLESImage.OpenGLESImage)
    , widthScale :: IORef (Float)
    }

instance JavaNull TrueTypeFontUtil where
    javaNull = javaNullRecord "TrueTypeFontUtil"

instance JavaEquals TrueTypeFontUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TrueTypeFontUtil where
    (==) = jrecordEquals

instance JavaObjectClass TrueTypeFontUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO TrueTypeFontUtil
newRecord_ = do
    base <- TrueTypeFontUtilBase.newRecord_
    let header_ = base.header_
    preResourceImageUtil <- newIORef javaNull
    widthFloatArray <- newIORef javaNull
    fontImage <- newIORef javaNull
    widthScale <- newIORef 0.0
    let this = TrueTypeFontUtil header_ base preResourceImageUtil widthFloatArray fontImage widthScale
    jregisterLevel header_ this
    jregisterMethod header_ "getFontBitmapGL" (\() -> getFontBitmapGL_impl this)
    jregisterMethod header_ "saveFontAtlasAsFile" (\() -> saveFontAtlasAsFile_impl this)
    jregisterMethod header_ "getFontBitmap" (\() -> getFontBitmap_impl this)
    jregisterMethod header_ "getFontWidths" (\() -> getFontWidths_impl this)
    pure this

initFields_ :: TrueTypeFontUtil -> IO ()
initFields_ this = do
    jset this.preResourceImageUtil =<< (PreResourceImageUtil.getInstance)
    jset this.widthFloatArray (javaNull)
    jset this.fontImage (OpenGLESImage.nULL_OPENGL_IMAGE)
    jset this.widthScale (0.0)
    pure ()


getInstance :: IO (TrueTypeFontUtil)
getInstance = do
        pure (TrueTypeFontUtil.instance_)

new_ :: IO TrueTypeFontUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TrueTypeFontUtil -> IO ()
init_ this = do
        TrueTypeFontUtilBase.init_1 this.base (2)
        initFields_ this
        pure () -- super(...) is in the record above
        if (jio (AvianUtil.isAvian)) then do
            jset (this).widthFloatArray ((jarrayFromList [1504.0, 967.0, 527.0, 961.0, 957.0, 1087.0, 920.0, 954.0, 973.0, 961.0, 955.0, 1296.0, 1013.0, 1106.0, 1167.0, 815.0, 815.0, 1216.0, 1110.0, 170.0, 520.0, 1056.0, 815.0, 1448.0, 1142.0, 1345.0, 927.0, 1345.0, 1030.0, 920.0, 1096.0, 1119.0, 1219.0, 1841.0, 1166.0, 1147.0, 1005.0, 879.0, 965.0, 792.0, 964.0, 927.0, 753.0, 1034.0, 916.0, 196.0, 469.0, 877.0, 166.0, 1563.0, 916.0, 1007.0, 965.0, 964.0, 631.0, 777.0, 649.0, 917.0, 1026.0, 1548.0, 993.0, 1028.0, 795.0, 241.0, 798.0, 241.0, 905.0, 1477.0, 393.0, 961.0, 961.0, 961.0, 961.0, 555.0, 1029.0, 1010.0, 1378.0, 952.0, 952.0, 952.0, 952.0, 463.0, 463.0, 926.0, 961.0, 491.0, 930.0, 457.0, 457.0, 644.0, 643.0, 326.0, 186.0, 1219.0, 241.0, 1599.0, 961.0, 302.0, 711.0, 961.0, 961.0, 710.0, 141.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0]))
        else do
            jset (this).widthFloatArray ((jarrayFromList [1504.0, 967.0, 527.0, 961.0, 957.0, 1087.0, 920.0, 954.0, 973.0, 961.0, 955.0, 1296.0, 1013.0, 1106.0, 1167.0, 815.0, 815.0, 1216.0, 1110.0, 170.0, 520.0, 1056.0, 815.0, 1448.0, 1142.0, 1345.0, 927.0, 1345.0, 1030.0, 920.0, 1096.0, 1119.0, 1219.0, 1841.0, 1166.0, 1147.0, 1005.0, 879.0, 965.0, 792.0, 964.0, 927.0, 753.0, 1034.0, 916.0, 196.0, 469.0, 877.0, 166.0, 1563.0, 916.0, 1007.0, 965.0, 964.0, 631.0, 777.0, 649.0, 917.0, 1026.0, 1548.0, 993.0, 1028.0, 795.0, 241.0, 798.0, 241.0, 905.0, 1477.0, 393.0, 961.0, 555.0, 1029.0, 1010.0, 1378.0, 952.0, 463.0, 463.0, 926.0, 961.0, 491.0, 930.0, 457.0, 457.0, 644.0, 643.0, 326.0, 186.0, 1219.0, 241.0, 1599.0, 961.0, 302.0, 711.0, 961.0, 961.0, 710.0, 141.0, 1504.0, 1504.0]))
        jset (this).widthScale ((if (((jget (this).base.scale) == 2)) then 1.2 else 1.0))
        pure ()


getFontBitmapGL :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> String -> Int -> BasicColor.BasicColor -> IO (Image.Image)
getFontBitmapGL object_ a1 a2 a3 a4 = jmethod object_ "getFontBitmapGL" (\() -> (getFontBitmapGL_impl (javaCast object_ :: TrueTypeFontUtil))) () a1 a2 a3 a4

getFontBitmapGL_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> String -> Int -> BasicColor.BasicColor -> IO (Image.Image)
getFontBitmapGL_super object_ a1 a2 a3 a4 = (getFontBitmapGL_impl (javaCast object_ :: TrueTypeFontUtil)) a1 a2 a3 a4

getFontBitmapGL_impl :: TrueTypeFontUtil -> GL10.GL10 -> String -> Int -> BasicColor.BasicColor -> IO (Image.Image)
getFontBitmapGL_impl this gl filename cellSize basicColor = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (PreLogUtil.putOE (jget (commonStrings).eXCEPTION) this (jget (commonStrings).eXCEPTION) e)
            javaThrow ((JavaException "RuntimeException" ""))
            ) $ do
            if ((jget (this).fontImage) == OpenGLESImage.nULL_OPENGL_IMAGE) then do
                canvasStrings <- (CanvasStrings.getInstance)
                openGLCapabilities <- (OpenGLCapabilities.getInstance)
                if ((jio (OpenGLCapabilities.isTextureSizeValid openGLCapabilities 1024)) && ((jget (this).base.scale) == 2)) then do
                    let fONT_ATLAS_1024 = "/font_1024.png"
                    image <- (Image.createImage (jio (ResourceUtil.getResourceAsStream ((jio (ResourceUtil.getInstance))) fONT_ATLAS_1024)))
                    Control.Monad.void (Image.setName image (jget (canvasStrings).fONT_ATLAS))
                    jset (this).fontImage ((javaCast (jio (PreResourceImageUtil.encapsulate ((jget (this).preResourceImageUtil)) image)) :: OpenGLESImage.OpenGLESImage))
                else if (jio (OpenGLCapabilities.isTextureSizeValid openGLCapabilities 512)) then do
                    let fONT_ATLAS_512 = "/font_512.png"
                    image <- (Image.createImage (jio (ResourceUtil.getResourceAsStream ((jio (ResourceUtil.getInstance))) fONT_ATLAS_512)))
                    Control.Monad.void (Image.setName image (jget (canvasStrings).fONT_ATLAS))
                    jset (this).fontImage ((javaCast (jio (PreResourceImageUtil.encapsulate ((jget (this).preResourceImageUtil)) image)) :: OpenGLESImage.OpenGLESImage))
                else do
                    let fONT_ATLAS_512 = "/font_512.png"
                    image <- (Image.createImage (jio (ResourceUtil.getResourceAsStream ((jio (ResourceUtil.getInstance))) fONT_ATLAS_512)))
                    Control.Monad.void (Image.setName image (jget (canvasStrings).fONT_ATLAS))
                    jset (this).fontImage ((javaCast (jio (PreResourceImageUtil.encapsulate ((jget (this).preResourceImageUtil)) image)) :: OpenGLESImage.OpenGLESImage))
                javaReturn ((javaCast (jget (this).fontImage) :: Image.Image))
            else do
                javaReturn ((javaCast (jget (this).fontImage) :: Image.Image))


saveFontAtlasAsFile :: (JavaObjectClass this_) => this_ -> IO (())
saveFontAtlasAsFile object_ = jmethod object_ "saveFontAtlasAsFile" (\() -> (saveFontAtlasAsFile_impl (javaCast object_ :: TrueTypeFontUtil))) ()

saveFontAtlasAsFile_super :: (JavaObjectClass this_) => this_ -> IO (())
saveFontAtlasAsFile_super object_ = (saveFontAtlasAsFile_impl (javaCast object_ :: TrueTypeFontUtil))

saveFontAtlasAsFile_impl :: TrueTypeFontUtil -> IO (())
saveFontAtlasAsFile_impl this = do
        image <- (TrueTypeFontUtil.getFontBitmap this javaNull (jget this.base.cellSize) (jget ((jio (BasicColorFactory.getInstance))).wHITE))
        imageLoader <- (ImageLoader.new_)
        imageData <- (getImageData ((jget (((javaCast image :: SwtMutableImage.SwtMutableImage))).image)))
        assignedValue <- (ImageData.getPixel imageData 0 0)
        jset (imageData).transparentPixel (assignedValue)
        jset (imageLoader).data_ ((jarrayFromList [imageData]))
        Control.Monad.void (ImageLoader.save imageLoader ((jget ((jio (CommonSeps.getInstance))).pERIOD) + (jget ((jio (CanvasStrings.getInstance))).fONT_ATLAS)) (SWT.iMAGE_PNG))
        pure ()


getFontBitmap :: (JavaObjectClass this_) => this_ -> String -> Int -> BasicColor.BasicColor -> IO (Image.Image)
getFontBitmap object_ a1 a2 a3 = jmethod object_ "getFontBitmap" (\() -> (getFontBitmap_impl (javaCast object_ :: TrueTypeFontUtil))) () a1 a2 a3

getFontBitmap_super :: (JavaObjectClass this_) => this_ -> String -> Int -> BasicColor.BasicColor -> IO (Image.Image)
getFontBitmap_super object_ a1 a2 a3 = (getFontBitmap_impl (javaCast object_ :: TrueTypeFontUtil)) a1 a2 a3

getFontBitmap_impl :: TrueTypeFontUtil -> String -> Int -> BasicColor.BasicColor -> IO (Image.Image)
getFontBitmap_impl this filename cellSize basicColor = do
        let cellsPerRow2 = ((jget (this).base.cELLS_PER_ROW) * 2)
        let cellsPerRow3 = ((jget (this).base.cELLS_PER_ROW) * 3)
        let cellsPerRow4 = ((jget (this).base.cELLS_PER_ROW) * 4)
        let cellsPerRow5 = ((jget (this).base.cELLS_PER_ROW) * 5)
        let cellsPerRow6 = ((jget (this).base.cELLS_PER_ROW) * 6)
        let cellsPerRow7 = ((jget (this).base.cELLS_PER_ROW) * 7)
        image <- (Image.createImage (jget this.base.textureSize) (jget this.base.textureSize))
        graphics <- (Image.getGraphics image)
        Control.Monad.void (Graphics.setColor graphics (jio (BasicColor.intValue basicColor)))
        biggestHeight <- newIORef (0)
        bounds <- (Rectangle.new_3 (jio (PointFactory.createXY ((jio (PointFactory.getInstance))) 0 0)) cellSize cellSize)
        x <- newIORef (0)
        y <- newIORef (0)
        forM_ [0 .. (jget this.base.size) - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).base.characterArray)) (0) (((jget this.base.pattern) Prelude.!! index))
            assignedValue <- (Rectangle.getMaxX bounds)
            jsetIndex ((jget this.base._characterWidth)) (index) (assignedValue)
            when (((jio (Rectangle.getMaxY bounds)) - (jio (GPoint.getX ((jio (Rectangle.getPoint bounds)))))) > (jget biggestHeight)) $ do
                jset biggestHeight (((jio (Rectangle.getMaxY bounds)) - (jio (GPoint.getX ((jio (Rectangle.getPoint bounds)))))))
            jset x ((((index `rem` (jget (this).base.cELLS_PER_ROW))) * cellSize))
            jset x (((jget x) + ((cellSize `Data.Bits.shiftR` 1))))
            jset x (((jget x) - (((jindex ((jget this.base._characterWidth)) (index)) `Data.Bits.shiftR` 1))))
            jset y ((Prelude.negate ((cellSize `Data.Bits.shiftR` 1))))
            when (index >= (jget (this).base.cELLS_PER_ROW)) $ do
                jset y (((jget y) + cellSize))
            when (index >= cellsPerRow2) $ do
                jset y (((jget y) + cellSize))
            when (index >= cellsPerRow3) $ do
                jset y (((jget y) + cellSize))
            when (index >= cellsPerRow4) $ do
                jset y (((jget y) + cellSize))
            when (index >= cellsPerRow5) $ do
                jset y (((jget y) + cellSize))
            when (index >= cellsPerRow6) $ do
                jset y (((jget y) + cellSize))
            when (index >= cellsPerRow7) $ do
                jset y (((jget y) + cellSize))
            jset y (((jget y) + cellSize))
            jset y (((jget y) - ((cellSize `Data.Bits.shiftR` 2))))
            Control.Monad.void (Graphics.drawChar graphics (jindex ((jget (this).base.characterArray)) (0)) (jget x) (jget y) 0)
        pure (image)


getFontWidths :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (JavaArray (Int))
getFontWidths object_ a1 a2 = jmethod object_ "getFontWidths" (\() -> (getFontWidths_impl (javaCast object_ :: TrueTypeFontUtil))) () a1 a2

getFontWidths_super :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (JavaArray (Int))
getFontWidths_super object_ a1 a2 = (getFontWidths_impl (javaCast object_ :: TrueTypeFontUtil)) a1 a2

getFontWidths_impl :: TrueTypeFontUtil -> String -> Int -> IO (JavaArray (Int))
getFontWidths_impl this filename fontSize = do
        commonStrings <- (CommonStrings.getInstance)
        forM_ [0 .. (jget this.base.size) - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).base.characterArray)) (0) (((jget this.base.pattern) Prelude.!! index))
            if ((jindex ((jget (this).base.characterArray)) (0)) == ' ') then do
                jsetIndex ((jget this.base._characterWidth)) (index) (((fontSize `quot` 4)))
            else do
                let shortPatternIndex = (jstringIndexOf (jget (this).base.shortPattern) (jindex ((jget (this).base.characterArray)) (0)) 0)
                let w = ((Prelude.truncate (((jindex ((jget (this).widthFloatArray)) (shortPatternIndex)) / 75.0))) + 19)
                jsetIndex ((jget this.base._characterWidth)) (index) (w)
                when (((jindex ((jget (this).base.characterArray)) (0)) == '.') || ((jindex ((jget (this).base.characterArray)) (0)) == '1')) $ do
                    jsetIndex ((jget this.base._characterWidth)) (index) (((jindex ((jget this.base._characterWidth)) (index)) + 4))
                when (((jindex ((jget (this).base.characterArray)) (0)) >= 'a') && ((jindex ((jget (this).base.characterArray)) (0)) < 'k')) $ do
                    jsetIndex ((jget this.base._characterWidth)) (index) (((jindex ((jget this.base._characterWidth)) (index)) - 2))
                when (((jindex ((jget (this).base.characterArray)) (0)) >= 'k') && ((jindex ((jget (this).base.characterArray)) (0)) < 'v')) $ do
                    jsetIndex ((jget this.base._characterWidth)) (index) (((jindex ((jget this.base._characterWidth)) (index)) - 4))
                when (((jindex ((jget (this).base.characterArray)) (0)) >= 'v') && ((jindex ((jget (this).base.characterArray)) (0)) < 'z')) $ do
                    jsetIndex ((jget this.base._characterWidth)) (index) (((jindex ((jget this.base._characterWidth)) (index)) - 8))
                when ((jindex ((jget (this).base.characterArray)) (0)) == 'D') $ do
                    jsetIndex ((jget this.base._characterWidth)) (index) (((jindex ((jget this.base._characterWidth)) (index)) - 4))
                when (((jindex ((jget (this).base.characterArray)) (0)) >= 'A') && ((jindex ((jget (this).base.characterArray)) (0)) <= 'Z')) $ do
                    jsetIndex ((jget this.base._characterWidth)) (index) (((jindex ((jget this.base._characterWidth)) (index)) - 2))
            jsetIndex ((jget this.base._characterWidth)) (index) (((jindex ((jget this.base._characterWidth)) (index)) * (jget (this).widthScale)))
        pure ((jget this.base._characterWidth))


