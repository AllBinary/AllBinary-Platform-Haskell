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
-- package org.allbinary.media.image.cache
module BufferedImageInfoFactory where

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
import qualified BufferedImageInfo -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data BufferedImageInfoFactory = BufferedImageInfoFactory
    { header_ :: JavaHeader
    }

instance JavaNull BufferedImageInfoFactory where
    javaNull = javaNullRecord "BufferedImageInfoFactory"

instance JavaEquals BufferedImageInfoFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BufferedImageInfoFactory where
    (==) = jrecordEquals

instance JavaObjectClass BufferedImageInfoFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE hashMap #-}
hashMap = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance))))) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BufferedImageInfoFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = BufferedImageInfoFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: BufferedImageInfoFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BufferedImageInfoFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BufferedImageInfoFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: Int -> Int -> Int -> IO (BufferedImageInfo.BufferedImageInfo)
getInstance width height type_ = do
        stringbuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.appendint stringbuffer width)
        Control.Monad.void (StringMaker.appendint stringbuffer height)
        Control.Monad.void (StringMaker.appendint stringbuffer type_)
        key <- (StringMaker.toString stringbuffer)
        bufferedImageInfo <- newIORef ((javaCast (jio (get ((jget BufferedImageInfoFactory.hashMap)) key)) :: BufferedImageInfo.BufferedImageInfo))
        when ((jget bufferedImageInfo) == javaNull) $ do
            assignedValue <- (BufferedImageInfo.new_3 width height type_)
            jset bufferedImageInfo (assignedValue)
            Control.Monad.void (put ((jget BufferedImageInfoFactory.hashMap)) key (jget bufferedImageInfo))
        pure ((jget bufferedImageInfo))


