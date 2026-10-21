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
-- package org.allbinary.game.input
module Input where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data Input = Input
    { header_ :: JavaHeader
    , id :: IORef (Int)
    , name :: IORef (String)
    }

instance JavaNull Input where
    javaNull = javaNullRecord "Input"

instance JavaEquals Input where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Input where
    (==) = jrecordEquals

instance JavaObjectClass Input where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO Input
newRecord_ = do
    header_ <- newJavaHeader
    id <- newIORef 0
    name <- newIORef ""
    let this = Input header_ id name
    jregisterLevel header_ this
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    jregisterMethod header_ "setId" (\() -> setId_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: Input -> IO ()
initFields_ this = do
    jset this.id (0)
    jset this.name ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    pure ()

new_2 :: Int -> String -> IO Input
new_2 id name = do
    this <- newRecord_
    init_2 this id name
    pure this

init_2 :: Input -> Int -> String -> IO ()
init_2 this id name = do
        initFields_ this
        Control.Monad.void (Input.setId this id)
        Control.Monad.void (Input.setName this name)
        pure ()


getId :: (JavaObjectClass this_) => this_ -> IO (Int)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: Input))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getId_super object_ = (getId_impl (javaCast object_ :: Input))

getId_impl :: Input -> IO (Int)
getId_impl this = do
        pure ((jget (this).id))


setId :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setId object_ a1 = jmethod object_ "setId" (\() -> (setId_impl (javaCast object_ :: Input))) () a1

setId_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setId_super object_ a1 = (setId_impl (javaCast object_ :: Input)) a1

setId_impl :: Input -> Int -> IO (())
setId_impl this key = do
        jset (this).id (key)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: Input))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: Input))

getName_impl :: Input -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: Input))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: Input)) a1

setName_impl :: Input -> String -> IO (())
setName_impl this keyName = do
        jset (this).name (keyName)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: Input))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: Input))

toString_impl :: Input -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Name: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (Input.getName this)))
        Control.Monad.void (StringMaker.append stringBuffer " Id: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (Input.getId this)))
        (StringMaker.toString stringBuffer)


