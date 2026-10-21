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
-- package org.allbinary.animation.text
module TextAnimation (module TextAnimation, module IndexedAnimation) where

import IndexedAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, nextFrame, nextFrame_super, nextFrame_impl, paintXY, paintXY_super, paintXY_impl, paintXYNoUpdate, paintXYNoUpdate_super, paintXYNoUpdate_impl, setTextWithOnMeasure, setTextWithOnMeasure_super, setTextWithOnMeasure_impl, setText, setText_super, setText_impl, getTextArray, getTextArray_super, getTextArray_impl, getFontHeight, getFontHeight_super, getFontHeight_impl, updateMyFontProcessor, myFontProcessor, textArrayP, anchor, fontHeight, offsetY, textChangeListener)
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
import qualified TextChangeListener -- same package or java.lang
import qualified BasicColorSetUtil -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified SWTJOGLProcessor -- org.allbinary.graphics.threed.SWTJOGLProcessor
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

-- implements UpdateMyFontInterface
data TextAnimation = TextAnimation
    { header_ :: JavaHeader
    , base :: IndexedAnimation.IndexedAnimation
    , updateMyFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , textArrayP :: IORef (JavaArray (String))
    , anchor :: IORef (Int)
    , fontHeight :: IORef (Int)
    , offsetY :: IORef (Int)
    , textChangeListener :: IORef (TextChangeListener.TextChangeListener)
    }

instance JavaNull TextAnimation where
    javaNull = javaNullRecord "TextAnimation"

instance JavaEquals TextAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TextAnimation where
    (==) = jrecordEquals

instance JavaObjectClass TextAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TextAnimation
newRecord_ = do
    base <- IndexedAnimation.newRecord_
    let header_ = base.header_
    updateMyFontProcessor <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    textArrayP <- newIORef javaNull
    anchor <- newIORef 0
    fontHeight <- newIORef 0
    offsetY <- newIORef 0
    textChangeListener <- newIORef javaNull
    let this = TextAnimation header_ base updateMyFontProcessor myFontProcessor textArrayP anchor fontHeight offsetY textChangeListener
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "paintXYNoUpdate" (\() -> paintXYNoUpdate_impl this)
    jregisterMethod header_ "setTextWithOnMeasure" (\() -> setTextWithOnMeasure_impl this)
    jregisterMethod header_ "setText" (\() -> setText_impl this)
    jregisterMethod header_ "getTextArray" (\() -> getTextArray_impl this)
    jregisterMethod header_ "getFontHeight" (\() -> getFontHeight_impl this)
    pure this

initFields_ :: TextAnimation -> IO ()
initFields_ this = do
    jset this.updateMyFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.myFontProcessor ((jget (this).updateMyFontProcessor))
    jset this.textArrayP ((jget ((jio (StringUtil.getInstance))).oNE_EMPTY_STRING_ARRAY))
    jset this.anchor ((jget Anchor.tOP_LEFT))
    jset this.fontHeight (0)
    jset this.offsetY (0)
    jset this.textChangeListener =<< (TextChangeListener.getInstance)
    pure ()

new_2 :: String -> AnimationBehavior.AnimationBehavior -> IO TextAnimation
new_2 text animationBehavior = do
    this <- newRecord_
    init_2 this text animationBehavior
    pure this

init_2 :: TextAnimation -> String -> AnimationBehavior.AnimationBehavior -> IO ()
init_2 this text animationBehavior = do
        IndexedAnimation.init_1 this.base (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (TextAnimation.setText this text)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: TextAnimation))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: TextAnimation)) a1

updateMeasurement_impl :: TextAnimation -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        assignedValue <- (Font.getHeight font)
        jset (this).fontHeight (assignedValue)
        let adjustedFontHeight = (Prelude.truncate (Prelude.negate (((Prelude.fromIntegral (jget (this).fontHeight)) * 2.00))))
        jset (this).offsetY ((if (jio (SWTJOGLProcessor.isJOGL ((jio (SWTJOGLProcessor.getInstance))))) then adjustedFontHeight else 0))
        Control.Monad.void (TextChangeListener.onMeasure ((jget (this).textChangeListener)))
        assignedValue <- (TextChangeListener.getInstance)
        jset (this).textChangeListener (assignedValue)
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


-- throws Exception
nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: TextAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: TextAnimation))

nextFrame_impl :: TextAnimation -> IO (())
nextFrame_impl this = do
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: TextAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: TextAnimation)) a1 a2 a3

paintXY_impl :: TextAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        Control.Monad.void (TextAnimation.paintXYNoUpdate this graphics x y)
        pure ()


