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
-- package org.allbinary.business.user.password
module Password where

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
import qualified Random -- java.util.Random
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified UserData -- org.allbinary.business.user.UserData
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SuperCrypt -- org.allbinary.logic.control.crypt.SuperCrypt
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data Password = Password
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , password :: IORef (String)
    }

instance JavaNull Password where
    javaNull = javaNullRecord "Password"

instance JavaEquals Password where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Password where
    (==) = jrecordEquals

instance JavaObjectClass Password where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Password
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    password <- newIORef ""
    let this = Password header_ logUtil password
    jregisterLevel header_ this
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "getValidationInfo" (\() -> getValidationInfo_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    pure this

initFields_ :: Password -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.password (javaNull)
    pure ()

new_1 :: String -> IO Password
new_1 password = do
    this <- newRecord_
    init_1 this password
    pure this

init_1 :: Password -> String -> IO ()
init_1 this password = do
        initFields_ this
        jset (this).password (password)
        pure ()


set :: (JavaObjectClass this_) => this_ -> String -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: Password))) () a1

set_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: Password)) a1

set_impl :: Password -> String -> IO (())
set_impl this value = do
        jset (this).password (value)
        pure ()


get :: (JavaObjectClass this_) => this_ -> IO (String)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: Password))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (String)
get_super object_ = (get_impl (javaCast object_ :: Password))

get_impl :: Password -> IO (String)
get_impl this = do
        pure ((jget (this).password))


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: Password))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: Password))

isValid_impl :: Password -> IO (Bool)
isValid_impl this = do
        commonStrings <- (CommonStrings.getInstance)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vALIDATIONERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate form" "Password" (jget (commonStrings).iS_VALID) e)
            pure (False)
            ) $ do
            valid <- newIORef (True)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vALIDATION))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Password: " ++ (jget (this).password)) this (jget (commonStrings).iS_VALID))
            when (Prelude.not (jio (StringValidationUtil.isValidRequired ((jio (StringValidationUtil.getInstance))) (jget (this).password) 6 (jget UserData.mAXLEN)))) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vALIDATION))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Password is invalid" this (jget (commonStrings).iS_VALID))
                jset valid (False)
            pure ((jget valid))


getValidationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
getValidationInfo object_ = jmethod object_ "getValidationInfo" (\() -> (getValidationInfo_impl (javaCast object_ :: Password))) ()

getValidationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
getValidationInfo_super object_ = (getValidationInfo_impl (javaCast object_ :: Password))

getValidationInfo_impl :: Password -> IO (String)
getValidationInfo_impl this = do
    javaCatchReturn $ do
        when (Prelude.not (jio (StringValidationUtil.isValidRequired ((jio (StringValidationUtil.getInstance))) (jget (this).password) 6 (jget UserData.mAXLEN)))) $ do
            javaReturn ("Please enter a Password with more than 6 characters.<br />")
        stringUtil <- (StringUtil.getInstance)
        pure ((jget (stringUtil).eMPTY_STRING))


toVector :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
toVector object_ a1 = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: Password))) () a1

toVector_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ a1 = (toVector_impl (javaCast object_ :: Password)) a1

toVector_impl :: Password -> String -> IO (BasicArrayList.BasicArrayList)
toVector_impl this secret = do
        assignedValue <- (StringUtil.getNonNull ((jio (StringUtil.getInstance))) (jget (this).password))
        jset (this).password (assignedValue)
        random <- (Random.nextInt ((jio (Random.new_))) (jget SuperCrypt.kEYMAX))
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add vector (javaToString (Prelude.fromIntegral (random) :: Int)))
        Control.Monad.void (BasicArrayList.add vector secret)
        Control.Monad.void (BasicArrayList.add vector (jio (SuperCrypt.encrypt ((jio (SuperCrypt.new_1 random))) (jget (this).password))))
        pure (vector)


toHashMap :: (JavaObjectClass this_) => this_ -> String -> IO (HashMap.HashMap)
toHashMap object_ a1 = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: Password))) () a1

toHashMap_super :: (JavaObjectClass this_) => this_ -> String -> IO (HashMap.HashMap)
toHashMap_super object_ a1 = (toHashMap_impl (javaCast object_ :: Password)) a1

toHashMap_impl :: Password -> String -> IO (HashMap.HashMap)
toHashMap_impl this secret = do
        assignedValue <- (StringUtil.getNonNull ((jio (StringUtil.getInstance))) (jget (this).password))
        jset (this).password (assignedValue)
        values <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        random <- (Random.nextInt ((jio (Random.new_))) (jget SuperCrypt.kEYMAX))
        Control.Monad.void (HashMap.put values (jget ((jio (EntryData.getInstance))).eNCRYPTION) (javaToString (Prelude.fromIntegral (random) :: Int)))
        Control.Monad.void (HashMap.put values (UserData.sECRET) secret)
        Control.Monad.void (HashMap.put values (UserData.pASSWORD) (jio (SuperCrypt.encrypt ((jio (SuperCrypt.new_1 random))) (jget (this).password))))
        pure (values)


