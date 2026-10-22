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
-- package org.allbinary.logic.control.search
module SearchParams where

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
import qualified SearchData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified ToDomHelper -- org.allbinary.data.tree.dom.ToDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

data SearchParams = SearchParams
    { header_ :: JavaHeader
    , columnsAndSearchValues :: IORef (HashMap.HashMap)
    , order :: IORef (String)
    , sortBy :: IORef (String)
    , listLength :: IORef (String)
    , startPage :: IORef (String)
    , endPage :: IORef (String)
    }

instance JavaNull SearchParams where
    javaNull = javaNullRecord "SearchParams"

instance JavaEquals SearchParams where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SearchParams where
    (==) = jrecordEquals

instance JavaObjectClass SearchParams where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SearchParams
newRecord_ = do
    header_ <- newJavaHeader
    columnsAndSearchValues <- newIORef javaNull
    order <- newIORef ""
    sortBy <- newIORef ""
    listLength <- newIORef ""
    startPage <- newIORef ""
    endPage <- newIORef ""
    let this = SearchParams header_ columnsAndSearchValues order sortBy listLength startPage endPage
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "setOrder" (\() -> setOrder_impl this)
    jregisterMethod header_ "setSortBy" (\() -> setSortBy_impl this)
    jregisterMethod header_ "setLength" (\() -> setLength_impl this)
    jregisterMethod header_ "setStartPage" (\() -> setStartPage_impl this)
    jregisterMethod header_ "setEndPage" (\() -> setEndPage_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getOrder" (\() -> getOrder_impl this)
    jregisterMethod header_ "getSortBy" (\() -> getSortBy_impl this)
    jregisterMethod header_ "getLength" (\() -> getLength_impl this)
    jregisterMethod header_ "getLengthInt" (\() -> getLengthInt_impl this)
    jregisterMethod header_ "getStartPage" (\() -> getStartPage_impl this)
    jregisterMethod header_ "getEndPage" (\() -> getEndPage_impl this)
    jregisterMethod header_ "getStartPageInt" (\() -> getStartPageInt_impl this)
    jregisterMethod header_ "getEndPageInt" (\() -> getEndPageInt_impl this)
    jregisterMethod header_ "getParamsNode" (\() -> getParamsNode_impl this)
    jregisterMethod header_ "getFieldsNode" (\() -> getFieldsNode_impl this)
    jregisterMethod header_ "getOrderNode" (\() -> getOrderNode_impl this)
    jregisterMethod header_ "getSortByNode" (\() -> getSortByNode_impl this)
    jregisterMethod header_ "getLengthNode" (\() -> getLengthNode_impl this)
    pure this

initFields_ :: SearchParams -> IO ()
initFields_ this = do
    jset this.columnsAndSearchValues (javaNull)
    jset this.order ("")
    jset this.sortBy ("")
    jset this.listLength ("")
    jset this.startPage ("")
    jset this.endPage ("")
    pure ()

new_1 :: HttpServletRequest.HttpServletRequest -> IO SearchParams
new_1 request = do
    this <- newRecord_
    init_1 this request
    pure this

init_1 :: SearchParams -> HttpServletRequest.HttpServletRequest -> IO ()
init_1 this request = do
        initFields_ this
        assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        jset (this).columnsAndSearchValues (assignedValue)
        Control.Monad.void (SearchParams.setLength this (jio (HttpServletRequest.getParameter request (SearchData.lENGTH))))
        Control.Monad.void (SearchParams.setOrder this (jio (HttpServletRequest.getParameter request (SearchData.oRDER))))
        page <- (HttpServletRequest.getParameter request (SearchData.pAGE))
        Control.Monad.void (SearchParams.setStartPage this page)
        Control.Monad.void (SearchParams.setEndPage this page)
        Control.Monad.void (SearchParams.setSortBy this (jio (HttpServletRequest.getParameter request (SearchData.sORTBY))))
        index <- newIORef (0)
        columnName <- newIORef =<< (HttpServletRequest.getParameter request (javaToString SearchData.cOLUMNNAME ++ "[0]"))
        columnValue <- newIORef =<< (HttpServletRequest.getParameter request (javaToString SearchData.cOLUMNVALUE ++ "[0]"))
        fix $ \loop -> when ((jget columnName) /= javaNull) $ javaIteration (loop) $ do
            Control.Monad.void (SearchParams.add this (jget columnName) (jget columnValue))
            jset index ((jget index) + 1)
            assignedValue <- (HttpServletRequest.getParameter request (((javaToString SearchData.cOLUMNNAME ++ "[") ++ javaToString (jget index)) ++ "]"))
            jset columnName (assignedValue)
            assignedValue <- (HttpServletRequest.getParameter request (((javaToString SearchData.cOLUMNVALUE ++ "[") ++ javaToString (jget index)) ++ "]"))
            jset columnValue (assignedValue)
        pure ()


add :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
add object_ a1 a2 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: SearchParams))) () a1 a2

