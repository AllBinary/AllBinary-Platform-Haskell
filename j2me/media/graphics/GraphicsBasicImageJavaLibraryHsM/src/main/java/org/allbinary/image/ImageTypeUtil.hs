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
module ImageTypeUtil where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data ImageTypeUtil = ImageTypeUtil
    { header_ :: JavaHeader
    , pNG :: IORef (String)
    , jPG :: IORef (String)
    , gIF :: IORef (String)
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull ImageTypeUtil where
    javaNull = javaNullRecord "ImageTypeUtil"

instance JavaEquals ImageTypeUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageTypeUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageTypeUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageTypeUtil
newRecord_ = do
    header_ <- newJavaHeader
    pNG <- newIORef ""
    jPG <- newIORef ""
    gIF <- newIORef ""
    list <- newIORef javaNull
    let this = ImageTypeUtil header_ pNG jPG gIF list
    jregisterLevel header_ this
    jregisterMethod header_ "isSupported" (\() -> isSupported_impl this)
    pure this

initFields_ :: ImageTypeUtil -> IO ()
initFields_ this = do
    jset this.pNG ("png")
    jset this.jPG ("jpg")
    jset this.gIF ("gif")
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO ImageTypeUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageTypeUtil -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jget this.jPG))
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jget this.gIF))
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jget this.pNG))
        pure ()


isSupported :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isSupported object_ a1 = jmethod object_ "isSupported" (\() -> (isSupported_impl (javaCast object_ :: ImageTypeUtil))) () a1

isSupported_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isSupported_super object_ a1 = (isSupported_impl (javaCast object_ :: ImageTypeUtil)) a1

isSupported_impl :: ImageTypeUtil -> String -> IO (Bool)
isSupported_impl this mediaFileType = do
    mediaFileType <- newIORef mediaFileType
    javaCatchReturn $ do
        jset mediaFileType ((Prelude.map Data.Char.toLower (jget mediaFileType)))
        forM_ [((jio (BasicArrayList.size ((jget (this).list)))) - 1), ((jio (BasicArrayList.size ((jget (this).list)))) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let name = (javaCast (jio (BasicArrayList.get ((jget (this).list)) index)) :: String)
            when ((Prelude.fromEnum (Prelude.compare (jget mediaFileType) name) - 1) == 0) $ do
                javaReturn (True)
        pure (False)


getInstance :: IO (ImageTypeUtil)
getInstance = do
        pure ((jget ImageTypeUtil.sINGLETON))


