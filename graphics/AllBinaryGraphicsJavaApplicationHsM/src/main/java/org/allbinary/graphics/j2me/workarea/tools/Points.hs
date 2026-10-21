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
-- package org.allbinary.graphics.j2me.workarea.tools
module Points where

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
import qualified PointsInterface

-- implements PointsInterface
data Points = Points
    { header_ :: JavaHeader
    , pointVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull Points where
    javaNull = javaNullRecord "Points"

instance JavaEquals Points where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Points where
    (==) = jrecordEquals

instance JavaObjectClass Points where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Points
newRecord_ = do
    header_ <- newJavaHeader
    pointVector <- newIORef javaNull
    let this = Points header_ pointVector
    jregisterLevel header_ this
    PointsInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getPoints" (\() -> getPoints_impl this)
    jregisterMethod header_ "addPoints" (\() -> addPoints_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    pure this

initFields_ :: Points -> IO ()
initFields_ this = do
    jset this.pointVector (javaNull)
    pure ()

new_ :: IO Points
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Points -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).pointVector (assignedValue)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: Points))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: Points))

init_impl :: Points -> IO (())
init_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).pointVector)))
        pure ()


getPoints :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getPoints object_ = jmethod object_ "getPoints" (\() -> (getPoints_impl (javaCast object_ :: Points))) ()

getPoints_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getPoints_super object_ = (getPoints_impl (javaCast object_ :: Points))

getPoints_impl :: Points -> IO (BasicArrayList.BasicArrayList)
getPoints_impl this = do
        pure ((jget (this).pointVector))


addPoints :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addPoints object_ a1 = jmethod object_ "addPoints" (\() -> (addPoints_impl (javaCast object_ :: Points))) () a1

addPoints_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addPoints_super object_ a1 = (addPoints_impl (javaCast object_ :: Points)) a1

addPoints_impl :: Points -> BasicArrayList.BasicArrayList -> IO (())
addPoints_impl this vector = do
        Control.Monad.void (BasicArrayList.addAll2 ((jget (this).pointVector)) vector)
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: Points))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: Points))

isValid_impl :: Points -> IO (Bool)
isValid_impl this = do
    javaCatchReturn $ do
        if ((jio (BasicArrayList.size ((jget (this).pointVector)))) > 1) then do
            javaReturn (True)
        else do
            javaReturn (False)


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: Points))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: Points))

getSize_impl :: Points -> IO (Int)
getSize_impl this = do
        (BasicArrayList.size ((jget (this).pointVector)))


