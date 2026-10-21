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

import TrueTypeFontUtilBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, saveFontAtlasAsFile, saveFontAtlasAsFile_super, saveFontAtlasAsFile_impl, getFontBitmapGL, getFontBitmapGL_super, getFontBitmapGL_impl, getFontWidths, getFontWidths_super, getFontWidths_impl, logUtil, instance_, preResourceImageUtil, realFontSize, fontImage)
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
import qualified PlatformBitmapBase -- same package or java.lang
import qualified File -- java.io.File
import qualified FileOutputStream -- java.io.FileOutputStream
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified Image -- javax.microedition.lcdui.Image
import qualified Bitmap -- android.graphics.Bitmap
import qualified Canvas -- android.graphics.Canvas
import qualified Paint -- android.graphics.Paint
import qualified Rect -- android.graphics.Rect
import qualified Typeface -- android.graphics.Typeface
import qualified ResourceUtil -- org.allbinary.data.resource.ResourceUtil
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified CanvasStrings -- org.allbinary.graphics.displayable.CanvasStrings
import qualified PreResourceImageUtil -- org.allbinary.image.PreResourceImageUtil
import qualified OpenGLESImage -- org.allbinary.image.opengles.OpenGLESImage
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified AndroidImageInterface -- org.microemu.android.device.AndroidImageInterface
import qualified AndroidImmutableImage -- org.microemu.android.device.AndroidImmutableImage
import qualified TrueTypeFontUtilBase

data TrueTypeFontUtil = TrueTypeFontUtil
    { header_ :: JavaHeader
    , base :: TrueTypeFontUtilBase.TrueTypeFontUtilBase
    , logUtil :: IORef (LogUtil.LogUtil)
    , preResourceImageUtil :: IORef (PreResourceImageUtil.PreResourceImageUtil)
    , realFontSize :: IORef (Int)
    , fontImage :: IORef (OpenGLESImage.OpenGLESImage)
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
    logUtil <- newIORef javaNull
    preResourceImageUtil <- newIORef javaNull
    realFontSize <- newIORef 0
    fontImage <- newIORef javaNull
    let this = TrueTypeFontUtil header_ base logUtil preResourceImageUtil realFontSize fontImage
    jregisterLevel header_ this
    jregisterMethod header_ "saveFontAtlasAsFile" (\() -> saveFontAtlasAsFile_impl this)
    jregisterMethod header_ "getFontBitmapGL" (\() -> getFontBitmapGL_impl this)
    jregisterMethod header_ "getFontWidths" (\() -> getFontWidths_impl this)
    pure this

initFields_ :: TrueTypeFontUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.preResourceImageUtil =<< (PreResourceImageUtil.getInstance)
    jset this.realFontSize (18)
    jset this.fontImage (OpenGLESImage.nULL_OPENGL_IMAGE)
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
        TrueTypeFontUtilBase.init_1 this.base (1)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


saveFontAtlasAsFile :: (JavaObjectClass this_) => this_ -> IO (())
saveFontAtlasAsFile object_ = jmethod object_ "saveFontAtlasAsFile" (\() -> (saveFontAtlasAsFile_impl (javaCast object_ :: TrueTypeFontUtil))) ()

saveFontAtlasAsFile_super :: (JavaObjectClass this_) => this_ -> IO (())
saveFontAtlasAsFile_super object_ = (saveFontAtlasAsFile_impl (javaCast object_ :: TrueTypeFontUtil))

saveFontAtlasAsFile_impl :: TrueTypeFontUtil -> IO (())
saveFontAtlasAsFile_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (PreLogUtil.putOE (jget (commonStrings).eXCEPTION) this (jget (commonStrings).eXCEPTION) e)
            ) $ do
            commonStrings <- (CommonStrings.getInstance)
            file <- (Context.getFilesDir ((jio (ResourceUtil.getContext ((jio (ResourceUtil.getInstance)))))))
            let path = ((jio (File.getAbsolutePath file)) + (jget ((jio (CanvasStrings.getInstance))).fONT_ATLAS))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) path this (jget (commonStrings).cONSTRUCTOR))
            fos <- (FileOutputStream.new_1 path)
            bitmap <- (getBitmap (((javaCast (jio (PlatformBitmapBase.getImage ((jget ((jget (this).fontImage)).openGLBitmap)))) :: AndroidImageInterface.AndroidImageInterface))))
            Control.Monad.void (Bitmap.compress bitmap (jget (Bitmap.compressFormat).pNG) 100 fos)
        pure ()


getFontBitmapGL :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> String -> Int -> BasicColor.BasicColor -> IO (Image.Image)
getFontBitmapGL object_ a1 a2 a3 a4 = jmethod object_ "getFontBitmapGL" (\() -> (getFontBitmapGL_impl (javaCast object_ :: TrueTypeFontUtil))) () a1 a2 a3 a4

getFontBitmapGL_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> String -> Int -> BasicColor.BasicColor -> IO (Image.Image)
getFontBitmapGL_super object_ a1 a2 a3 a4 = (getFontBitmapGL_impl (javaCast object_ :: TrueTypeFontUtil)) a1 a2 a3 a4