add_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
add_super object_ a1 a2 = (add_impl (javaCast object_ :: SearchParams)) a1 a2

add_impl :: SearchParams -> String -> String -> IO (())
add_impl this column value = do
        Control.Monad.void (HashMap.put ((jget (this).columnsAndSearchValues)) column value)
        pure ()


setOrder :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOrder object_ a1 = jmethod object_ "setOrder" (\() -> (setOrder_impl (javaCast object_ :: SearchParams))) () a1

setOrder_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOrder_super object_ a1 = (setOrder_impl (javaCast object_ :: SearchParams)) a1

setOrder_impl :: SearchParams -> String -> IO (())
setOrder_impl this value = do
        jset (this).order (value)
        pure ()


setSortBy :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSortBy object_ a1 = jmethod object_ "setSortBy" (\() -> (setSortBy_impl (javaCast object_ :: SearchParams))) () a1

setSortBy_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSortBy_super object_ a1 = (setSortBy_impl (javaCast object_ :: SearchParams)) a1

setSortBy_impl :: SearchParams -> String -> IO (())
setSortBy_impl this value = do
        jset (this).sortBy (value)
        pure ()


setLength :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLength object_ a1 = jmethod object_ "setLength" (\() -> (setLength_impl (javaCast object_ :: SearchParams))) () a1

setLength_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLength_super object_ a1 = (setLength_impl (javaCast object_ :: SearchParams)) a1

setLength_impl :: SearchParams -> String -> IO (())
setLength_impl this value = do
        jset (this).listLength (value)
        pure ()


setStartPage :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStartPage object_ a1 = jmethod object_ "setStartPage" (\() -> (setStartPage_impl (javaCast object_ :: SearchParams))) () a1

setStartPage_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStartPage_super object_ a1 = (setStartPage_impl (javaCast object_ :: SearchParams)) a1

setStartPage_impl :: SearchParams -> String -> IO (())
setStartPage_impl this value = do
        jset (this).startPage (value)
        pure ()


setEndPage :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEndPage object_ a1 = jmethod object_ "setEndPage" (\() -> (setEndPage_impl (javaCast object_ :: SearchParams))) () a1

setEndPage_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEndPage_super object_ a1 = (setEndPage_impl (javaCast object_ :: SearchParams)) a1

setEndPage_impl :: SearchParams -> String -> IO (())
setEndPage_impl this value = do
        jset (this).endPage (value)
        pure ()


get :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: SearchParams))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
get_super object_ = (get_impl (javaCast object_ :: SearchParams))

get_impl :: SearchParams -> IO (HashMap.HashMap)
get_impl this = do
        pure ((jget (this).columnsAndSearchValues))


getOrder :: (JavaObjectClass this_) => this_ -> IO (String)
getOrder object_ = jmethod object_ "getOrder" (\() -> (getOrder_impl (javaCast object_ :: SearchParams))) ()

getOrder_super :: (JavaObjectClass this_) => this_ -> IO (String)
getOrder_super object_ = (getOrder_impl (javaCast object_ :: SearchParams))

getOrder_impl :: SearchParams -> IO (String)
getOrder_impl this = do
        pure ((jget (this).order))


