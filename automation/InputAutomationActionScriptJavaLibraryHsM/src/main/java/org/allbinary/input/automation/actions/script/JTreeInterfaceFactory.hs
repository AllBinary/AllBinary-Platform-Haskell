{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
-- Generated Code Do Not Modify
-- package org.allbinary.input.automation.actions.script
module JTreeInterfaceFactory where

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
import qualified JTreeInterface -- same package or java.lang

data JTreeInterfaceFactory = JTreeInterfaceFactory
    { header_ :: JavaHeader
    , jTreeInterface :: IORef (JTreeInterface.JTreeInterface)
    }

instance JavaNull JTreeInterfaceFactory where
    javaNull = javaNullRecord "JTreeInterfaceFactory"

instance JavaEquals JTreeInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq JTreeInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass JTreeInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO JTreeInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    jTreeInterface <- newIORef javaNull
    let this = JTreeInterfaceFactory header_ jTreeInterface
    jregisterLevel header_ this
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "getJTreeInterface" (\() -> getJTreeInterface_impl this)
    pure this

initFields_ :: JTreeInterfaceFactory -> IO ()
initFields_ this = do
    jset this.jTreeInterface (javaNull)
    pure ()

new_ :: IO JTreeInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: JTreeInterfaceFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (JTreeInterfaceFactory)
getInstance = do
        pure (JTreeInterfaceFactory.instance_)


set :: (JavaObjectClass this_) => this_ -> JTreeInterface.JTreeInterface -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: JTreeInterfaceFactory))) () a1

set_super :: (JavaObjectClass this_) => this_ -> JTreeInterface.JTreeInterface -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: JTreeInterfaceFactory)) a1

set_impl :: JTreeInterfaceFactory -> JTreeInterface.JTreeInterface -> IO (())
set_impl this jTreeInterface = do
        jset (this).jTreeInterface (jTreeInterface)
        pure ()


getJTreeInterface :: (JavaObjectClass this_) => this_ -> IO (JTreeInterface.JTreeInterface)
getJTreeInterface object_ = jmethod object_ "getJTreeInterface" (\() -> (getJTreeInterface_impl (javaCast object_ :: JTreeInterfaceFactory))) ()

getJTreeInterface_super :: (JavaObjectClass this_) => this_ -> IO (JTreeInterface.JTreeInterface)
getJTreeInterface_super object_ = (getJTreeInterface_impl (javaCast object_ :: JTreeInterfaceFactory))

getJTreeInterface_impl :: JTreeInterfaceFactory -> IO (JTreeInterface.JTreeInterface)
getJTreeInterface_impl this = do
        pure ((jget (this).jTreeInterface))


