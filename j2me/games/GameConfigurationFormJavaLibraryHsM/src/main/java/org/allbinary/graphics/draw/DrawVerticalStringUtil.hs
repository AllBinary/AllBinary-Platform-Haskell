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
-- package org.allbinary.graphics.draw
module DrawVerticalStringUtil where

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
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified AndroidUtil -- org.allbinary.AndroidUtil
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified OpenGLFeatureUtil -- org.allbinary.graphics.opengles.OpenGLFeatureUtil
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data DrawVerticalStringUtil = DrawVerticalStringUtil
    { header_ :: JavaHeader
    , eMPTY_STRING :: IORef (String)
    , anchor :: IORef (Int)
    , charHeight :: IORef (Int)
    , offsetY :: IORef (Int)
    , offsetXArray :: IORef (JavaArray (Int))
    }

instance JavaNull DrawVerticalStringUtil where
    javaNull = javaNullRecord "DrawVerticalStringUtil"

instance JavaEquals DrawVerticalStringUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DrawVerticalStringUtil where
    (==) = jrecordEquals

instance JavaObjectClass DrawVerticalStringUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DrawVerticalStringUtil
newRecord_ = do
    header_ <- newJavaHeader
    eMPTY_STRING <- newIORef ""
    anchor <- newIORef 0
    charHeight <- newIORef 0
    offsetY <- newIORef 0
    offsetXArray <- newIORef javaNull
    let this = DrawVerticalStringUtil header_ eMPTY_STRING anchor charHeight offsetY offsetXArray
    jregisterLevel header_ this
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "paintVerticle" (\() -> paintVerticle_impl this)
    jregisterMethod header_ "drawCenterString" (\() -> drawCenterString_impl this)
    jregisterMethod header_ "drawCenterStrings" (\() -> drawCenterStrings_impl this)
    pure this

initFields_ :: DrawVerticalStringUtil -> IO ()
initFields_ this = do
    jset this.eMPTY_STRING ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.anchor ((jget Anchor.tOP_LEFT))
    jset this.charHeight (0)
    jset this.offsetY (0)
    jset this.offsetXArray ((jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY))
    pure ()

new_ :: IO DrawVerticalStringUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DrawVerticalStringUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (DrawVerticalStringUtil)
getInstance = do
        pure (DrawVerticalStringUtil.instance_)


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> String -> IO (())
updateMeasurement object_ a1 a2 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: DrawVerticalStringUtil))) () a1 a2

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> String -> IO (())
updateMeasurement_super object_ a1 a2 = (updateMeasurement_impl (javaCast object_ :: DrawVerticalStringUtil)) a1 a2

