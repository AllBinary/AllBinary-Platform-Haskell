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
-- package org.allbinary.logic.system.security.licensing
module PartnerIdentifierFileUtil where

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
import qualified InputStream -- java.io.InputStream
import qualified InputStreamReader -- java.io.InputStreamReader
import qualified ResourceUtil -- org.allbinary.data.resource.ResourceUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data PartnerIdentifierFileUtil = PartnerIdentifierFileUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , fILE_NAME :: IORef (String)
    }

instance JavaNull PartnerIdentifierFileUtil where
    javaNull = javaNullRecord "PartnerIdentifierFileUtil"

instance JavaEquals PartnerIdentifierFileUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PartnerIdentifierFileUtil where
    (==) = jrecordEquals

instance JavaObjectClass PartnerIdentifierFileUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PartnerIdentifierFileUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    fILE_NAME <- newIORef ""
    let this = PartnerIdentifierFileUtil header_ logUtil fILE_NAME
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    pure this

initFields_ :: PartnerIdentifierFileUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.fILE_NAME ("partner.txt")
    pure ()

new_ :: IO PartnerIdentifierFileUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PartnerIdentifierFileUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PartnerIdentifierFileUtil)
getInstance = do
        pure (PartnerIdentifierFileUtil.instance_)


get :: (JavaObjectClass this_) => this_ -> IO (String)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: PartnerIdentifierFileUtil))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (String)
get_super object_ = (get_impl (javaCast object_ :: PartnerIdentifierFileUtil))

get_impl :: PartnerIdentifierFileUtil -> IO (String)
get_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET) e)
            pure ((jget ((jio (StringUtil.getInstance))).nULL_STRING))
            ) $ do
            resourceUtil <- (ResourceUtil.getInstance)
            inputStream <- (ResourceUtil.getResourceAsStream resourceUtil (jget (this).fILE_NAME))
            inputStreamReader <- (InputStreamReader.new_1 inputStream)
            let chars = (jnewArray (30) '\0')
            size <- (InputStreamReader.read inputStreamReader chars)
            partnerString <- newIORef ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            when (size > 0) $ do
                assignedValue <- (jnewStringRange chars 0 size)
                jset partnerString (assignedValue)
            Control.Monad.void (InputStreamReader.close inputStreamReader)
            pure ((jget partnerString))


