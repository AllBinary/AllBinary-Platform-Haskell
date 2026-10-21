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
-- package org.allbinary.logic.java.number
module LongUtil where

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
import qualified LongData -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings

data LongUtil = LongUtil
    { header_ :: JavaHeader
    }

instance JavaNull LongUtil where
    javaNull = javaNullRecord "LongUtil"

instance JavaEquals LongUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LongUtil where
    (==) = jrecordEquals

instance JavaObjectClass LongUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LongUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = LongUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: LongUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LongUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LongUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


fillIn :: String -> IO (String)
fillIn end = do
        frameStringBuffer <- (StringMaker.new_)
        when ((jio (StringMaker.length frameStringBuffer)) < (jget LongData.mAX_LONG_LENGTH)) $ do
            commonPhoneStrings <- (CommonPhoneStrings.getInstance)
            let size = ((jget LongData.mAX_LONG_LENGTH) - (jio (StringMaker.length frameStringBuffer)))
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (StringMaker.append frameStringBuffer (jget (commonPhoneStrings).zERO))
        Control.Monad.void (StringMaker.append frameStringBuffer end)
        (StringMaker.toString frameStringBuffer)


