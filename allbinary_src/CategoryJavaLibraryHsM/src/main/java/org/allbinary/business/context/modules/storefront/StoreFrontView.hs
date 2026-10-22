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
-- package org.allbinary.business.context.modules.storefront
module StoreFrontView where

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
import qualified StoreFrontInterface -- same package or java.lang
import qualified StoreFrontData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasketData -- org.allbinary.business.user.commerce.inventory.basket.BasketData
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data StoreFrontView = StoreFrontView
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , storeFrontInterface :: IORef (StoreFrontInterface.StoreFrontInterface)
    }

instance JavaNull StoreFrontView where
    javaNull = javaNullRecord "StoreFrontView"

instance JavaEquals StoreFrontView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontView where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFrontView
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    storeFrontInterface <- newIORef javaNull
    let this = StoreFrontView header_ logUtil storeFrontInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: StoreFrontView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.storeFrontInterface (javaNull)
    pure ()

new_1 :: StoreFrontInterface.StoreFrontInterface -> IO StoreFrontView
new_1 storeFrontInterface = do
    this <- newRecord_
    init_1 this storeFrontInterface
    pure this

init_1 :: StoreFrontView -> StoreFrontInterface.StoreFrontInterface -> IO ()
init_1 this storeFrontInterface = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Constructing: StoreFrontView for: " ++ (jio (StoreFrontInterface.getName storeFrontInterface))) this (jget (commonStrings).gET_INSTANCE))
        jset (this).storeFrontInterface (storeFrontInterface)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: StoreFrontView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: StoreFrontView)) a1

toXmlNode_impl :: StoreFrontView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        hashMap <- (StoreFrontInterface.toHashMap ((jget (this).storeFrontInterface)))
        storeFrontData <- (StoreFrontData.getInstance)
        Control.Monad.void (HashMap.put hashMap (jget (storeFrontData).cURRENTHOMEHOSTNAME) (jio (StoreFrontInterface.getCurrentHomeHostName ((jget (this).storeFrontInterface)))))
        Control.Monad.void (HashMap.put hashMap (jget (storeFrontData).cURRENTHOMEHOSTNAMEPATH) (jio (StoreFrontInterface.getCurrentHomeHostNamePath ((jget (this).storeFrontInterface)))))
        Control.Monad.void (HashMap.put hashMap (jget (storeFrontData).cURRENTHOSTNAME) (jio (StoreFrontInterface.getCurrentHostName ((jget (this).storeFrontInterface)))))
        Control.Monad.void (HashMap.put hashMap (jget (storeFrontData).cURRENTHOSTNAMEPATH) (jio (StoreFrontInterface.getCurrentHostNamePath ((jget (this).storeFrontInterface)))))
        Control.Monad.void (HashMap.put hashMap (BasketData.nAME) (jio (StoreFrontInterface.getBasketName ((jget (this).storeFrontInterface)))))
        node <- (ModDomHelper.createNameValueNodes_3 document (jget (storeFrontData).nAME) hashMap)
        pure (node)


