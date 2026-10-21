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
-- package org.allbinary.image
module PreResourceImageUtil where

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
import qualified GL -- javax.microedition.khronos.opengles.GL
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Image -- javax.microedition.lcdui.Image

data PreResourceImageUtil = PreResourceImageUtil
    { header_ :: JavaHeader
    }

instance JavaNull PreResourceImageUtil where
    javaNull = javaNullRecord "PreResourceImageUtil"

instance JavaEquals PreResourceImageUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PreResourceImageUtil where
    (==) = jrecordEquals

instance JavaObjectClass PreResourceImageUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PreResourceImageUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = PreResourceImageUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "encapsulate" (\() -> encapsulate_impl this)
    jregisterMethod header_ "updateGL" (\() -> updateGL_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    pure this

initFields_ :: PreResourceImageUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PreResourceImageUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PreResourceImageUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PreResourceImageUtil)
getInstance = do
        pure (PreResourceImageUtil.instance_)


encapsulate :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Image.Image)
encapsulate object_ a1 = jmethod object_ "encapsulate" (\() -> (encapsulate_impl (javaCast object_ :: PreResourceImageUtil))) () a1

encapsulate_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Image.Image)
encapsulate_super object_ a1 = (encapsulate_impl (javaCast object_ :: PreResourceImageUtil)) a1

encapsulate_impl :: PreResourceImageUtil -> Image.Image -> IO (Image.Image)
encapsulate_impl this image = do
        pure (image)


updateGL :: (JavaObjectClass this_) => this_ -> GL.GL -> Image.Image -> IO (())
updateGL object_ a1 a2 = jmethod object_ "updateGL" (\() -> (updateGL_impl (javaCast object_ :: PreResourceImageUtil))) () a1 a2

updateGL_super :: (JavaObjectClass this_) => this_ -> GL.GL -> Image.Image -> IO (())
updateGL_super object_ a1 a2 = (updateGL_impl (javaCast object_ :: PreResourceImageUtil)) a1 a2

updateGL_impl :: PreResourceImageUtil -> GL.GL -> Image.Image -> IO (())
updateGL_impl this gl image = do
        pure ()


update :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Image.Image -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: PreResourceImageUtil))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Image.Image -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: PreResourceImageUtil)) a1 a2

update_impl :: PreResourceImageUtil -> Graphics.Graphics -> Image.Image -> IO (())
update_impl this graphics image = do
        pure ()


