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
-- package org.allbinary.logic.string
module SpecialCharacterUtil where

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
import qualified StringUtil -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified MathData -- org.allbinary.logic.math.MathData
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data SpecialCharacterUtil = SpecialCharacterUtil
    { header_ :: JavaHeader
    }

instance JavaNull SpecialCharacterUtil where
    javaNull = javaNullRecord "SpecialCharacterUtil"

instance JavaEquals SpecialCharacterUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SpecialCharacterUtil where
    (==) = jrecordEquals

instance JavaObjectClass SpecialCharacterUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SpecialCharacterUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = SpecialCharacterUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: SpecialCharacterUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO SpecialCharacterUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SpecialCharacterUtil -> IO ()
init_ this = do
    initFields_ this


getHashMap :: IO (HashMap.HashMap)
getHashMap = do
        commonSeps <- (CommonSeps.getInstance)
        commonPhoneStrings <- (CommonPhoneStrings.getInstance)
        stringUtil <- (StringUtil.getInstance)
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap "!" (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap "@" (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap (jget (commonPhoneStrings).pOUND) (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap "$" (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap "%" (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap "^" (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap (jget (commonSeps).aMPERSAND) (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap (jget (commonPhoneStrings).sTAR) (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap (jget (commonSeps).pARENTHESIS_OPEN) (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap (jget (commonSeps).pARENTHESIS_CLOSE) (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap (jget (commonSeps).dASH) (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap (jget (commonSeps).uNDERSCORE) (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (MathData.getInstance))).pLUS) (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap (jget (commonSeps).eQUALS) (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap "\\" (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap "|" (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP) (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap "," (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap "<" (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap ">" (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap "?" (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (AbPathData.getInstance))).sEPARATOR) (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap "~" (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HashMap.put hashMap "`" (jget (stringUtil).eMPTY_STRING))
        pure (hashMap)


