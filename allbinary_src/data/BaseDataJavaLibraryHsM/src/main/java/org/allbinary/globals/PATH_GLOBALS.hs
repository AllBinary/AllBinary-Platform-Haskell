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
-- package org.allbinary.globals
module PATH_GLOBALS where

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
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data PATH_GLOBALS = PATH_GLOBALS
    { header_ :: JavaHeader
    , dATA_PATH :: IORef (String)
    , iNIT_PATH :: IORef (String)
    , vIEWS_PATH :: IORef (String)
    , lOG_PATH :: IORef (String)
    , bACKUP_PATH :: IORef (String)
    }

instance JavaNull PATH_GLOBALS where
    javaNull = javaNullRecord "PATH_GLOBALS"

instance JavaEquals PATH_GLOBALS where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PATH_GLOBALS where
    (==) = jrecordEquals

instance JavaObjectClass PATH_GLOBALS where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PATH_GLOBALS
newRecord_ = do
    header_ <- newJavaHeader
    dATA_PATH <- newIORef ""
    iNIT_PATH <- newIORef ""
    vIEWS_PATH <- newIORef ""
    lOG_PATH <- newIORef ""
    bACKUP_PATH <- newIORef ""
    let this = PATH_GLOBALS header_ dATA_PATH iNIT_PATH vIEWS_PATH lOG_PATH bACKUP_PATH
    jregisterLevel header_ this
    pure this

initFields_ :: PATH_GLOBALS -> IO ()
initFields_ this = do
    jset this.dATA_PATH (javaNull)
    jset this.iNIT_PATH (javaNull)
    jset this.vIEWS_PATH (javaNull)
    jset this.lOG_PATH (javaNull)
    jset this.bACKUP_PATH (javaNull)
    pure ()


getInstance :: IO (PATH_GLOBALS)
getInstance = do
        pure (PATH_GLOBALS.instance_)

new_ :: IO PATH_GLOBALS
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PATH_GLOBALS -> IO ()
init_ this = do
        initFields_ this
        stringBuffer <- (StringMaker.new_)
        abPathData <- (AbPathData.getInstance)
        Control.Monad.void (StringMaker.append stringBuffer "data")
        Control.Monad.void (StringMaker.append stringBuffer (jget (abPathData).sEPARATOR))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset (this).dATA_PATH (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).dATA_PATH))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonStrings.getInstance))).iNIT))
        Control.Monad.void (StringMaker.append stringBuffer (jget (abPathData).sEPARATOR))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset (this).iNIT_PATH (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).dATA_PATH))
        Control.Monad.void (StringMaker.append stringBuffer "log")
        Control.Monad.void (StringMaker.append stringBuffer (jget (abPathData).sEPARATOR))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset (this).lOG_PATH (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).dATA_PATH))
        Control.Monad.void (StringMaker.append stringBuffer "backup")
        Control.Monad.void (StringMaker.append stringBuffer (jget (abPathData).sEPARATOR))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset (this).bACKUP_PATH (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).iNIT_PATH))
        Control.Monad.void (StringMaker.append stringBuffer "views")
        Control.Monad.void (StringMaker.append stringBuffer (jget (abPathData).sEPARATOR))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset (this).vIEWS_PATH (assignedValue)
        pure ()


