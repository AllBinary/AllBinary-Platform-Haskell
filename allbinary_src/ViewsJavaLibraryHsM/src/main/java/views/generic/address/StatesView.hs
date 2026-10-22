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
-- package views.generic.address
module StatesView where

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
import qualified StreetAddressData -- org.allbinary.business.user.address.StreetAddressData
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified FREEBLISKET_PATH_GLOBALS -- org.allbinary.globals.FREEBLISKET_PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LineReader -- org.allbinary.logic.io.LineReader
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data StatesView = StatesView
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull StatesView where
    javaNull = javaNullRecord "StatesView"

instance JavaEquals StatesView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StatesView where
    (==) = jrecordEquals

instance JavaObjectClass StatesView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StatesView
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = StatesView header_ logUtil commonStrings
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: StatesView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO StatesView
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StatesView -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: StatesView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: StatesView)) a1

toXmlNode_impl :: StatesView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).fAILURE) this "toXmlNode" e)
            pure (javaNull)
            ) $ do
            node <- (Document.createElement document (StreetAddressData.sTATES))
            let statesFile = (javaToString ((jio (URLGLOBALS.getMainPath)) + (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).lINEDATAPATH)) ++ "states.txt")
            lineReader <- (LineReader.new_1 statesFile)
            fix $ \loop -> when (jio (LineReader.hasNext lineReader)) $ javaIteration (loop) $ do
                option <- (LineReader.next lineReader)
                Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes_3 document (StreetAddressData.sTATE) option)))
            pure (node)