updateMeasurement_impl :: DrawVerticalStringUtil -> Graphics.Graphics -> String -> IO (())
updateMeasurement_impl this graphics string = do
        openGLFeatureUtil <- (OpenGLFeatureUtil.getInstance)
        font <- (Graphics.getFont graphics)
        assignedValue <- (Font.getHeight font)
        jset (this).charHeight (assignedValue)
        jset (this).offsetY (0)
        if (jio (J2MEUtil.isHTML)) then do
            jset (this).charHeight (((jget (this).charHeight) + 1))
        else when (jio (OpenGLFeatureUtil.isAnyThreed openGLFeatureUtil)) $ do
            jset (this).charHeight (((jget (this).charHeight) + 2))
            if (jio (AndroidUtil.isAndroid)) then do
                pure ()
            else do
                jset (this).offsetY ((2 + ((((jget (this).charHeight) * 2) `quot` 3))))
        let size = (Prelude.length string)
        aChar <- newIORef ('\0')
        let offsetXArray = (jnewArray (size) 0)
        forM_ [(size - 1), (size - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jset aChar ((string Prelude.!! index))
            when (jio (OpenGLFeatureUtil.isAnyThreed openGLFeatureUtil)) $ do
                jsetIndex offsetXArray (index) (((jio (Font.charWidth font (jget aChar))) / 2))
        jset (this).offsetXArray (offsetXArray)
        pure ()


paintVerticle :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> String -> Int -> Int -> Int -> IO (())
paintVerticle object_ a1 a2 a3 a4 a5 = jmethod object_ "paintVerticle" (\() -> (paintVerticle_impl (javaCast object_ :: DrawVerticalStringUtil))) () a1 a2 a3 a4 a5

paintVerticle_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> String -> Int -> Int -> Int -> IO (())
paintVerticle_super object_ a1 a2 a3 a4 a5 = (paintVerticle_impl (javaCast object_ :: DrawVerticalStringUtil)) a1 a2 a3 a4 a5

paintVerticle_impl :: DrawVerticalStringUtil -> Graphics.Graphics -> String -> Int -> Int -> Int -> IO (())
paintVerticle_impl this graphics string x y anchor = do
        let size = (Prelude.length string)
        aChar <- newIORef ('\0')
        forM_ [(size - 1), (size - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jset aChar ((string Prelude.!! index))
            Control.Monad.void (Graphics.drawChar graphics (jget aChar) (x + (jindex ((jget (this).offsetXArray)) (index))) ((y + (((jget (this).charHeight) * index))) + (jget (this).offsetY)) anchor)
        pure ()


drawCenterString :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> String -> Int -> Int -> Int -> Int -> IO (())
drawCenterString object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "drawCenterString" (\() -> (drawCenterString_impl (javaCast object_ :: DrawVerticalStringUtil))) () a1 a2 a3 a4 a5 a6

drawCenterString_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> String -> Int -> Int -> Int -> Int -> IO (())
drawCenterString_super object_ a1 a2 a3 a4 a5 a6 = (drawCenterString_impl (javaCast object_ :: DrawVerticalStringUtil)) a1 a2 a3 a4 a5 a6

drawCenterString_impl :: DrawVerticalStringUtil -> Graphics.Graphics -> String -> Int -> Int -> Int -> Int -> IO (())
drawCenterString_impl this graphics string offset length x y = do
        let width = (((jio (Graphics.substringWidth ((jio (Graphics.getFont graphics))) string offset length)) `Data.Bits.shiftR` 1))
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Exception: stringLength: "))) (Prelude.length string)))) " offset: "))) offset))) " currentLength: "))) length))))) this "drawCenterString")
            ) $ do
            Control.Monad.void (Graphics.drawSubstring graphics string offset length (x - width) y (jget (this).anchor))
        pure ()


drawCenterStrings :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> JavaArray (String) -> Int -> Int -> Int -> IO (())
drawCenterStrings object_ a1 a2 a3 a4 a5 = jmethod object_ "drawCenterStrings" (\() -> (drawCenterStrings_impl (javaCast object_ :: DrawVerticalStringUtil))) () a1 a2 a3 a4 a5

drawCenterStrings_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> JavaArray (String) -> Int -> Int -> Int -> IO (())
drawCenterStrings_super object_ a1 a2 a3 a4 a5 = (drawCenterStrings_impl (javaCast object_ :: DrawVerticalStringUtil)) a1 a2 a3 a4 a5

drawCenterStrings_impl :: DrawVerticalStringUtil -> Graphics.Graphics -> JavaArray (String) -> Int -> Int -> Int -> IO (())
drawCenterStrings_impl this graphics stringArray maxWidth x y = do
        extraLines <- newIORef (0)
        forM_ [0 .. (jlength stringArray) - 1] $ \index -> javaIteration (pure ()) $ do
            let string = (jindex stringArray (index))
            when (string /= (jget (this).eMPTY_STRING)) $ do
                width <- (Graphics.stringWidth ((jio (Graphics.getFont graphics))) string)
                minTotalLines <- newIORef (1)
                when (width > maxWidth) $ do
                    jset minTotalLines ((((width `quot` maxWidth)) + 1))
                let linePortion = ((Prelude.length string) `quot` (jget minTotalLines))
                offset <- newIORef (0)
                currentLength <- newIORef (linePortion)
                let size = (Prelude.length string)
                fix $ \loop -> when ((jget offset) < size) $ javaIteration (loop) $ do
                    when (((jget offset) + (jget currentLength)) > size) $ do
                        jset currentLength ((size - (jget offset)))
                    when (((jget offset) + (jget currentLength)) /= size) $ do
                        fix $ \loop -> when (((jget currentLength) > 0) && ((jio (charAt ((jindex stringArray (index))) ((jget offset) + (jget currentLength)))) /= ' ')) $ javaIteration (loop) $ do
                            jset currentLength ((jget currentLength) - 1)
                        when ((jget currentLength) <= 4) $ do
                            jset currentLength (linePortion)
                    Control.Monad.void (DrawVerticalStringUtil.drawCenterString this graphics string (jget offset) (jget currentLength) x (y + ((((index + (jpostIncrement extraLines (+ 1)))) * (jget (this).charHeight)))))
                    jset offset (((jget offset) + (jget currentLength)))
                    jset currentLength (linePortion)
                jset extraLines ((jget extraLines) - 1)
        pure ()


