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
module MobileClientInformation (module MobileClientInformation, module AbeClientInformation) where

import AbeClientInformation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toHashtable, toHashtable_super, toHashtable_impl, dESC, aNDROID_DESC)
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
import qualified PartnerIdentifierFileUtil -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified RegistrationConfiguration -- org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified AbeClientInformation

data MobileClientInformation = MobileClientInformation
    { header_ :: JavaHeader
    , base :: AbeClientInformation.AbeClientInformation
    }

instance JavaNull MobileClientInformation where
    javaNull = javaNullRecord "MobileClientInformation"

instance JavaEquals MobileClientInformation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MobileClientInformation where
    (==) = jrecordEquals

instance JavaObjectClass MobileClientInformation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

dESC = "Mobile"

aNDROID_DESC = ("Android" ++ javaToString MobileClientInformation.dESC)

newRecord_ :: IO MobileClientInformation
newRecord_ = do
    base <- AbeClientInformation.newRecord_
    let header_ = base.header_
    let this = MobileClientInformation header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "toHashtable" (\() -> toHashtable_impl this)
    pure this

initFields_ :: MobileClientInformation -> IO ()
initFields_ this = do
    pure ()

new_4 :: String -> String -> String -> String -> IO MobileClientInformation
new_4 name version specialName shortName = do
    this <- newRecord_
    init_4 this name version specialName shortName
    pure this

init_4 :: MobileClientInformation -> String -> String -> String -> String -> IO ()
init_4 this name version specialName shortName = do
        AbeClientInformation.init_4 this.base (name) (version) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) specialName))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) (jio (PartnerIdentifierFileUtil.get ((jio (PartnerIdentifierFileUtil.getInstance)))))))))) (shortName)
        initFields_ this
        pure () -- super(...) is in the record above
        string <- (AbeClientInformation.getSpecialName this)
        let number = (Prelude.drop ((Prelude.length string) - 1) string)
        when ((jio (Integer.getInteger number)) == javaNull) $ do
            Control.Monad.void (AbeClientInformation.setHardSale this False)
        commonStrings <- (CommonStrings.getInstance)
        if (jio (AbeClientInformation.isHardSale this)) then do
            Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) "Use Hard Coded Selling" this (jget (commonStrings).cONSTRUCTOR))
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) "Don't Use Hard Coded Selling" this (jget (commonStrings).cONSTRUCTOR))
        pure ()


toHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
toHashtable object_ = jmethod object_ "toHashtable" (\() -> (toHashtable_impl (javaCast object_ :: MobileClientInformation))) ()

toHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
toHashtable_super object_ = (toHashtable_impl (javaCast object_ :: MobileClientInformation))

toHashtable_impl :: MobileClientInformation -> IO (ABHashtable.ABHashtable)
toHashtable_impl this = do
        hashtable <- (AbeClientInformation.toHashtable_super this.base)
        registrationConfiguration <- (RegistrationConfiguration.getInstance)
        Control.Monad.void (ABHashtable.put hashtable (jget (registrationConfiguration).nAME) (jio (RegistrationConfiguration.getRegistrationCode registrationConfiguration)))
        pure (hashtable)


