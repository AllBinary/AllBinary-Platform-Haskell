{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
module TouchButtonResource where

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

data TouchButtonResource = TouchButtonResource
    { header_ :: JavaHeader
    , rESOURCE :: IORef (String)
    , hINT :: IORef (String)
    }

instance JavaNull TouchButtonResource where
    javaNull = javaNullRecord "TouchButtonResource"

instance JavaEquals TouchButtonResource where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchButtonResource where
    (==) = jrecordEquals

instance JavaObjectClass TouchButtonResource where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TouchButtonResource
newRecord_ = do
    header_ <- newJavaHeader
    rESOURCE <- newIORef ""
    hINT <- newIORef ""
    let this = TouchButtonResource header_ rESOURCE hINT
    jregisterLevel header_ this
    pure this

initFields_ :: TouchButtonResource -> IO ()
initFields_ this = do
    jset this.rESOURCE (javaNull)
    jset this.hINT (javaNull)
    pure ()

new_2 :: String -> String -> IO TouchButtonResource
new_2 resource hint = do
    this <- newRecord_
    init_2 this resource hint
    pure this

init_2 :: TouchButtonResource -> String -> String -> IO ()
init_2 this resource hint = do
        initFields_ this
        jset (this).rESOURCE (resource)
        jset (this).hINT (hint)
        pure ()


