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
-- package org.allbinary.logic.communication.http
module AcceptableResponseUtil where

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
import qualified AcceptableResponseFactory -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified TsUtil -- org.allbinary.TsUtil
import qualified StdUtil -- org.allbinary.logic.StdUtil

data AcceptableResponseUtil = AcceptableResponseUtil
    { header_ :: JavaHeader
    , candidateVector :: IORef (BasicArrayList.BasicArrayList)
    , tagNameVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull AcceptableResponseUtil where
    javaNull = javaNullRecord "AcceptableResponseUtil"

instance JavaEquals AcceptableResponseUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AcceptableResponseUtil where
    (==) = jrecordEquals

instance JavaObjectClass AcceptableResponseUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AcceptableResponseUtil
newRecord_ = do
    header_ <- newJavaHeader
    candidateVector <- newIORef javaNull
    tagNameVector <- newIORef javaNull
    let this = AcceptableResponseUtil header_ candidateVector tagNameVector
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getTagName" (\() -> getTagName_impl this)
    jregisterMethod header_ "size" (\() -> size_impl this)
    pure this

initFields_ :: AcceptableResponseUtil -> IO ()
initFields_ this = do
    jset this.candidateVector =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.tagNameVector =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO AcceptableResponseUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AcceptableResponseUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AcceptableResponseUtil)
getInstance = do
        pure (AcceptableResponseUtil.instance_)


-- Java static initializer: call this before the class is used
staticInit_ :: IO ()
staticInit_ = do
        Control.Monad.void (TsUtil.hashCode ((jio (TsUtil.getInstance))) (jget ((jio (AcceptableResponseFactory.getInstance))).hTML))
        pure ()


get :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: AcceptableResponseUtil))) () a1

get_super :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
get_super object_ a1 = (get_impl (javaCast object_ :: AcceptableResponseUtil)) a1

get_impl :: AcceptableResponseUtil -> Int -> IO (String)
get_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).candidateVector)) index)) :: String))


getTagName :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
getTagName object_ a1 = jmethod object_ "getTagName" (\() -> (getTagName_impl (javaCast object_ :: AcceptableResponseUtil))) () a1

getTagName_super :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
getTagName_super object_ a1 = (getTagName_impl (javaCast object_ :: AcceptableResponseUtil)) a1

getTagName_impl :: AcceptableResponseUtil -> Int -> IO (String)
getTagName_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).tagNameVector)) index)) :: String))


size :: (JavaObjectClass this_) => this_ -> IO (Int)
size object_ = jmethod object_ "size" (\() -> (size_impl (javaCast object_ :: AcceptableResponseUtil))) ()

size_super :: (JavaObjectClass this_) => this_ -> IO (Int)
size_super object_ = (size_impl (javaCast object_ :: AcceptableResponseUtil))

size_impl :: AcceptableResponseUtil -> IO (Int)
size_impl this = do
        (BasicArrayList.size ((jget (this).candidateVector)))


