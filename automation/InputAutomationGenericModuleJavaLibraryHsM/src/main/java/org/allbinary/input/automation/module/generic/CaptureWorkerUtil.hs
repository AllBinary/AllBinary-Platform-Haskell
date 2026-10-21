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
-- package org.allbinary.input.automation.module.generic
module CaptureWorkerUtil where

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
import qualified ProfileActionScriptConditionInterface -- org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data CaptureWorkerUtil = CaptureWorkerUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull CaptureWorkerUtil where
    javaNull = javaNullRecord "CaptureWorkerUtil"

instance JavaEquals CaptureWorkerUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CaptureWorkerUtil where
    (==) = jrecordEquals

instance JavaObjectClass CaptureWorkerUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CaptureWorkerUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = CaptureWorkerUtil header_ logUtil
    jregisterLevel header_ this
    pure this

initFields_ :: CaptureWorkerUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO CaptureWorkerUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CaptureWorkerUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
processProfileActionConditions :: BasicArrayList.BasicArrayList -> Int64 -> IO (())
processProfileActionConditions vector frame = do
        logUtil <- (LogUtil.getInstance)
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF logUtil (jget (commonStrings).sTART) "CaptureWorkerUtil" "processProfileActionConditions")
        size <- (BasicArrayList.size vector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let profileActionConditionInterface = (javaCast (jio (BasicArrayList.get vector index)) :: ProfileActionScriptConditionInterface.ProfileActionScriptConditionInterface)
            if (jio (ProfileActionScriptConditionInterface.shouldProcess profileActionConditionInterface frame)) then do
                Control.Monad.void (ProfileActionScriptConditionInterface.process profileActionConditionInterface frame)
            else do
                pure ()
        pure ()


