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
-- package views.generic.basket
module BasketView (module BasketView, module HttpStoreComponentView) where

import HttpStoreComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toXmlNode, toXmlNode_super, toXmlNode_impl, addDomNodeInterfaces, addDomNodeInterfaces_super, addDomNodeInterfaces_impl, view, view_super, view_impl, logUtil, request)
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
import qualified Any -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified BasketData -- org.allbinary.business.user.commerce.inventory.basket.BasketData
import qualified BasketInterface -- org.allbinary.business.user.commerce.inventory.basket.BasketInterface
import qualified BasicItemView -- org.allbinary.business.user.commerce.inventory.item.BasicItemView
import qualified ItemInterface -- org.allbinary.business.user.commerce.inventory.item.ItemInterface
import qualified Money -- org.allbinary.business.user.commerce.money.Money
import qualified InventoryEntity -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity
import qualified InventoryEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SearchData -- org.allbinary.logic.control.search.SearchData
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified HttpStoreComponentView -- views.business.context.modules.storefront.HttpStoreComponentView

-- implements DomNodeInterface
data BasketView = BasketView
    { header_ :: JavaHeader
    , base :: HttpStoreComponentView.HttpStoreComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    }

instance JavaNull BasketView where
    javaNull = javaNullRecord "BasketView"

instance JavaEquals BasketView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasketView where
    (==) = jrecordEquals

instance JavaObjectClass BasketView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasketView
newRecord_ = do
    base <- HttpStoreComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    request <- newIORef javaNull
    let this = BasketView header_ base logUtil request
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "addDomNodeInterfaces" (\() -> addDomNodeInterfaces_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: BasketView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.request (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO BasketView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: BasketView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).request ((javaCast (jio (PageContext.getRequest ((jio (HttpStoreComponentView.getPageContext this))))) :: HttpServletRequest.HttpServletRequest))
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: BasketView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: BasketView)) a1

toXmlNode_impl :: BasketView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).xSLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).fAILURE) this "toXmlNode" e)
            javaThrow (e)
            ) $ do
            inventoryEntity <- (InventoryEntityFactory.getInventoryEntityInstance ((jio (InventoryEntityFactory.getInstance))))
            basketInterface <- (WeblisketSession.getBasket ((jio (WeblisketSession.getOrder ((jio (HttpStoreComponentView.getWeblisketSession this)))))))
            basketNode <- (Document.createElement document (BasketData.bASKET))
            itemsAndNumberInBasket <- (BasketInterface.getItems basketInterface)
            numberOfResults <- newIORef (1)
            items <- (HashMap.keySet itemsAndNumberInBasket)
            productArray <- (Set.toArray items)
            let size = (jlength productArray)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                product <- (jnewString (javaCast (jindex productArray (index)) :: String))
                itemInterface <- (InventoryEntity.getItem inventoryEntity product)
                if (itemInterface /= javaNull) then do
                    basicItemView <- (BasicItemView.new_2 itemInterface (jio (BasicArrayListD.new_)))
                    node <- (BasicItemView.toXmlNode basicItemView document)
                    numberInBasket <- (BasketInterface.toString ((jio (BasketInterface.getNumberOf basketInterface product))))
                    Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes_3 document (BasketData.iTEMTOTALINBASKET) numberInBasket)))
                    itemPrice <- (ItemInterface.getPrice itemInterface)
                    itemTotal <- (Money.new_1 itemPrice)
                    Control.Monad.void (Money.multiply itemTotal (jio (BasketInterface.intValue ((jio (BasketInterface.getNumberOf basketInterface product))))))
                    Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes_3 document (BasketData.iTEMTOTAL) (jio (Money.toString itemTotal)))))
                    Control.Monad.void (Node.appendChild basketNode node)
                else do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Product Failed: " ++ product) this "toXmlNode")
                jset numberOfResults ((jget numberOfResults) + 1)
            totalNumberNode <- (Document.createElement document (SearchData.tOTAL_NUMBER_ITEMS))
            totalNumberTextNode <- (Document.createTextNode document (jio (BasketInterface.toString ((jio (BasketInterface.getNumberOfItems basketInterface))))))
            Control.Monad.void (Node.appendChild totalNumberNode totalNumberTextNode)
            totalWeightNode <- (Document.createElement document (BasketData.tOTALWEIGHT))
            totalWeightTextNode <- (Document.createTextNode document (jio (BasketInterface.toString ((jio (BasketInterface.getTotalWeight basketInterface))))))
            Control.Monad.void (Node.appendChild totalWeightNode totalWeightTextNode)
            subTotalNode <- (Document.createElement document (BasketData.sUBTOTAL))
            subTotalTextNode <- (Document.createTextNode document (jio (BasketInterface.toString ((jio (BasketInterface.getSubTotal basketInterface))))))
            Control.Monad.void (Node.appendChild subTotalNode subTotalTextNode)
            Control.Monad.void (Node.appendChild basketNode totalNumberNode)
            Control.Monad.void (Node.appendChild basketNode totalWeightNode)
            Control.Monad.void (Node.appendChild basketNode subTotalNode)
            pure (basketNode)


addDomNodeInterfaces :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces object_ = jmethod object_ "addDomNodeInterfaces" (\() -> (addDomNodeInterfaces_impl (javaCast object_ :: BasketView))) ()

addDomNodeInterfaces_super :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces_super object_ = (addDomNodeInterfaces_impl (javaCast object_ :: BasketView))

addDomNodeInterfaces_impl :: BasketView -> IO (())
addDomNodeInterfaces_impl this = do
        Control.Monad.void (HttpStoreComponentView.addDomNodeInterface this (javaCast this :: DomNodeInterface.DomNodeInterface))
        pure ()


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: BasketView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: BasketView))

view_impl :: BasketView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            Control.Monad.void (BasketView.addDomNodeInterfaces this)
            (HttpStoreComponentView.view_super this.base)


