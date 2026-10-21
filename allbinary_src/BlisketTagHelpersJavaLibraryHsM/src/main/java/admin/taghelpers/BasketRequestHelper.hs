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
module BasketRequestHelper (module BasketRequestHelper, module TagHelper) where

import TagHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFormData, getFormData_super, getFormData_impl, addItemToBasket, addItemToBasket_super, addItemToBasket_impl, removeItemFromBasket, removeItemFromBasket_super, removeItemFromBasket_impl, adjustBasket, adjustBasket_super, adjustBasket_impl, logUtil, basicItemData, weblisketSession, storeFrontInterface, propertiesHashMap, pageContext, request, id, num, mAX)
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
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified StoreFront -- org.allbinary.business.context.modules.storefront.StoreFront
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified BasketData -- org.allbinary.business.user.commerce.inventory.basket.BasketData
import qualified BasketInterface -- org.allbinary.business.user.commerce.inventory.basket.BasketInterface
import qualified BasicItemData -- org.allbinary.business.user.commerce.inventory.item.BasicItemData
import qualified InventoryEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TagHelper

data BasketRequestHelper = BasketRequestHelper
    { header_ :: JavaHeader
    , base :: TagHelper.TagHelper
    , logUtil :: IORef (LogUtil.LogUtil)
    , basicItemData :: IORef (BasicItemData.BasicItemData)
    , weblisketSession :: IORef (WeblisketSession.WeblisketSession)
    , storeFrontInterface :: IORef (StoreFrontInterface.StoreFrontInterface)
    , propertiesHashMap :: IORef (HashMap.HashMap)
    , pageContext :: IORef (PageContext.PageContext)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , id :: IORef (String)
    , num :: IORef (String)
    , mAX :: IORef (Int)
    }

instance JavaNull BasketRequestHelper where
    javaNull = javaNullRecord "BasketRequestHelper"

instance JavaEquals BasketRequestHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasketRequestHelper where
    (==) = jrecordEquals

instance JavaObjectClass BasketRequestHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasketRequestHelper
newRecord_ = do
    base <- TagHelper.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    basicItemData <- newIORef javaNull
    weblisketSession <- newIORef javaNull
    storeFrontInterface <- newIORef javaNull
    propertiesHashMap <- newIORef javaNull
    pageContext <- newIORef javaNull
    request <- newIORef javaNull
    id <- newIORef ""
    num <- newIORef ""
    mAX <- newIORef 0
    let this = BasketRequestHelper header_ base logUtil basicItemData weblisketSession storeFrontInterface propertiesHashMap pageContext request id num mAX
    jregisterLevel header_ this
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "addItemToBasket" (\() -> addItemToBasket_impl this)
    jregisterMethod header_ "removeItemFromBasket" (\() -> removeItemFromBasket_impl this)
    jregisterMethod header_ "adjustBasket" (\() -> adjustBasket_impl this)
    pure this

initFields_ :: BasketRequestHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.basicItemData =<< (BasicItemData.getInstance)
    jset this.weblisketSession (javaNull)
    jset this.storeFrontInterface (javaNull)
    jset this.propertiesHashMap (javaNull)
    jset this.pageContext (javaNull)
    jset this.request (javaNull)
    jset this.id ("")
    jset this.num ("")
    jset this.mAX (200)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO BasketRequestHelper
new_2 propertiesHashMap pageContext = do
    this <- newRecord_
    init_2 this propertiesHashMap pageContext
    pure this

init_2 :: BasketRequestHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this propertiesHashMap pageContext = do
        TagHelper.init_ this.base
        initFields_ this
        jset (this).propertiesHashMap (propertiesHashMap)
        jset (this).pageContext (pageContext)
        jset (this).request ((javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest))
        let storeName = (javaCast (jio (HashMap.get propertiesHashMap (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String)
        if (storeName /= javaNull) then do
            assignedValue <- (StoreFrontFactory.getInstance storeName)
            jset (this).storeFrontInterface (assignedValue)
        else do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFront.new_))
            jset (this).storeFrontInterface (assignedValue)
        assignedValue <- (WeblisketSession.new_2 propertiesHashMap pageContext)
        jset (this).weblisketSession (assignedValue)
        Control.Monad.void (BasketRequestHelper.getFormData this)
        pure ()


getFormData :: (JavaObjectClass this_) => this_ -> IO (())
getFormData object_ = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: BasketRequestHelper))) ()

