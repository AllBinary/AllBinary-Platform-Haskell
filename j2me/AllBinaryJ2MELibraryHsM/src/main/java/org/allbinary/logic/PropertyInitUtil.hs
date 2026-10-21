{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
-- package org.allbinary.logic
module PropertyInitUtil where

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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data PropertyInitUtil = PropertyInitUtil
    { header_ :: JavaHeader
    }

instance JavaNull PropertyInitUtil where
    javaNull = javaNullRecord "PropertyInitUtil"

instance JavaEquals PropertyInitUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PropertyInitUtil where
    (==) = jrecordEquals

instance JavaObjectClass PropertyInitUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PropertyInitUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = PropertyInitUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: PropertyInitUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PropertyInitUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PropertyInitUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: Int -> IO (PropertyInitUtil)
getInstance value = do
        commonStrings <- (CommonStrings.getInstance)
        logUtil <- (LogUtil.getInstance)
        Control.Monad.void (LogUtil.putF logUtil (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "PropertyInitUtil: "))) value))))) logUtil (jget (commonStrings).cONSTRUCTOR))
        pure (PropertyInitUtil.instance_)


