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
-- package org.allbinary.business.user.username
module UserName where

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
import qualified HashMap -- java.util.HashMap
import qualified UserData -- org.allbinary.business.user.UserData
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data UserName = UserName
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , userName :: IORef (String)
    }

instance JavaNull UserName where
    javaNull = javaNullRecord "UserName"

instance JavaEquals UserName where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserName where
    (==) = jrecordEquals

instance JavaObjectClass UserName where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UserName
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    userName <- newIORef ""
    let this = UserName header_ logUtil userName
    jregisterLevel header_ this
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    pure this

initFields_ :: UserName -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.userName (javaNull)
    pure ()


getInstance :: IO (UserName)
getInstance = do
        pure (UserName.instance_)

new_ :: IO UserName
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UserName -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()

new_1 :: HashMap.HashMap -> IO UserName
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: UserName -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        initFields_ this
        jset (this).userName ((javaCast (jio (HashMap.get hashMap (UserData.uSERNAME))) :: String))
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: UserName))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: UserName))

isValid_impl :: UserName -> IO (Bool)
isValid_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate form" this "isUserNameValid()" e)
            pure (False)
            ) $ do
            (UserName.isValid this (jget (this).userName))


get :: (JavaObjectClass this_) => this_ -> IO (String)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: UserName))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (String)
get_super object_ = (get_impl (javaCast object_ :: UserName))

get_impl :: UserName -> IO (String)
get_impl this = do
        pure ((jget (this).userName))


-- Java overload of isValid with a different parameter count: give it a different name
isValid :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isValid object_ a1 = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: UserName))) () a1

isValid_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isValid_super object_ a1 = (isValid_impl (javaCast object_ :: UserName)) a1

isValid_impl :: UserName -> String -> IO (Bool)
isValid_impl this aUserName = do
        commonStrings <- (CommonStrings.getInstance)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate form" this (jget (commonStrings).iS_VALID) e)
            pure (False)
            ) $ do
            booleanFactory <- (BooleanFactory.getInstance)
            valid <- newIORef ((jget (booleanFactory).tRUE))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vALIDATION))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("UserName: " ++ aUserName) this (jget (commonStrings).iS_VALID))
            when (Prelude.not (jio (StringValidationUtil.isValidRequired ((jio (StringValidationUtil.getInstance))) aUserName 5 (jget UserData.mAXLEN)))) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vALIDATION))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "UserName is invalid" this (jget (commonStrings).iS_VALID))
                jset valid ((jget (booleanFactory).fALSE))
            pure ((jget valid))


getValidationInfo :: String -> IO (String)
getValidationInfo aUserName = do
    javaCatchReturn $ do
        when (Prelude.not (jio (StringValidationUtil.isValidRequired ((jio (StringValidationUtil.getInstance))) aUserName 5 (jget UserData.mAXLEN)))) $ do
            javaReturn ("Please enter a User Name with more than 5 characters.<br/>")
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


