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
-- package views.generic.inventory
module InventoryView (module InventoryView, module HttpStoreComponentView) where

import HttpStoreComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toXmlNode, toXmlNode_super, toXmlNode_impl, addDomNodeInterfaces, addDomNodeInterfaces_super, addDomNodeInterfaces_impl, view, view_super, view_impl, logUtil)
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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified InventoryData -- org.allbinary.business.user.commerce.inventory.InventoryData
import qualified BasicItemView -- org.allbinary.business.user.commerce.inventory.item.BasicItemView
import qualified ItemInterface -- org.allbinary.business.user.commerce.inventory.item.ItemInterface
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
data InventoryView = InventoryView
    { header_ :: JavaHeader
    , base :: HttpStoreComponentView.HttpStoreComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull InventoryView where
    javaNull = javaNullRecord "InventoryView"

instance JavaEquals InventoryView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InventoryView where
    (==) = jrecordEquals

instance JavaObjectClass InventoryView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO InventoryView
newRecord_ = do
    base <- HttpStoreComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = InventoryView header_ base logUtil
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "addDomNodeInterfaces" (\() -> addDomNodeInterfaces_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: InventoryView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO InventoryView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: InventoryView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: InventoryView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: InventoryView)) a1

toXmlNode_impl :: InventoryView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).fAILURE) this "toXmlNode" e)
            javaThrow (e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Starting" this "toXmlNode")
            inventoryEntityInterface <- (InventoryEntityFactory.getInventoryEntityInstance ((jio (InventoryEntityFactory.getInstance))))
            inventoryNode <- (Document.createElement document (InventoryData.iNVENTORY))
            itemVector <- (InventoryEntity.getItems inventoryEntityInterface (javaCast (jio (StoreFrontFactory.getInstance (jio (TransformInfoInterface.getStoreName ((jio (HttpStoreComponentView.getTransformInfoInterface this)))))))))
            Control.Monad.void (Node.appendChild inventoryNode (jio (ModDomHelper.createNameValueNodes_3 document (SearchData.tOTAL_NUMBER_ITEMS_ON_THIS_PAGE) (javaToString (Prelude.fromIntegral ((jio (BasicArrayList.size itemVector))) :: Int)))))
            size <- (BasicArrayList.size itemVector)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let itemInterface = (javaCast (jio (BasicArrayList.get itemVector index)) :: ItemInterface.ItemInterface)
                if (itemInterface /= javaNull) then do
                    node <- (BasicItemView.toXmlNode ((jio (BasicItemView.new_2 itemInterface (jio (BasicArrayListD.new_))))) document)
                    Control.Monad.void (Node.appendChild inventoryNode node)
                else do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Inventory" this "toXmlNode")
            pure (inventoryNode)


addDomNodeInterfaces :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces object_ = jmethod object_ "addDomNodeInterfaces" (\() -> (addDomNodeInterfaces_impl (javaCast object_ :: InventoryView))) ()

addDomNodeInterfaces_super :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces_super object_ = (addDomNodeInterfaces_impl (javaCast object_ :: InventoryView))

addDomNodeInterfaces_impl :: InventoryView -> IO (())
addDomNodeInterfaces_impl this = do
        Control.Monad.void (HttpStoreComponentView.addDomNodeInterface this (javaCast this :: DomNodeInterface.DomNodeInterface))
        pure ()


view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: InventoryView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: InventoryView))

view_impl :: InventoryView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to view Inventory"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view()" e)
            pure (error)
            ) $ do
            Control.Monad.void (InventoryView.addDomNodeInterfaces this)
            (HttpStoreComponentView.view_super this.base)


