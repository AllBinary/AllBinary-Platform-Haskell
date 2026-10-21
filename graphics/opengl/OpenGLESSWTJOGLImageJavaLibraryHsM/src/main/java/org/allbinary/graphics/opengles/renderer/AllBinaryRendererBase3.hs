{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.graphics.opengles.renderer
module AllBinaryRendererBase3 where

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
import qualified Image -- javax.microedition.lcdui.Image
import qualified OpenGLESImage -- org.allbinary.image.opengles.OpenGLESImage
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data AllBinaryRendererBase3 = AllBinaryRendererBase3
    { header_ :: JavaHeader
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull AllBinaryRendererBase3 where
    javaNull = javaNullRecord "AllBinaryRendererBase3"

instance JavaEquals AllBinaryRendererBase3 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryRendererBase3 where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryRendererBase3 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AllBinaryRendererBase3
newRecord_ = do
    header_ <- newJavaHeader
    list <- newIORef javaNull
    let this = AllBinaryRendererBase3 header_ list
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    pure this

initFields_ :: AllBinaryRendererBase3 -> IO ()
initFields_ this = do
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO AllBinaryRendererBase3
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllBinaryRendererBase3 -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: AllBinaryRendererBase3))) () a1

update_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: AllBinaryRendererBase3)) a1

update_impl :: AllBinaryRendererBase3 -> GL10.GL10 -> IO (())
update_impl this gl = do
        fix $ \loop -> when ((jio (BasicArrayList.size ((jget (this).list)))) > 0) $ javaIteration (loop) $ do
            let openGLESImage = (javaCast (jio (BasicArrayList.removeAt ((jget (this).list)) 0)) :: OpenGLESImage.OpenGLESImage)
            when (openGLESImage /= javaNull) $ do
                Control.Monad.void (OpenGLESImage.set openGLESImage gl)
        pure ()


add :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: AllBinaryRendererBase3))) () a1

add_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: AllBinaryRendererBase3)) a1

add_impl :: AllBinaryRendererBase3 -> Image.Image -> IO (())
add_impl this image = do
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) image)
        pure ()


