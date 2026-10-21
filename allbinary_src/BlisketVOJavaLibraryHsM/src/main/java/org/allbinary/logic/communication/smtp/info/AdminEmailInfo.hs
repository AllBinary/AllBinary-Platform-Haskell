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
-- package org.allbinary.logic.communication.smtp.info
module AdminEmailInfo (module AdminEmailInfo, module BasicEmailInfo) where

import BasicEmailInfo hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, logUtil)
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
import qualified ContextConfigurationInterface -- org.allbinary.business.context.configuration.ContextConfigurationInterface
import qualified AdminConfiguration -- org.allbinary.business.user.modules.admin.configuration.AdminConfiguration
import qualified AdminConfigurationInterface -- org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified EmailServerConfigurationInterface -- org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicEmailInfo

data AdminEmailInfo = AdminEmailInfo
    { header_ :: JavaHeader
    , base :: BasicEmailInfo.BasicEmailInfo
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull AdminEmailInfo where
    javaNull = javaNullRecord "AdminEmailInfo"

instance JavaEquals AdminEmailInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdminEmailInfo where
    (==) = jrecordEquals

instance JavaObjectClass AdminEmailInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AdminEmailInfo
newRecord_ = do
    base <- BasicEmailInfo.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = AdminEmailInfo header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: AdminEmailInfo -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_2 :: String -> String -> IO AdminEmailInfo
new_2 subject textBody = do
    this <- newRecord_
    init_2 this subject textBody
    pure this

init_2 :: AdminEmailInfo -> String -> String -> IO ()
init_2 this subject textBody = do
        BasicEmailInfo.init_2 this.base (subject) (textBody)
        initFields_ this
        pure () -- super(...) is in the record above
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (commonStrings).sTART) this (jget (commonStrings).cONSTRUCTOR))
        Control.Monad.void (AdminEmailInfo.init this)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AdminEmailInfo))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: AdminEmailInfo))

init_impl :: AdminEmailInfo -> IO (())
init_impl this = do
        let adminConfigurationInterface = (javaCast (jio (AdminConfiguration.new_)) :: AdminConfigurationInterface.AdminConfigurationInterface)
        contextConfigurationInterface <- (AdminConfigurationInterface.getContextConfigurationInterface adminConfigurationInterface)
        emailServerConfigurationInterface <- (ContextConfigurationInterface.getEmailServerConfigurationInterface contextConfigurationInterface)
        Control.Monad.void (BasicEmailInfo.setEmailServerConfigurationInterface this emailServerConfigurationInterface)
        pure ()


