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
-- package org.allbinary.logic.util.cache
module BaseBasicArrayListCache where

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
import qualified JsType -- jsinterop.annotations.JsType
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsProperty -- jsinterop.annotations.JsProperty

data BaseBasicArrayListCache = BaseBasicArrayListCache
    { header_ :: JavaHeader
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull BaseBasicArrayListCache where
    javaNull = javaNullRecord "BaseBasicArrayListCache"

instance JavaEquals BaseBasicArrayListCache where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BaseBasicArrayListCache where
    (==) = jrecordEquals

instance JavaObjectClass BaseBasicArrayListCache where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BaseBasicArrayListCache
newRecord_ = do
    header_ <- newJavaHeader
    list <- newIORef javaNull
    let this = BaseBasicArrayListCache header_ list
    jregisterLevel header_ this
    jregisterMethod header_ "log" (\() -> log_impl this)
    pure this

initFields_ :: BaseBasicArrayListCache -> IO ()
initFields_ this = do
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO BaseBasicArrayListCache
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BaseBasicArrayListCache -> IO ()
init_ this = do
    initFields_ this


log :: (JavaObjectClass this_) => this_ -> IO (String)
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: BaseBasicArrayListCache))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (String)
log_super object_ = (log_impl (javaCast object_ :: BaseBasicArrayListCache))

log_impl :: BaseBasicArrayListCache -> IO (String)
log_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "S: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size ((jget (this).list)))))
        (StringMaker.toString stringBuffer)