getSortBy :: (JavaObjectClass this_) => this_ -> IO (String)
getSortBy object_ = jmethod object_ "getSortBy" (\() -> (getSortBy_impl (javaCast object_ :: SearchParams))) ()

getSortBy_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSortBy_super object_ = (getSortBy_impl (javaCast object_ :: SearchParams))

getSortBy_impl :: SearchParams -> IO (String)
getSortBy_impl this = do
        pure ((jget (this).sortBy))


getLength :: (JavaObjectClass this_) => this_ -> IO (String)
getLength object_ = jmethod object_ "getLength" (\() -> (getLength_impl (javaCast object_ :: SearchParams))) ()

getLength_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLength_super object_ = (getLength_impl (javaCast object_ :: SearchParams))

getLength_impl :: SearchParams -> IO (String)
getLength_impl this = do
        pure ((jget (this).listLength))


getLengthInt :: (JavaObjectClass this_) => this_ -> IO (Int)
getLengthInt object_ = jmethod object_ "getLengthInt" (\() -> (getLengthInt_impl (javaCast object_ :: SearchParams))) ()

getLengthInt_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLengthInt_super object_ = (getLengthInt_impl (javaCast object_ :: SearchParams))

getLengthInt_impl :: SearchParams -> IO (Int)
getLengthInt_impl this = do
    javaCatchReturn $ do
        if ((jget (this).listLength) /= javaNull) then do
            javaReturn ((Prelude.fromIntegral ((jget (this).listLength)) :: Int))
        else do
            pure ((Prelude.fromIntegral (0) :: Int))


getStartPage :: (JavaObjectClass this_) => this_ -> IO (String)
getStartPage object_ = jmethod object_ "getStartPage" (\() -> (getStartPage_impl (javaCast object_ :: SearchParams))) ()

getStartPage_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStartPage_super object_ = (getStartPage_impl (javaCast object_ :: SearchParams))

getStartPage_impl :: SearchParams -> IO (String)
getStartPage_impl this = do
        pure ((jget (this).startPage))


getEndPage :: (JavaObjectClass this_) => this_ -> IO (String)
getEndPage object_ = jmethod object_ "getEndPage" (\() -> (getEndPage_impl (javaCast object_ :: SearchParams))) ()

getEndPage_super :: (JavaObjectClass this_) => this_ -> IO (String)
getEndPage_super object_ = (getEndPage_impl (javaCast object_ :: SearchParams))

getEndPage_impl :: SearchParams -> IO (String)
getEndPage_impl this = do
        pure ((jget (this).endPage))


getStartPageInt :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartPageInt object_ = jmethod object_ "getStartPageInt" (\() -> (getStartPageInt_impl (javaCast object_ :: SearchParams))) ()

getStartPageInt_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartPageInt_super object_ = (getStartPageInt_impl (javaCast object_ :: SearchParams))

getStartPageInt_impl :: SearchParams -> IO (Int)
getStartPageInt_impl this = do
    javaCatchReturn $ do
        if ((jget (this).startPage) /= javaNull) then do
            javaReturn ((Prelude.fromIntegral ((jget (this).startPage)) :: Int))
        else do
            pure ((Prelude.fromIntegral (0) :: Int))


getEndPageInt :: (JavaObjectClass this_) => this_ -> IO (Int)
getEndPageInt object_ = jmethod object_ "getEndPageInt" (\() -> (getEndPageInt_impl (javaCast object_ :: SearchParams))) ()

getEndPageInt_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getEndPageInt_super object_ = (getEndPageInt_impl (javaCast object_ :: SearchParams))

getEndPageInt_impl :: SearchParams -> IO (Int)
getEndPageInt_impl this = do
    javaCatchReturn $ do
        if ((jget (this).endPage) /= javaNull) then do
            javaReturn ((Prelude.fromIntegral ((jget (this).endPage)) :: Int))
        else do
            pure ((Prelude.fromIntegral (0) :: Int))


-- throws Exception
getParamsNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
getParamsNode object_ a1 = jmethod object_ "getParamsNode" (\() -> (getParamsNode_impl (javaCast object_ :: SearchParams))) () a1

getParamsNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
getParamsNode_super object_ a1 = (getParamsNode_impl (javaCast object_ :: SearchParams)) a1

getParamsNode_impl :: SearchParams -> Document.Document -> IO (Node.Node)
getParamsNode_impl this document = do
        paramsNode <- (ModDomHelper.createNameValueNodes_3 document (SearchData.pARAMS) (SearchData.pARAMS))
        Control.Monad.void (Node.appendChild paramsNode (jio (SearchParams.getFieldsNode this document)))
        Control.Monad.void (Node.appendChild paramsNode (jio (SearchParams.getOrderNode this document)))
        Control.Monad.void (Node.appendChild paramsNode (jio (SearchParams.getSortByNode this document)))
        Control.Monad.void (Node.appendChild paramsNode (jio (SearchParams.getLengthNode this document)))
        pure (paramsNode)


-- throws Exception
getFieldsNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
getFieldsNode object_ a1 = jmethod object_ "getFieldsNode" (\() -> (getFieldsNode_impl (javaCast object_ :: SearchParams))) () a1

getFieldsNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
getFieldsNode_super object_ a1 = (getFieldsNode_impl (javaCast object_ :: SearchParams)) a1

getFieldsNode_impl :: SearchParams -> Document.Document -> IO (Node.Node)
getFieldsNode_impl this document = do
        fieldsNode <- (ModDomHelper.createNameValueNodes_3 document (SearchData.fIELDS) (javaToString (Prelude.fromIntegral ((jio (HashMap.size ((jget (this).columnsAndSearchValues))))) :: Int)))
        set <- (HashMap.keySet ((jget (this).columnsAndSearchValues)))
        searchValueArray <- (Set.toArray set)
        let size = (jlength searchValueArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let key = (javaCast (jindex searchValueArray (index)) :: String)
            let searchValue = (javaCast (jio (HashMap.get ((jget (this).columnsAndSearchValues)) key)) :: String)
            Control.Monad.void (Node.appendChild fieldsNode (jio (ModDomHelper.createNameValueNodes document (SearchData.fIELD) key (jio (ToDomHelper.convertNull searchValue)))))
        pure (fieldsNode)


-- throws Exception
getOrderNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
getOrderNode object_ a1 = jmethod object_ "getOrderNode" (\() -> (getOrderNode_impl (javaCast object_ :: SearchParams))) () a1

getOrderNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
getOrderNode_super object_ a1 = (getOrderNode_impl (javaCast object_ :: SearchParams)) a1

getOrderNode_impl :: SearchParams -> Document.Document -> IO (Node.Node)
getOrderNode_impl this document = do
        (ModDomHelper.createNameValueNodes_3 document (SearchData.oRDER) (jio (ToDomHelper.convertNull (jio (SearchParams.getOrder this)))))


-- throws Exception
getSortByNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
getSortByNode object_ a1 = jmethod object_ "getSortByNode" (\() -> (getSortByNode_impl (javaCast object_ :: SearchParams))) () a1

getSortByNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
getSortByNode_super object_ a1 = (getSortByNode_impl (javaCast object_ :: SearchParams)) a1

getSortByNode_impl :: SearchParams -> Document.Document -> IO (Node.Node)
getSortByNode_impl this document = do
        (ModDomHelper.createNameValueNodes_3 document (SearchData.sORTBY) (jio (ToDomHelper.convertNull (jio (SearchParams.getSortBy this)))))


-- throws Exception
getLengthNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
getLengthNode object_ a1 = jmethod object_ "getLengthNode" (\() -> (getLengthNode_impl (javaCast object_ :: SearchParams))) () a1

getLengthNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
getLengthNode_super object_ a1 = (getLengthNode_impl (javaCast object_ :: SearchParams)) a1

getLengthNode_impl :: SearchParams -> Document.Document -> IO (Node.Node)
getLengthNode_impl this document = do
        (ModDomHelper.createNameValueNodes_3 document (SearchData.lENGTH) (jio (ToDomHelper.convertNull (jio (SearchParams.getLength this)))))


