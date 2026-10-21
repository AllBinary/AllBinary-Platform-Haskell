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
module DrawStringUtil where

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

data DrawStringUtil = DrawStringUtil
    { header_ :: JavaHeader
    , eMPTY_STRING :: IORef (String)
    , anchor :: IORef (Int)
    }

instance JavaNull DrawStringUtil where
    javaNull = javaNullRecord "DrawStringUtil"

instance JavaEquals DrawStringUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DrawStringUtil where
    (==) = jrecordEquals

instance JavaObjectClass DrawStringUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DrawStringUtil
newRecord_ = do
    header_ <- newJavaHeader
    eMPTY_STRING <- newIORef ""
    anchor <- newIORef 0
    let this = DrawStringUtil header_ eMPTY_STRING anchor
    jregisterLevel header_ this
    jregisterMethod header_ "drawCenterString" (\() -> drawCenterString_impl this)
    jregisterMethod header_ "drawCenterStrings" (\() -> drawCenterStrings_impl this)
    pure this

initFields_ :: DrawStringUtil -> IO ()
initFields_ this = do
    jset this.eMPTY_STRING ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.anchor ((jget Anchor.tOP_LEFT))
    pure ()

new_ :: IO DrawStringUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DrawStringUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (DrawStringUtil)
getInstance = do
        pure (DrawStringUtil.instance_)


drawCenterString :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> String -> Int -> Int -> Int -> Int -> IO (())
drawCenterString object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "drawCenterString" (\() -> (drawCenterString_impl (javaCast object_ :: DrawStringUtil))) () a1 a2 a3 a4 a5 a6

drawCenterString_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> String -> Int -> Int -> Int -> Int -> IO (())
drawCenterString_super object_ a1 a2 a3 a4 a5 a6 = (drawCenterString_impl (javaCast object_ :: DrawStringUtil)) a1 a2 a3 a4 a5 a6

drawCenterString_impl :: DrawStringUtil -> Graphics.Graphics -> String -> Int -> Int -> Int -> Int -> IO (())
drawCenterString_impl this graphics string offset length x y = do
        let width = (((jio (Graphics.substringWidth ((jio (Graphics.getFont graphics))) string offset length)) `Data.Bits.shiftR` 1))
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Exception: stringLength: "))) (Prelude.length string)))) " offset: "))) offset))) " currentLength: "))) length))))) this "drawCenterString")
            ) $ do
            Control.Monad.void (Graphics.drawSubstring graphics string offset length (x - width) y (jget (this).anchor))
        pure ()


drawCenterStrings :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> JavaArray (String) -> Int -> Int -> Int -> Int -> IO (())
drawCenterStrings object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "drawCenterStrings" (\() -> (drawCenterStrings_impl (javaCast object_ :: DrawStringUtil))) () a1 a2 a3 a4 a5 a6

drawCenterStrings_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> JavaArray (String) -> Int -> Int -> Int -> Int -> IO (())
drawCenterStrings_super object_ a1 a2 a3 a4 a5 a6 = (drawCenterStrings_impl (javaCast object_ :: DrawStringUtil)) a1 a2 a3 a4 a5 a6

drawCenterStrings_impl :: DrawStringUtil -> Graphics.Graphics -> JavaArray (String) -> Int -> Int -> Int -> Int -> IO (())
drawCenterStrings_impl this graphics stringArray maxWidth charHeight x y = do
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
                    Control.Monad.void (DrawStringUtil.drawCenterString this graphics string (jget offset) (jget currentLength) x (y + ((((index + (jpostIncrement extraLines (+ 1)))) * charHeight))))
                    jset offset (((jget offset) + (jget currentLength)))
                    jset currentLength (linePortion)
                jset extraLines ((jget extraLines) - 1)
        pure ()


