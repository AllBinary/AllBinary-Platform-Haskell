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
module StoreEmailInfo (module StoreEmailInfo, module BasicEmailInfo) where

import BasicEmailInfo hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, logUtil, storeFrontInterface)
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
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified EmailServerConfigurationInterface -- org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicEmailInfo

data StoreEmailInfo = StoreEmailInfo
    { header_ :: JavaHeader
    , base :: BasicEmailInfo.BasicEmailInfo
    , logUtil :: IORef (LogUtil.LogUtil)
    , storeFrontInterface :: IORef (StoreFrontInterface.StoreFrontInterface)
    }

instance JavaNull StoreEmailInfo where
    javaNull = javaNullRecord "StoreEmailInfo"

instance JavaEquals StoreEmailInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreEmailInfo where
    (==) = jrecordEquals

instance JavaObjectClass StoreEmailInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StoreEmailInfo
newRecord_ = do
    base <- BasicEmailInfo.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    storeFrontInterface <- newIORef javaNull
    let this = StoreEmailInfo header_ base logUtil storeFrontInterface
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: StoreEmailInfo -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.storeFrontInterface (javaNull)
    pure ()

new_3 :: StoreFrontInterface.StoreFrontInterface -> String -> String -> IO StoreEmailInfo
new_3 storeFrontInterface subject textBody = do
    this <- newRecord_
    init_3 this storeFrontInterface subject textBody
    pure this

init_3 :: StoreEmailInfo -> StoreFrontInterface.StoreFrontInterface -> String -> String -> IO ()
init_3 this storeFrontInterface subject textBody = do
        BasicEmailInfo.init_2 this.base (subject) (textBody)
        initFields_ this
        pure () -- super(...) is in the record above
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (commonStrings).sTART) this (jget (commonStrings).cONSTRUCTOR))
        jset (this).storeFrontInterface (storeFrontInterface)
        Control.Monad.void (StoreEmailInfo.init this)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: StoreEmailInfo))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: StoreEmailInfo))

init_impl :: StoreEmailInfo -> IO (())
init_impl this = do
        contextConfigurationInterface <- (StoreFrontInterface.getContextConfigurationInterface ((jget (this).storeFrontInterface)))
        emailServerConfigurationInterface <- (ContextConfigurationInterface.getEmailServerConfigurationInterface contextConfigurationInterface)
        Control.Monad.void (BasicEmailInfo.setEmailServerConfigurationInterface this emailServerConfigurationInterface)
        pure ()