getFontBitmapGL_impl :: TrueTypeFontUtil -> GL10.GL10 -> String -> Int -> BasicColor.BasicColor -> IO (Image.Image)
getFontBitmapGL_impl this gl filename cellSize basicColor = do
    javaCatchReturn $ do
        if ((jget (this).fontImage) == OpenGLESImage.nULL_OPENGL_IMAGE) then do
            let cellsPerRow2 = ((jget (this).base.cELLS_PER_ROW) * 2)
            let cellsPerRow3 = ((jget (this).base.cELLS_PER_ROW) * 3)
            let cellsPerRow4 = ((jget (this).base.cELLS_PER_ROW) * 4)
            let cellsPerRow5 = ((jget (this).base.cELLS_PER_ROW) * 5)
            let cellsPerRow6 = ((jget (this).base.cELLS_PER_ROW) * 6)
            let cellsPerRow7 = ((jget (this).base.cELLS_PER_ROW) * 7)
            let typeface = Typeface.dEFAULT
            textureSize <- (TrueTypeFontUtilBase.getAsTextureSize this ((jget (this).base.cELLS_PER_ROW) * cellSize))
            bitmap <- (Bitmap.createBitmap textureSize textureSize (jget (Bitmap.config).aRGB_8888))
            canvas <- (Canvas.new_1 bitmap)
            paint <- (Paint.new_)
            Control.Monad.void (Paint.setTypeface paint typeface)
            Control.Monad.void (Paint.setTextSize paint (Prelude.fromIntegral (jget (this).realFontSize)))
            Control.Monad.void (Paint.setAlpha paint (Prelude.fromIntegral (jget (basicColor).alpha)))
            Control.Monad.void (Paint.setColor paint (jio (BasicColor.intValue basicColor)))
            biggestHeight <- newIORef (0)
            bounds <- (Rect.new_)
            x <- newIORef (0)
            y <- newIORef (0)
            forM_ [0 .. (jget (this).base.size) - 1] $ \index -> javaIteration (pure ()) $ do
                jsetIndex ((jget (this).base.characterArray)) (0) (((jget (this).base.pattern) Prelude.!! index))
                Control.Monad.void (Paint.getTextBounds paint (jget (this).base.characterArray) 0 1 bounds)
                jsetIndex ((jget (this).base._characterWidth)) (index) ((jget (bounds).right))
                when (((jget (bounds).bottom) - (jget (bounds).top)) > (jget biggestHeight)) $ do
                    jset biggestHeight (((jget (bounds).bottom) - (jget (bounds).top)))
                jset x ((((index `rem` (jget (this).base.cELLS_PER_ROW))) * cellSize))
                jset x (((jget x) + ((cellSize `Data.Bits.shiftR` 1))))
                jset x (((jget x) - (((jindex ((jget (this).base._characterWidth)) (index)) `Data.Bits.shiftR` 1))))
                jset y (0)
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
                Control.Monad.void (Canvas.drawText canvas (jget (this).base.characterArray) 0 1 ((Prelude.fromIntegral (jget x)) - 3.0) ((Prelude.fromIntegral (jget y)) - 6.0) paint)
            Control.Monad.void (Canvas.save canvas)
            image <- (AndroidImmutableImage.create bitmap)
            jset (this).fontImage ((javaCast (jio (PreResourceImageUtil.encapsulate ((jget (this).preResourceImageUtil)) image)) :: OpenGLESImage.OpenGLESImage))
            javaReturn ((javaCast (jget (this).fontImage) :: Image.Image))
        else do
            javaReturn ((javaCast (jget (this).fontImage) :: Image.Image))


getFontWidths :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (JavaArray (Int))
getFontWidths object_ a1 a2 = jmethod object_ "getFontWidths" (\() -> (getFontWidths_impl (javaCast object_ :: TrueTypeFontUtil))) () a1 a2

getFontWidths_super :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (JavaArray (Int))
getFontWidths_super object_ a1 a2 = (getFontWidths_impl (javaCast object_ :: TrueTypeFontUtil)) a1 a2