getFormData_super :: (JavaObjectClass this_) => this_ -> IO (())
getFormData_super object_ = (getFormData_impl (javaCast object_ :: BasketRequestHelper))

getFormData_impl :: BasketRequestHelper -> IO (())
getFormData_impl this = do
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (jget ((jget this.basicItemData)).iD))
        jset (this).id (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (BasketData.iTEMTOTALINBASKET))
        jset (this).num (assignedValue)
        pure ()


addItemToBasket :: (JavaObjectClass this_) => this_ -> IO (Bool)
addItemToBasket object_ = jmethod object_ "addItemToBasket" (\() -> (addItemToBasket_impl (javaCast object_ :: BasketRequestHelper))) ()

addItemToBasket_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
addItemToBasket_super object_ = (addItemToBasket_impl (javaCast object_ :: BasketRequestHelper))

addItemToBasket_impl :: BasketRequestHelper -> IO (Bool)
addItemToBasket_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "addItemToBasket()" e)
            pure (False)
            ) $ do
            when (((jget (this).id) /= javaNull) && ((jget (this).num) /= javaNull)) $ do
                basket <- (OrderInterface.getBasket ((jio (WeblisketSession.getOrder ((jget (this).weblisketSession))))))
                when ((jio (InventoryEntity.getItem ((jio (InventoryEntityFactory.getInventoryEntityInstance ((jio (InventoryEntityFactory.getInstance)))))) (jget (this).id))) == javaNull) $ do
                    javaReturn (False)
                Control.Monad.void (BasketInterface.addItem basket (jget (this).id) (jget this.num))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Successfully added item to Basket" this "addItemToBasket()")
            pure (True)


removeItemFromBasket :: (JavaObjectClass this_) => this_ -> IO (Bool)
removeItemFromBasket object_ = jmethod object_ "removeItemFromBasket" (\() -> (removeItemFromBasket_impl (javaCast object_ :: BasketRequestHelper))) ()

removeItemFromBasket_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
removeItemFromBasket_super object_ = (removeItemFromBasket_impl (javaCast object_ :: BasketRequestHelper))

removeItemFromBasket_impl :: BasketRequestHelper -> IO (Bool)
removeItemFromBasket_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "removeItemFromBasket()" e)
            pure (False)
            ) $ do
            when ((jget (this).id) /= javaNull) $ do
                basket <- (OrderInterface.getBasket ((jio (WeblisketSession.getOrder ((jget (this).weblisketSession))))))
                Control.Monad.void (BasketInterface.removeItem basket (jget (this).id))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Successfully removed item from Basket" this "removeItemFromBasket()")
            pure (True)


adjustBasket :: (JavaObjectClass this_) => this_ -> IO (Bool)
adjustBasket object_ = jmethod object_ "adjustBasket" (\() -> (adjustBasket_impl (javaCast object_ :: BasketRequestHelper))) ()

adjustBasket_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
adjustBasket_super object_ = (adjustBasket_impl (javaCast object_ :: BasketRequestHelper))

adjustBasket_impl :: BasketRequestHelper -> IO (Bool)
adjustBasket_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "adjustBasket()" e)
            pure (False)
            ) $ do
            basket <- (OrderInterface.getBasket ((jio (WeblisketSession.getOrder ((jget (this).weblisketSession))))))
            when (((jget (this).id) /= javaNull) && ((jget (this).num) /= javaNull)) $ do
                Control.Monad.void (jio (BasketInterface.adjustItem basket (jget (this).id) (jget (this).num)))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Successfull Adjusted Basket" this "adjustBasket()")
            pure (True)


