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
-- package org.allbinary.graphics.j2me
module GraphicsException (module GraphicsException, module Exception) where

import Exception hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, logUtil, guiLog)
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
import qualified Any -- same package or java.lang
import qualified GuiLog -- org.allbinary.logic.communication.log.GuiLog
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified Exception

data GraphicsException = GraphicsException
    { header_ :: JavaHeader
    , base :: Exception.Exception
    , logUtil :: IORef (LogUtil.LogUtil)
    , guiLog :: IORef (GuiLog.GuiLog)
    }

instance JavaNull GraphicsException where
    javaNull = javaNullRecord "GraphicsException"

instance JavaEquals GraphicsException where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GraphicsException where
    (==) = jrecordEquals

instance JavaObjectClass GraphicsException where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GraphicsException
newRecord_ = do
    base <- Exception.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    guiLog <- newIORef javaNull
    let this = GraphicsException header_ base logUtil guiLog
    jregisterLevel header_ this
    pure this

initFields_ :: GraphicsException -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.guiLog =<< (GuiLog.getInstance)
    pure ()

new_3 :: (JavaObjectClass o2) => String -> o2 -> String -> IO GraphicsException
new_3 msg objObject_ method = do
    this <- newRecord_
    init_3 this msg objObject_ method
    pure this

init_3 :: (JavaObjectClass o2) => GraphicsException -> String -> o2 -> String -> IO ()
init_3 this msg objObject_ method = do
        let obj = jtoObject objObject_
        Exception.init_1 this.base (msg)
        initFields_ this
        pure () -- super(...) is in the record above
        handle (\(e :: JavaException) -> do
            pure ()
            ) $ do
            Control.Monad.void (GuiLog.showDialog ((jget (this).guiLog)) msg)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) msg obj method this)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_3 :: String -> String -> String -> IO GraphicsException
new_3 msg className method = do
    this <- newRecord_
    init_3 this msg className method
    pure this

init_3 :: GraphicsException -> String -> String -> String -> IO ()
init_3 this msg className method = do
        Exception.init_1 this.base (msg)
        initFields_ this
        pure () -- super(...) is in the record above
        handle (\(e :: JavaException) -> do
            pure ()
            ) $ do
            Control.Monad.void (GuiLog.showDialog ((jget (this).guiLog)) msg)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) msg className method this)
        pure ()


