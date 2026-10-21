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
-- package org.allbinary.logic.visual.dhtml.html.select
module HtmlSelect (module HtmlSelect, module HtmlTag) where

import HtmlTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addOption, addOption_super, addOption_impl, addOptions, addOptions_super, addOptions_impl, setSelected, setSelected_super, setSelected_impl, isMultiple, isMultiple_super, isMultiple_impl, setMultiple, setMultiple_super, setMultiple_impl, getOptions, getOptions_super, getOptions_impl, toString, toString_super, toString_impl, eND, sTARTSELECT, eNDSELECT, sIZE, nAME, sTARTOPTION, sELETED, eNDOPTION, before, name, after, size, selected, options, multiple, isMultipleSelect)
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
import qualified HashMap -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LineReader -- org.allbinary.logic.io.LineReader
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified HtmlTag -- org.allbinary.logic.visual.dhtml.html.HtmlTag

data HtmlSelect = HtmlSelect
    { header_ :: JavaHeader
    , base :: HtmlTag.HtmlTag
    , eND :: IORef (String)
    , sTARTSELECT :: IORef (String)
    , eNDSELECT :: IORef (String)
    , sIZE :: IORef (String)
    , nAME :: IORef (String)
    , sTARTOPTION :: IORef (String)
    , sELETED :: IORef (String)
    , eNDOPTION :: IORef (String)
    , before :: IORef (String)
    , name :: IORef (String)
    , after :: IORef (String)
    , size :: IORef (String)
    , selected :: IORef (String)
    , options :: IORef (BasicArrayList.BasicArrayList)
    , multiple :: IORef (String)
    , isMultipleSelect :: IORef (Bool)
    }

instance JavaNull HtmlSelect where
    javaNull = javaNullRecord "HtmlSelect"

instance JavaEquals HtmlSelect where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlSelect where
    (==) = jrecordEquals

instance JavaObjectClass HtmlSelect where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HtmlSelect
newRecord_ = do
    base <- HtmlTag.newRecord_
    let header_ = base.header_
    eND <- newIORef ""
    sTARTSELECT <- newIORef ""
    eNDSELECT <- newIORef ""
    sIZE <- newIORef ""
    nAME <- newIORef ""
    sTARTOPTION <- newIORef ""
    sELETED <- newIORef ""
    eNDOPTION <- newIORef ""
    before <- newIORef ""
    name <- newIORef ""
    after <- newIORef ""
    size <- newIORef ""
    selected <- newIORef ""
    options <- newIORef javaNull
    multiple <- newIORef ""
    isMultipleSelect <- newIORef False
    let this = HtmlSelect header_ base eND sTARTSELECT eNDSELECT sIZE nAME sTARTOPTION sELETED eNDOPTION before name after size selected options multiple isMultipleSelect
    jregisterLevel header_ this
    jregisterMethod header_ "addOption" (\() -> addOption_impl this)
    jregisterMethod header_ "addOptions" (\() -> addOptions_impl this)
    jregisterMethod header_ "setSelected" (\() -> setSelected_impl this)
    jregisterMethod header_ "isMultiple" (\() -> isMultiple_impl this)
    jregisterMethod header_ "setMultiple" (\() -> setMultiple_impl this)
    jregisterMethod header_ "getOptions" (\() -> getOptions_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: HtmlSelect -> IO ()
initFields_ this = do
    jset this.eND (">")
    jset this.sTARTSELECT ("<SELECT ")
    jset this.eNDSELECT ("</SELECT>")
    jset this.sIZE ("SIZE=\"")
    jset this.nAME ("NAME=\"")
    jset this.sTARTOPTION ("<OPTION")
    jset this.sELETED ("SELECTED")
    jset this.eNDOPTION ("</OPTION>")
    jset this.before (javaNull)
    jset this.name (javaNull)
    jset this.after (javaNull)
    jset this.size (javaNull)
    jset this.selected ("")
    jset this.options (javaNull)
    jset this.multiple ("multiple")
    jset this.isMultipleSelect (False)
    pure ()

new_4 :: String -> String -> String -> String -> IO HtmlSelect
new_4 before size name after = do
    this <- newRecord_
    init_4 this before size name after
    pure this

init_4 :: HtmlSelect -> String -> String -> String -> String -> IO ()
init_4 this before size name after = do
        HtmlTag.init_ this.base
        initFields_ this
        jset (this).before (before)
        jset (this).size (size)
        jset (this).name (name)
        jset (this).after (after)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).options (assignedValue)
        pure ()


addOption :: (JavaObjectClass this_) => this_ -> String -> IO (())
addOption object_ a1 = jmethod object_ "addOption" (\() -> (addOption_impl (javaCast object_ :: HtmlSelect))) () a1

addOption_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
addOption_super object_ a1 = (addOption_impl (javaCast object_ :: HtmlSelect)) a1

addOption_impl :: HtmlSelect -> String -> IO (())
addOption_impl this key = do
        Control.Monad.void (BasicArrayList.add ((jget (this).options)) key)
        pure ()


addOptions :: (JavaObjectClass this_) => this_ -> String -> IO (())
addOptions object_ a1 = jmethod object_ "addOptions" (\() -> (addOptions_impl (javaCast object_ :: HtmlSelect))) () a1

addOptions_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
addOptions_super object_ a1 = (addOptions_impl (javaCast object_ :: HtmlSelect)) a1

