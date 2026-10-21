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
module BasketHelper (module BasketHelper, module TagHelper) where

import TagHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isBasketEmpty, isBasketEmpty_super, isBasketEmpty_impl, logUtil, weblisketSession, storeFrontInterface, propertiesHashMap, pageContext, mAX)
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
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified BasketInterface -- org.allbinary.business.user.commerce.inventory.basket.BasketInterface
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TagHelper

data BasketHelper = BasketHelper
    { header_ :: JavaHeader
    , base :: TagHelper.TagHelper
    , logUtil :: IORef (LogUtil.LogUtil)
    , weblisketSession :: IORef (WeblisketSession.WeblisketSession)
    , storeFrontInterface :: IORef (StoreFrontInterface.StoreFrontInterface)
    , propertiesHashMap :: IORef (HashMap.HashMap)
    , pageContext :: IORef (PageContext.PageContext)
    , mAX :: IORef (Int)
    }

instance JavaNull BasketHelper where
    javaNull = javaNullRecord "BasketHelper"

instance JavaEquals BasketHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasketHelper where
    (==) = jrecordEquals

instance JavaObjectClass BasketHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasketHelper
newRecord_ = do
    base <- TagHelper.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    weblisketSession <- newIORef javaNull
    storeFrontInterface <- newIORef javaNull
    propertiesHashMap <- newIORef javaNull
    pageContext <- newIORef javaNull
    mAX <- newIORef 0
    let this = BasketHelper header_ base logUtil weblisketSession storeFrontInterface propertiesHashMap pageContext mAX
    jregisterLevel header_ this
    jregisterMethod header_ "isBasketEmpty" (\() -> isBasketEmpty_impl this)
    pure this

initFields_ :: BasketHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.weblisketSession (javaNull)
    jset this.storeFrontInterface (javaNull)
    jset this.propertiesHashMap (javaNull)
    jset this.pageContext (javaNull)
    jset this.mAX (200)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO BasketHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: BasketHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        TagHelper.init_ this.base
        initFields_ this
        jset (this).propertiesHashMap (hashMap)
        jset (this).pageContext (pageContext)
        let storeName = (javaCast (jio (HashMap.get ((jget (this).propertiesHashMap)) (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String)
        when (storeName /= javaNull) $ do
            assignedValue <- (StoreFrontFactory.getInstance storeName)
            jset (this).storeFrontInterface (assignedValue)
        assignedValue <- (WeblisketSession.new_2 hashMap pageContext)
        jset (this).weblisketSession (assignedValue)
        pure ()


isBasketEmpty :: (JavaObjectClass this_) => this_ -> IO (Bool)
isBasketEmpty object_ = jmethod object_ "isBasketEmpty" (\() -> (isBasketEmpty_impl (javaCast object_ :: BasketHelper))) ()

isBasketEmpty_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isBasketEmpty_super object_ = (isBasketEmpty_impl (javaCast object_ :: BasketHelper))

isBasketEmpty_impl :: BasketHelper -> IO (Bool)
isBasketEmpty_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "isBasketEmpty()" e)
            pure (True)
            ) $ do
            basket <- (OrderInterface.getBasket ((jio (WeblisketSession.getOrder ((jget (this).weblisketSession))))))
            if ((jio (BasketInterface.intValue ((jio (BasketInterface.getNumberOfItems basket))))) <= 0) then do
                javaReturn (True)
            else do
                javaReturn (False)


