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
-- package org.allbinary.logic.io
module AbIOSystem where

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

data AbIOSystem = AbIOSystem
    { header_ :: JavaHeader
    , type_ :: IORef (String)
    }

instance JavaNull AbIOSystem where
    javaNull = javaNullRecord "AbIOSystem"

instance JavaEquals AbIOSystem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbIOSystem where
    (==) = jrecordEquals

instance JavaObjectClass AbIOSystem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbIOSystem
newRecord_ = do
    header_ <- newJavaHeader
    type_ <- newIORef ""
    let this = AbIOSystem header_ type_
    jregisterLevel header_ this
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    jregisterMethod header_ "isType" (\() -> isType_impl this)
    pure this

initFields_ :: AbIOSystem -> IO ()
initFields_ this = do
    jset this.type_ ("java.io")
    pure ()

new_ :: IO AbIOSystem
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbIOSystem -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AbIOSystem)
getInstance = do
        pure (AbIOSystem.instance_)


getType :: (JavaObjectClass this_) => this_ -> IO (String)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: AbIOSystem))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getType_super object_ = (getType_impl (javaCast object_ :: AbIOSystem))

getType_impl :: AbIOSystem -> IO (String)
getType_impl this = do
        pure ((jget (this).type_))


isType :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isType object_ a1 = jmethod object_ "isType" (\() -> (isType_impl (javaCast object_ :: AbIOSystem))) () a1

isType_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isType_super object_ a1 = (isType_impl (javaCast object_ :: AbIOSystem)) a1

isType_impl :: AbIOSystem -> String -> IO (Bool)
isType_impl this type_ = do
    javaCatchReturn $ do
        if ((Prelude.fromEnum (Prelude.compare (jget (this).type_) type_) - 1) == 0) then do
            javaReturn (True)
        else do
            javaReturn (False)


