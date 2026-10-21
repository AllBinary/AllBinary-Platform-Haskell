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
-- package org.allbinary.logic.communication.log
module TestRemoteLogUtil where

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
import qualified LogUtil -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified Globals -- org.allbinary.globals.Globals
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data TestRemoteLogUtil = TestRemoteLogUtil
    { header_ :: JavaHeader
    }

instance JavaNull TestRemoteLogUtil where
    javaNull = javaNullRecord "TestRemoteLogUtil"

instance JavaEquals TestRemoteLogUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TestRemoteLogUtil where
    (==) = jrecordEquals

instance JavaObjectClass TestRemoteLogUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

pATH = "G:\\mnt\\bc\\mydev\\work\\allbinary_src\\licensing\\data\\"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TestRemoteLogUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = TestRemoteLogUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: TestRemoteLogUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TestRemoteLogUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TestRemoteLogUtil -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (Globals.init ((jio (Globals.getInstance))) (jio (Class.getClassLoader ((jio (jobjectGetClass this))))) (TestRemoteLogUtil.pATH))
        logUtil <- (LogUtil.getInstance)
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) "Test" "TestClass" (JavaException "Exception" "Pretend Exception"))
        pure ()


-- throws Exception
main :: JavaArray (String) -> IO (())
main args = do
        Control.Monad.void (new_)
        pure ()


