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
-- package org.allbinary.logic.communication.http.request
module RequestParams where

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
import qualified RequestData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified Map -- java.util.Map
import qualified Set -- java.util.Set
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

data RequestParams = RequestParams
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , map :: IORef (Map.Map)
    , kEY :: IORef (String)
    , vALUE :: IORef (String)
    }

instance JavaNull RequestParams where
    javaNull = javaNullRecord "RequestParams"

instance JavaEquals RequestParams where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RequestParams where
    (==) = jrecordEquals

instance JavaObjectClass RequestParams where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RequestParams
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    map <- newIORef javaNull
    kEY <- newIORef ""
    vALUE <- newIORef ""
    let this = RequestParams header_ logUtil commonStrings map kEY vALUE
    jregisterLevel header_ this
    jregisterMethod header_ "setMap" (\() -> setMap_impl this)
    jregisterMethod header_ "getMap" (\() -> getMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    pure this

initFields_ :: RequestParams -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.map (javaNull)
    jset this.kEY ("Key: ")
    jset this.vALUE (" Value: ")
    pure ()

new_ :: IO RequestParams
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RequestParams -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "New RequestParams Size: 0" this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()

new_1 :: HttpServletRequest.HttpServletRequest -> IO RequestParams
new_1 request = do
    this <- newRecord_
    init_1 this request
    pure this

init_1 :: RequestParams -> HttpServletRequest.HttpServletRequest -> IO ()
init_1 this request = do
        initFields_ this
        assignedValue <- (HttpServletRequest.getParameterMap request)
        jset (this).map (assignedValue)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("RequestParams Size: " ++ javaToString (jio (Map.size ((jio (Map.keySet ((jio (RequestParams.getMap this))))))))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: PageContext.PageContext -> IO RequestParams
new_1 pageContext = do
    this <- newRecord_
    init_1 this pageContext
    pure this

init_1 :: RequestParams -> PageContext.PageContext -> IO ()
init_1 this pageContext = do
        initFields_ this
        assignedValue <- (PageContext.getParameterMap ((jio (PageContext.getRequest pageContext))))
        jset (this).map (assignedValue)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Request Params Size: " ++ javaToString (jio (Map.size ((jio (Map.keySet ((jio (RequestParams.getMap this))))))))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()


setMap :: (JavaObjectClass this_) => this_ -> Map.Map -> IO (())
setMap object_ a1 = jmethod object_ "setMap" (\() -> (setMap_impl (javaCast object_ :: RequestParams))) () a1

setMap_super :: (JavaObjectClass this_) => this_ -> Map.Map -> IO (())
setMap_super object_ a1 = (setMap_impl (javaCast object_ :: RequestParams)) a1

setMap_impl :: RequestParams -> Map.Map -> IO (())
setMap_impl this map = do
        jset (this).map (map)
        pure ()


getMap :: (JavaObjectClass this_) => this_ -> IO (Map.Map)
getMap object_ = jmethod object_ "getMap" (\() -> (getMap_impl (javaCast object_ :: RequestParams))) ()

getMap_super :: (JavaObjectClass this_) => this_ -> IO (Map.Map)
getMap_super object_ = (getMap_impl (javaCast object_ :: RequestParams))

getMap_impl :: RequestParams -> IO (Map.Map)
getMap_impl this = do
        pure ((jget (this).map))


toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: RequestParams))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: RequestParams)) a1

toXmlNode_impl :: RequestParams -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "toXmlNode(document)" e)
            pure (javaNull)
            ) $ do
            node <- (Document.createElement document (RequestData.rEQUEST))
            stringBuffer <- (StringMaker.new_)
            keys <- (Map.keySet ((jget (this).map)))
            keyArray <- (Set.toArray keys)
            let size = (jlength keyArray)
            forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
                let key = (javaCast (jindex keyArray (i)) :: String)
                let values = (javaCast (jio (Map.get ((jget (this).map)) key)) :: JavaArray (String))
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).kEY))
                Control.Monad.void (StringMaker.append stringBuffer key)
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).vALUE))
                Control.Monad.void (StringMaker.append stringBuffer (jindex values (0)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "toXmlNode(document)")
                Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document (RequestData.pARAMETER) (jio (jnewString key)) (jio (jnewString (jindex values (0)))))))
            pure (node)


-- throws Exception
toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: RequestParams))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: RequestParams))

toHashMap_impl :: RequestParams -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        keys <- (Map.keySet ((jget (this).map)))
        keyArray <- (Set.toArray keys)
        let size = (jlength keyArray)
        stringBuffer <- (StringMaker.new_)
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let key = (javaCast (jindex keyArray (i)) :: String)
            let values = (javaCast (jio (Map.get ((jget (this).map)) key)) :: JavaArray (String))
            Control.Monad.void (HashMap.put hashMap (jio (jnewString key)) (jio (jnewString (jindex values (0)))))
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer "RequestParams: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (Map.toString ((jget (this).map)))))
        Control.Monad.void (StringMaker.append stringBuffer "\ntoHashMap: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (HashMap.toString hashMap)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "toHashMap()")
        pure (hashMap)