addOptions_impl :: HtmlSelect -> String -> IO (())
addOptions_impl this fileName = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (HtmlSelect.addOption this "Error")
            ) $ do
            lineReader <- (LineReader.new_1 fileName)
            fix $ \loop -> when (jio (LineReader.hasNext lineReader)) $ javaIteration (loop) $ do
                option <- (LineReader.next lineReader)
                Control.Monad.void (HtmlSelect.addOption this option)
        pure ()


setSelected :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSelected object_ a1 = jmethod object_ "setSelected" (\() -> (setSelected_impl (javaCast object_ :: HtmlSelect))) () a1

setSelected_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSelected_super object_ a1 = (setSelected_impl (javaCast object_ :: HtmlSelect)) a1

setSelected_impl :: HtmlSelect -> String -> IO (())
setSelected_impl this selected = do
        jset (this).selected (selected)
        pure ()


isMultiple :: (JavaObjectClass this_) => this_ -> IO (Bool)
isMultiple object_ = jmethod object_ "isMultiple" (\() -> (isMultiple_impl (javaCast object_ :: HtmlSelect))) ()

isMultiple_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isMultiple_super object_ = (isMultiple_impl (javaCast object_ :: HtmlSelect))

isMultiple_impl :: HtmlSelect -> IO (Bool)
isMultiple_impl this = do
        pure ((jget (this).isMultipleSelect))


setMultiple :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setMultiple object_ a1 = jmethod object_ "setMultiple" (\() -> (setMultiple_impl (javaCast object_ :: HtmlSelect))) () a1

setMultiple_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setMultiple_super object_ a1 = (setMultiple_impl (javaCast object_ :: HtmlSelect)) a1

setMultiple_impl :: HtmlSelect -> Bool -> IO (())
setMultiple_impl this value = do
        jset (this).isMultipleSelect (value)
        pure ()


getOptions :: (JavaObjectClass this_) => this_ -> IO (String)
getOptions object_ = jmethod object_ "getOptions" (\() -> (getOptions_impl (javaCast object_ :: HtmlSelect))) ()

getOptions_super :: (JavaObjectClass this_) => this_ -> IO (String)
getOptions_super object_ = (getOptions_impl (javaCast object_ :: HtmlSelect))

getOptions_impl :: HtmlSelect -> IO (String)
getOptions_impl this = do
        stringUtil <- (StringUtil.getInstance)
        result <- newIORef ((jget (stringUtil).eMPTY_STRING))
        optionsArray <- (BasicArrayList.toArray ((jget (this).options)))
        let optionsSize = (jlength optionsArray)
        forM_ [0 .. optionsSize - 1] $ \i -> javaIteration (pure ()) $ do
            let value = (javaCast (jindex optionsArray (i)) :: String)
            when ((value /= javaNull) && ((Prelude.fromEnum (Prelude.compare value (jget (stringUtil).eMPTY_STRING)) - 1) /= 0)) $ do
                jset result (((jget result) ++ javaToString (jget (this).sTARTOPTION)))
                jset result (((jget result) ++ javaToString (jget (this).eND)))
                jset result (((jget result) ++ javaToString value))
                jset result (((jget result) ++ javaToString (jget (this).eNDOPTION)))
        pure ((jget result))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: HtmlSelect))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: HtmlSelect))

toString_impl :: HtmlSelect -> IO (String)
toString_impl this = do
        stringUtil <- (StringUtil.getInstance)
        result <- newIORef ((jget (stringUtil).eMPTY_STRING))
        attributeKeys <- (HashMap.toArray ((jio (HashMap.keySet ((jget (this).base.otherAttributes))))))
        let attributeSize = (jlength attributeKeys)
        jset result ((jget (this).before))
        jset result (((jget result) ++ javaToString (jget (this).sTARTSELECT)))
        jset result (((jget result) ++ javaToString (jget (this).nAME)))
        jset result (((jget result) ++ javaToString (jget (this).name)))
        jset result (((jget result) ++ javaToString "\" "))
        jset result (((jget result) ++ javaToString (jget (this).sIZE)))
        jset result (((jget result) ++ javaToString (jget (this).size)))
        jset result (((jget result) ++ javaToString "\" "))
        forM_ [0 .. attributeSize - 1] $ \i -> javaIteration (pure ()) $ do
            let key = (javaCast (jindex attributeKeys (i)) :: String)
            let value = (javaCast (jio (HashMap.get ((jget this.base.otherAttributes)) key)) :: String)
            when ((value /= javaNull) && ((Prelude.fromEnum (Prelude.compare value (jget (stringUtil).eMPTY_STRING)) - 1) /= 0)) $ do
                jset result (((jget result) ++ javaToString key))
                jset result (((jget result) ++ javaToString "=\""))
                jset result (((jget result) ++ javaToString value))
                jset result (((jget result) ++ javaToString "\" "))
        when (jio (HtmlSelect.isMultiple this)) $ do
            jset result (((jget result) ++ javaToString ((" " ++ (jget (this).multiple)) ++ " ")))
        jset result (((jget result) ++ javaToString (jget (this).eND)))
        jset result (((jget result) ++ javaToString (HtmlSelect.getOptions this)))
        jset result (((jget result) ++ javaToString (jget (this).eNDSELECT)))
        jset result (((jget result) ++ javaToString (jget (this).after)))
        pure ((jget result))


