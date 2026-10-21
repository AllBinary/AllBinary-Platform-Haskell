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
-- package admin.taghelpers
module StoreFrontHelper (module StoreFrontHelper, module TagHelper) where

import TagHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getCurrentLocation, getCurrentLocation_super, getCurrentLocation_impl, getCurrentHomeLocation, getCurrentHomeLocation_super, getCurrentHomeLocation_impl, storeFrontInterface, currentLocation, currentHomeLocation)
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
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified StoreFront -- org.allbinary.business.context.modules.storefront.StoreFront
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Replace -- org.allbinary.logic.string.regex.replace.Replace
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified TagHelper

data StoreFrontHelper = StoreFrontHelper
    { header_ :: JavaHeader
    , base :: TagHelper.TagHelper
    , storeFrontInterface :: IORef (StoreFrontInterface.StoreFrontInterface)
    , currentLocation :: IORef (String)
    , currentHomeLocation :: IORef (String)
    }

instance JavaNull StoreFrontHelper where
    javaNull = javaNullRecord "StoreFrontHelper"

instance JavaEquals StoreFrontHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontHelper where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StoreFrontHelper
newRecord_ = do
    base <- TagHelper.newRecord_
    let header_ = base.header_
    storeFrontInterface <- newIORef javaNull
    currentLocation <- newIORef ""
    currentHomeLocation <- newIORef ""
    let this = StoreFrontHelper header_ base storeFrontInterface currentLocation currentHomeLocation
    jregisterLevel header_ this
    jregisterMethod header_ "getCurrentLocation" (\() -> getCurrentLocation_impl this)
    jregisterMethod header_ "getCurrentHomeLocation" (\() -> getCurrentHomeLocation_impl this)
    pure this

initFields_ :: StoreFrontHelper -> IO ()
initFields_ this = do
    jset this.storeFrontInterface (javaNull)
    jset this.currentLocation ("")
    jset this.currentHomeLocation ("")
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO StoreFrontHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: StoreFrontHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        TagHelper.init_ this.base
        initFields_ this
        let storeName = (javaCast (jio (HashMap.get hashMap (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String)
        if (storeName /= javaNull) then do
            assignedValue <- (StoreFrontFactory.getInstance storeName)
            jset (this).storeFrontInterface (assignedValue)
            assignedValue <- (Replace.all ((jio (Replace.new_2 (jget ((jio (CommonSeps.getInstance))).sPACE) "%20"))) ((jio (StoreFrontInterface.getCurrentHostName ((jget (this).storeFrontInterface)))) + (jio (StoreFrontInterface.getCurrentHostNamePath ((jget (this).storeFrontInterface))))))
            jset (this).currentLocation (assignedValue)
            assignedValue <- (Replace.all ((jio (Replace.new_2 (jget ((jio (CommonSeps.getInstance))).sPACE) "%20"))) ((jio (StoreFrontInterface.getCurrentHomeHostName ((jget (this).storeFrontInterface)))) + (jio (StoreFrontInterface.getCurrentHomeHostNamePath ((jget (this).storeFrontInterface))))))
            jset (this).currentHomeLocation (assignedValue)
        else do
            stringUtil <- (StringUtil.getInstance)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFront.new_))
            jset (this).storeFrontInterface (assignedValue)
            jset (this).currentLocation ((jget (stringUtil).eMPTY_STRING))
            jset (this).currentHomeLocation ((jget (stringUtil).eMPTY_STRING))
        pure ()


getCurrentLocation :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentLocation object_ = jmethod object_ "getCurrentLocation" (\() -> (getCurrentLocation_impl (javaCast object_ :: StoreFrontHelper))) ()

getCurrentLocation_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentLocation_super object_ = (getCurrentLocation_impl (javaCast object_ :: StoreFrontHelper))

getCurrentLocation_impl :: StoreFrontHelper -> IO (String)
getCurrentLocation_impl this = do
        pure ((jget (this).currentLocation))


getCurrentHomeLocation :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeLocation object_ = jmethod object_ "getCurrentHomeLocation" (\() -> (getCurrentHomeLocation_impl (javaCast object_ :: StoreFrontHelper))) ()

getCurrentHomeLocation_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeLocation_super object_ = (getCurrentHomeLocation_impl (javaCast object_ :: StoreFrontHelper))

getCurrentHomeLocation_impl :: StoreFrontHelper -> IO (String)
getCurrentHomeLocation_impl this = do
        pure ((jget (this).currentHomeLocation))


