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
-- package org.allbinary.input.media.image
module InputImageType where

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
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil

data InputImageType = InputImageType
    { header_ :: JavaHeader
    , name :: IORef (String)
    , index :: IORef (Int)
    }

instance JavaNull InputImageType where
    javaNull = javaNullRecord "InputImageType"

instance JavaEquals InputImageType where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputImageType where
    (==) = jrecordEquals

instance JavaObjectClass InputImageType where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE hashMap #-}
hashMap = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance))))) >>= newIORef)

{-# NOINLINE tYPE_VECTOR #-}
tYPE_VECTOR = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_)))

{-# NOINLINE cAPTURE #-}
cAPTURE = unsafePerformIO ((new_2 "Capture" 0) >>= newIORef)

{-# NOINLINE cOMPARISON #-}
cOMPARISON = unsafePerformIO ((new_2 "Comparison" 1) >>= newIORef)

{-# NOINLINE mOTION #-}
mOTION = unsafePerformIO ((new_2 "Motion" 2) >>= newIORef)

newRecord_ :: IO InputImageType
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    index <- newIORef 0
    let this = InputImageType header_ name index
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getIndex" (\() -> getIndex_impl this)
    pure this

initFields_ :: InputImageType -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    jset this.index (0)
    pure ()

new_2 :: String -> Int -> IO InputImageType
new_2 name index = do
    this <- newRecord_
    init_2 this name index
    pure this

init_2 :: InputImageType -> String -> Int -> IO ()
init_2 this name index = do
        initFields_ this
        jset (this).name (name)
        jset (this).index (index)
        Control.Monad.void (add InputImageType.tYPE_VECTOR this)
        Control.Monad.void (put ((jget InputImageType.hashMap)) (jio (InputImageType.getName this)) this)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: InputImageType))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: InputImageType))

toString_impl :: InputImageType -> IO (String)
toString_impl this = do
        pure (("ImageType: " ++ (jio (InputImageType.getName this))))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: InputImageType))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: InputImageType))

getName_impl :: InputImageType -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getInstance :: String -> IO (InputImageType)
getInstance imageTypeString = do
        pure ((javaCast (jio (get ((jget InputImageType.hashMap)) imageTypeString)) :: InputImageType))


getAllAsVector :: IO (BasicArrayList.BasicArrayList)
getAllAsVector = do
        pure (InputImageType.tYPE_VECTOR)


getIndex :: (JavaObjectClass this_) => this_ -> IO (Int)
getIndex object_ = jmethod object_ "getIndex" (\() -> (getIndex_impl (javaCast object_ :: InputImageType))) ()

getIndex_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getIndex_super object_ = (getIndex_impl (javaCast object_ :: InputImageType))

getIndex_impl :: InputImageType -> IO (Int)
getIndex_impl this = do
        pure ((jget (this).index))