getFontWidths_impl :: TrueTypeFontUtil -> String -> Int -> IO (JavaArray (Int))
getFontWidths_impl this filename fontSize = do
        let typeface = Typeface.dEFAULT
        paint <- (Paint.new_)
        Control.Monad.void (Paint.setTypeface paint typeface)
        Control.Monad.void (Paint.setTextSize paint (Prelude.fromIntegral fontSize))
        Control.Monad.void (Paint.setARGB paint 255 255 255 255)
        bounds <- (Rect.new_)
        forM_ [0 .. (jget (this).base.size) - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).base.characterArray)) (0) (((jget (this).base.pattern) Prelude.!! index))
            Control.Monad.void (Paint.getTextBounds paint (jget (this).base.characterArray) 0 1 bounds)
            if (index < (jget (this).base.lastCapIndex)) then do
                if ((jindex ((jget (this).base.characterArray)) (0)) == '1') then do
                    jsetIndex ((jget (this).base._characterWidth)) (index) (((jget (bounds).right) + 3))
                else if ((((((((jindex ((jget (this).base.characterArray)) (0)) == 'J') || ((jindex ((jget (this).base.characterArray)) (0)) == 'V')) || ((jindex ((jget (this).base.characterArray)) (0)) == '2')) || ((jindex ((jget (this).base.characterArray)) (0)) == '9')) || ((jindex ((jget (this).base.characterArray)) (0)) == 'I')) || ((jindex ((jget (this).base.characterArray)) (0)) == 'N')) || ((jindex ((jget (this).base.characterArray)) (0)) == 'U')) then do
                    jsetIndex ((jget (this).base._characterWidth)) (index) (((jget (bounds).right) + 1))
                else if (((((jindex ((jget (this).base.characterArray)) (0)) == '4') || ((jindex ((jget (this).base.characterArray)) (0)) == 'C')) || ((jindex ((jget (this).base.characterArray)) (0)) == 'E')) || ((jindex ((jget (this).base.characterArray)) (0)) == 'O')) then do
                    jsetIndex ((jget (this).base._characterWidth)) (index) (((jget (bounds).right) - 2))
                else if (((((((jindex ((jget (this).base.characterArray)) (0)) == 'B') || ((jindex ((jget (this).base.characterArray)) (0)) == 'D')) || ((jindex ((jget (this).base.characterArray)) (0)) == 'G')) || ((jindex ((jget (this).base.characterArray)) (0)) == 'H')) || ((jindex ((jget (this).base.characterArray)) (0)) == 'T')) || ((jindex ((jget (this).base.characterArray)) (0)) == 'W')) then do
                    jsetIndex ((jget (this).base._characterWidth)) (index) (((jget (bounds).right) - 3))
                else if ((((jindex ((jget (this).base.characterArray)) (0)) == 'A') || ((jindex ((jget (this).base.characterArray)) (0)) == 'Q')) || ((jindex ((jget (this).base.characterArray)) (0)) == 'R')) then do
                    jsetIndex ((jget (this).base._characterWidth)) (index) (((jget (bounds).right) - 5))
                else if ((jindex ((jget (this).base.characterArray)) (0)) == 'M') then do
                    jsetIndex ((jget (this).base._characterWidth)) (index) (((jget (bounds).right) - 6))
                else if ((jindex ((jget (this).base.characterArray)) (0)) == 'm') then do
                    jsetIndex ((jget (this).base._characterWidth)) (index) (((jget (bounds).right) - 8))
                else do
                    jsetIndex ((jget (this).base._characterWidth)) (index) ((jget (bounds).right))
            else do
                if ((jindex ((jget (this).base.characterArray)) (0)) == ' ') then do
                    jsetIndex ((jget (this).base._characterWidth)) (index) (((jget (bounds).right) + 10))
                else if (((((((jindex ((jget (this).base.characterArray)) (0)) == 'l') || ((jindex ((jget (this).base.characterArray)) (0)) == 'i')) || ((jindex ((jget (this).base.characterArray)) (0)) == 'j')) || ((jindex ((jget (this).base.characterArray)) (0)) == '.')) || ((jindex ((jget (this).base.characterArray)) (0)) == '!')) || ((jindex ((jget (this).base.characterArray)) (0)) == '|')) then do
                    jsetIndex ((jget (this).base._characterWidth)) (index) (((jget (bounds).right) + 6))
                else if (((((jindex ((jget (this).base.characterArray)) (0)) == 'f') || ((jindex ((jget (this).base.characterArray)) (0)) == 't')) || ((jindex ((jget (this).base.characterArray)) (0)) == 'u')) || ((jindex ((jget (this).base.characterArray)) (0)) == 'v')) then do
                    jsetIndex ((jget (this).base._characterWidth)) (index) (((jget (bounds).right) + 1))
                else if ((jindex ((jget (this).base.characterArray)) (0)) == 'r') then do
                    jsetIndex ((jget (this).base._characterWidth)) (index) (((jget (bounds).right) + 2))
                else if (((((jindex ((jget (this).base.characterArray)) (0)) == 'a') || ((jindex ((jget (this).base.characterArray)) (0)) == 'b')) || ((jindex ((jget (this).base.characterArray)) (0)) == 'g')) || ((jindex ((jget (this).base.characterArray)) (0)) == 'u')) then do
                    jsetIndex ((jget (this).base._characterWidth)) (index) (((jget (bounds).right) - 1))
                else if (((jindex ((jget (this).base.characterArray)) (0)) == 'o') || ((jindex ((jget (this).base.characterArray)) (0)) == 'e')) then do
                    jsetIndex ((jget (this).base._characterWidth)) (index) (((jget (bounds).right) - 2))
                else if ((jindex ((jget (this).base.characterArray)) (0)) == 'm') then do
                    jsetIndex ((jget (this).base._characterWidth)) (index) (((jget (bounds).right) - 7))
                else do
                    jsetIndex ((jget (this).base._characterWidth)) (index) ((jget (bounds).right))
        jsetIndex ((jget (this).base._characterWidth)) (0) ((((fontSize `Data.Bits.shiftR` 1)) - 2))
        pure ((jget (this).base._characterWidth))


