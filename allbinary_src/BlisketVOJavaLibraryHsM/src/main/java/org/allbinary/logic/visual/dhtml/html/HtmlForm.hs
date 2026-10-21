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
-- package org.allbinary.logic.visual.dhtml.html
module HtmlForm where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified HtmlInput -- org.allbinary.logic.visual.dhtml.html.input.HtmlInput
import qualified HtmlTable -- org.allbinary.logic.visual.dhtml.html.table.HtmlTable

data HtmlForm = HtmlForm
    { header_ :: JavaHeader
    , fORMBEGIN :: IORef (String)
    , eND :: IORef (String)
    , fORMEND :: IORef (String)
    , aCTION :: IORef (String)
    , gET :: IORef (String)
    , pOST :: IORef (String)
    , mETHODS :: IORef (JavaArray (String))
    , mETHOD :: IORef (String)
    , method :: IORef (String)
    , action :: IORef (String)
    , inputs :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull HtmlForm where
    javaNull = javaNullRecord "HtmlForm"

instance JavaEquals HtmlForm where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlForm where
    (==) = jrecordEquals

instance JavaObjectClass HtmlForm where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HtmlForm
newRecord_ = do
    header_ <- newJavaHeader
    fORMBEGIN <- newIORef ""
    eND <- newIORef ""
    fORMEND <- newIORef ""
    aCTION <- newIORef ""
    gET <- newIORef ""
    pOST <- newIORef ""
    mETHODS <- newIORef javaNull
    mETHOD <- newIORef ""
    method <- newIORef ""
    action <- newIORef ""
    inputs <- newIORef javaNull
    let this = HtmlForm header_ fORMBEGIN eND fORMEND aCTION gET pOST mETHODS mETHOD method action inputs
    jregisterLevel header_ this
    jregisterMethod header_ "setPost" (\() -> setPost_impl this)
    jregisterMethod header_ "setGet" (\() -> setGet_impl this)
    jregisterMethod header_ "addInput" (\() -> addInput_impl this)
    jregisterMethod header_ "addTable" (\() -> addTable_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: HtmlForm -> IO ()
initFields_ this = do
    jset this.fORMBEGIN ("<form ")
    jset this.eND (">")
    jset this.fORMEND ("</form>")
    jset this.aCTION ("ACTION=\"")
    jset this.gET ("GET\"")
    jset this.pOST ("POST\"")
    jset this.mETHODS ((jarrayFromList [(jget (this).gET), (jget (this).pOST)]))
    jset this.mETHOD ("METHOD=\"")
    jset this.method ("")
    jset this.action (javaNull)
    jset this.inputs (javaNull)
    pure ()

new_1 :: String -> IO HtmlForm
new_1 action = do
    this <- newRecord_
    init_1 this action
    pure this

init_1 :: HtmlForm -> String -> IO ()
init_1 this action = do
        initFields_ this
        jset (this).action (action)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).inputs (assignedValue)
        pure ()


setPost :: (JavaObjectClass this_) => this_ -> IO (())
setPost object_ = jmethod object_ "setPost" (\() -> (setPost_impl (javaCast object_ :: HtmlForm))) ()

setPost_super :: (JavaObjectClass this_) => this_ -> IO (())
setPost_super object_ = (setPost_impl (javaCast object_ :: HtmlForm))

setPost_impl :: HtmlForm -> IO (())
setPost_impl this = do
        jset (this).method ((jget (this).pOST))
        pure ()


setGet :: (JavaObjectClass this_) => this_ -> IO (())
setGet object_ = jmethod object_ "setGet" (\() -> (setGet_impl (javaCast object_ :: HtmlForm))) ()

setGet_super :: (JavaObjectClass this_) => this_ -> IO (())
setGet_super object_ = (setGet_impl (javaCast object_ :: HtmlForm))

setGet_impl :: HtmlForm -> IO (())
setGet_impl this = do
        jset (this).method ((jget (this).gET))
        pure ()


addInput :: (JavaObjectClass this_) => this_ -> HtmlInput.HtmlInput -> IO (())
addInput object_ a1 = jmethod object_ "addInput" (\() -> (addInput_impl (javaCast object_ :: HtmlForm))) () a1

addInput_super :: (JavaObjectClass this_) => this_ -> HtmlInput.HtmlInput -> IO (())
addInput_super object_ a1 = (addInput_impl (javaCast object_ :: HtmlForm)) a1

addInput_impl :: HtmlForm -> HtmlInput.HtmlInput -> IO (())
addInput_impl this htmlInput = do
        Control.Monad.void (BasicArrayList.add ((jget (this).inputs)) htmlInput)
        pure ()


addTable :: (JavaObjectClass this_) => this_ -> HtmlTable.HtmlTable -> IO (())
addTable object_ a1 = jmethod object_ "addTable" (\() -> (addTable_impl (javaCast object_ :: HtmlForm))) () a1

addTable_super :: (JavaObjectClass this_) => this_ -> HtmlTable.HtmlTable -> IO (())
addTable_super object_ a1 = (addTable_impl (javaCast object_ :: HtmlForm)) a1

addTable_impl :: HtmlForm -> HtmlTable.HtmlTable -> IO (())
addTable_impl this htmlTable = do
        Control.Monad.void (BasicArrayList.add ((jget (this).inputs)) htmlTable)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: HtmlForm))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: HtmlForm))

toString_impl :: HtmlForm -> IO (String)
toString_impl this = do
        stringUtil <- (StringUtil.getInstance)
        result <- newIORef ((jget (stringUtil).eMPTY_STRING))
        inputArray <- (BasicArrayList.toArray ((jget (this).inputs)))
        let inputSize = (jlength inputArray)
        jset result ((jget (this).fORMBEGIN))
        jset result (((jget result) ++ javaToString (jget (this).mETHOD)))
        jset result (((jget result) ++ javaToString (jget (this).method)))
        jset result (((jget result) ++ javaToString "\" "))
        jset result (((jget result) ++ javaToString (jget (this).aCTION)))
        jset result (((jget result) ++ javaToString (jget (this).action)))
        jset result (((jget result) ++ javaToString "\" "))
        jset result (((jget result) ++ javaToString (jget (this).eND)))
        forM_ [0 .. inputSize - 1] $ \i -> javaIteration (pure ()) $ do
            jset result (((jget result) ++ javaToString (toString ((jindex inputArray (i))))))
            jset result (((jget result) ++ javaToString " "))
        jset result (((jget result) ++ javaToString (jget (this).fORMEND)))
        pure ((jget result))