paintXYNoUpdate :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXYNoUpdate object_ a1 a2 a3 = jmethod object_ "paintXYNoUpdate" (\() -> (paintXYNoUpdate_impl (javaCast object_ :: TextAnimation))) () a1 a2 a3

paintXYNoUpdate_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXYNoUpdate_super object_ a1 a2 a3 = (paintXYNoUpdate_impl (javaCast object_ :: TextAnimation)) a1 a2 a3

paintXYNoUpdate_impl :: TextAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXYNoUpdate_impl this graphics x y = do
        Control.Monad.void (BasicColorSetUtil.setBasicColorP3 ((jget (this).base.base.basicSetColorUtil)) graphics (jio (IndexedAnimation.getBasicColorP this)) (jio (IndexedAnimation.getColor this)))
        let size = (jlength (jget (this).textArrayP))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (Graphics.drawString graphics (jindex ((jget (this).textArrayP)) (index)) x ((y + (jget (this).offsetY)) + ((index * (jget (this).fontHeight)))) (jget (this).anchor))
        pure ()


setTextWithOnMeasure :: (JavaObjectClass this_) => this_ -> String -> TextChangeListener.TextChangeListener -> IO (())
setTextWithOnMeasure object_ a1 a2 = jmethod object_ "setTextWithOnMeasure" (\() -> (setTextWithOnMeasure_impl (javaCast object_ :: TextAnimation))) () a1 a2

setTextWithOnMeasure_super :: (JavaObjectClass this_) => this_ -> String -> TextChangeListener.TextChangeListener -> IO (())
setTextWithOnMeasure_super object_ a1 a2 = (setTextWithOnMeasure_impl (javaCast object_ :: TextAnimation)) a1 a2

setTextWithOnMeasure_impl :: TextAnimation -> String -> TextChangeListener.TextChangeListener -> IO (())
setTextWithOnMeasure_impl this text textChangeListener = do
        Control.Monad.void (TextAnimation.setText this text)
        jset (this).textChangeListener (textChangeListener)
        pure ()


setText :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText object_ a1 = jmethod object_ "setText" (\() -> (setText_impl (javaCast object_ :: TextAnimation))) () a1

setText_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText_super object_ a1 = (setText_impl (javaCast object_ :: TextAnimation)) a1

setText_impl :: TextAnimation -> String -> IO (())
setText_impl this text = do
        list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        when ((text /= javaNull) && ((Prelude.length text) > 0)) $ do
            index <- newIORef (0)
            startIndex <- newIORef (0)
            endIndex <- newIORef (0)
            fix $ \loop -> when ((jget index) >= 0) $ javaIteration (loop) $ do
                jset startIndex ((jget index))
                jset index ((jstringIndexOf text '\n' (jget startIndex)))
                jset endIndex ((jget index))
                when ((jget index) < 0) $ do
                    jset endIndex ((Prelude.length text))
                Control.Monad.void (BasicArrayList.add list (Prelude.take (((jget endIndex)) - ((jget startIndex))) (Prelude.drop ((jget startIndex)) text)))
                when ((jget index) < 0) $ do
                    throwIO JavaBreak
                jset index ((jget index) + 1)
        if ((jio (BasicArrayList.size list)) > 0) then do
            let textArray = (jnewArray ((jio (BasicArrayList.size list))) javaNull)
            size <- (BasicArrayList.size list)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                jsetIndex textArray (index) ((javaCast (jio (BasicArrayList.get list index)) :: String))
            jset (this).textArrayP (textArray)
        else do
            jset (this).textArrayP ((jget ((jio (StringUtil.getInstance))).oNE_EMPTY_STRING_ARRAY))
        jset (this).myFontProcessor ((jget (this).updateMyFontProcessor))
        pure ()


getTextArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
getTextArray object_ = jmethod object_ "getTextArray" (\() -> (getTextArray_impl (javaCast object_ :: TextAnimation))) ()

getTextArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
getTextArray_super object_ = (getTextArray_impl (javaCast object_ :: TextAnimation))

getTextArray_impl :: TextAnimation -> IO (JavaArray (String))
getTextArray_impl this = do
        pure ((jget (this).textArrayP))


getFontHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getFontHeight object_ = jmethod object_ "getFontHeight" (\() -> (getFontHeight_impl (javaCast object_ :: TextAnimation))) ()

getFontHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFontHeight_super object_ = (getFontHeight_impl (javaCast object_ :: TextAnimation))

getFontHeight_impl :: TextAnimation -> IO (Int)
getFontHeight_impl this = do
        pure ((jget (this).fontHeight))


