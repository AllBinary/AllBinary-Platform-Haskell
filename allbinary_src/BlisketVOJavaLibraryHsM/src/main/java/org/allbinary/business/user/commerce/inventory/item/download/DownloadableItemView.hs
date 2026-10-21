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
-- package org.allbinary.business.user.commerce.inventory.item.download
module DownloadableItemView where

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
import qualified DownloadableItem -- same package or java.lang
import qualified DownloadItemData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Calendar -- java.util.Calendar
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data DownloadableItemView = DownloadableItemView
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , downloadableItem :: IORef (DownloadableItem.DownloadableItem)
    }

instance JavaNull DownloadableItemView where
    javaNull = javaNullRecord "DownloadableItemView"

instance JavaEquals DownloadableItemView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DownloadableItemView where
    (==) = jrecordEquals

instance JavaObjectClass DownloadableItemView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DownloadableItemView
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    downloadableItem <- newIORef javaNull
    let this = DownloadableItemView header_ logUtil commonStrings downloadableItem
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: DownloadableItemView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.downloadableItem (javaNull)
    pure ()

new_1 :: DownloadableItem.DownloadableItem -> IO DownloadableItemView
new_1 downloadableItem = do
    this <- newRecord_
    init_1 this downloadableItem
    pure this

init_1 :: DownloadableItemView -> DownloadableItem.DownloadableItem -> IO ()
init_1 this downloadableItem = do
        initFields_ this
        jset (this).downloadableItem (downloadableItem)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: DownloadableItemView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: DownloadableItemView)) a1

toXmlNode_impl :: DownloadableItemView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pRODUCTSEARCHLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "toXmlNode")
        hashMap <- (DownloadableItem.toHashMap ((jget (this).downloadableItem)))
        let totalTime = (jio (DownloadableItem.getValidTime ((jget (this).downloadableItem))))
        calendar <- (Calendar.getInstance)
        year <- (Calendar.get calendar (Calendar.yEAR))
        month <- (Calendar.get calendar (Calendar.mONTH))
        day <- (Calendar.get calendar (Calendar.dAY_OF_MONTH))
        hour <- (Calendar.get calendar (Calendar.hOUR))
        minute <- (Calendar.get calendar (Calendar.mINUTE))
        second <- (Calendar.get calendar (Calendar.sECOND))
        Control.Monad.void (Calendar.setTimeInMillis calendar ((jio (Calendar.getTimeInMillis calendar)) + totalTime))
        yearDelta <- (Calendar.get calendar (Calendar.yEAR))
        monthDelta <- (Calendar.get calendar (Calendar.mONTH))
        dayDelta <- (Calendar.get calendar (Calendar.dAY_OF_MONTH))
        hourDelta <- (Calendar.get calendar (Calendar.hOUR))
        minuteDelta <- (Calendar.get calendar (Calendar.mINUTE))
        secondDelta <- (Calendar.get calendar (Calendar.sECOND))
        Control.Monad.void (HashMap.put hashMap (DownloadItemData.vALID_TIME_YEARS) (javaToString (yearDelta - year)))
        Control.Monad.void (HashMap.put hashMap (DownloadItemData.vALID_TIME_MONTHS) (javaToString (monthDelta - month)))
        Control.Monad.void (HashMap.put hashMap (DownloadItemData.vALID_TIME_DAYS) (javaToString (dayDelta - day)))
        Control.Monad.void (HashMap.put hashMap (DownloadItemData.vALID_TIME_HOURS) (javaToString (hourDelta - hour)))
        Control.Monad.void (HashMap.put hashMap (DownloadItemData.vALID_TIME_MINUTES) (javaToString (minuteDelta - minute)))
        Control.Monad.void (HashMap.put hashMap (DownloadItemData.vALID_TIME_SECONDS) (javaToString (secondDelta - second)))
        keySet <- (HashMap.keySet hashMap)
        node <- (Document.createElement document (DownloadItemData.nAME))
        stringUtil <- (StringUtil.getInstance)
        nameArray <- (Set.toArray keySet)
        let size = (jlength nameArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let name = (javaCast (jindex nameArray (index)) :: String)
            value <- newIORef ((javaCast (jio (HashMap.get hashMap name)) :: String))
            assignedValue <- (StringUtil.getNonNull stringUtil (jget value))
            jset value (assignedValue)
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document name (jget value))))
        pure (node)


toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: DownloadableItemView))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: DownloadableItemView))

toXmlDoc_impl :: DownloadableItemView -> IO (Document.Document)
toXmlDoc_impl this = do
        pure (javaNull)


view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: DownloadableItemView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: DownloadableItemView))

view_impl :: DownloadableItemView -> IO (String)
view_impl this = do
        pure (javaNull)


