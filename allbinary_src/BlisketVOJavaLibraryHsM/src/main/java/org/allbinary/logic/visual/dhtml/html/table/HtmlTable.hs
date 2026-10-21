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
-- package org.allbinary.logic.visual.dhtml.html.table
module HtmlTable (module HtmlTable, module HtmlTag) where

import HtmlTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addRow, addRow_super, addRow_impl, toString, toString_super, toString_impl, eND, sTART, eNDTAG, cLASS, dIRECTION, iD, lANG, uNITS, bORDER, cELLPADDING, cELLSPACING, cOLS, fLOAT, fRAME, rULES, sTYLE, bORDERCOLLAPSE, numberOfColumns, before, border, cellpadding, cellspacing, style, name, after, htmlRowsVector)
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
import qualified HtmlRow -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified HtmlTag -- org.allbinary.logic.visual.dhtml.html.HtmlTag
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings

data HtmlTable = HtmlTable
    { header_ :: JavaHeader
    , base :: HtmlTag.HtmlTag
    , eND :: IORef (String)
    , sTART :: IORef (String)
    , eNDTAG :: IORef (String)
    , cLASS :: IORef (String)
    , dIRECTION :: IORef (String)
    , iD :: IORef (String)
    , lANG :: IORef (String)
    , uNITS :: IORef (String)
    , bORDER :: IORef (String)
    , cELLPADDING :: IORef (String)
    , cELLSPACING :: IORef (String)
    , cOLS :: IORef (String)
    , fLOAT :: IORef (String)
    , fRAME :: IORef (String)
    , rULES :: IORef (String)
    , sTYLE :: IORef (String)
    , bORDERCOLLAPSE :: IORef (String)
    , numberOfColumns :: IORef (Int)
    , before :: IORef (String)
    , border :: IORef (String)
    , cellpadding :: IORef (String)
    , cellspacing :: IORef (String)
    , style :: IORef (String)
    , name :: IORef (String)
    , after :: IORef (String)
    , htmlRowsVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull HtmlTable where
    javaNull = javaNullRecord "HtmlTable"

instance JavaEquals HtmlTable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlTable where
    (==) = jrecordEquals

instance JavaObjectClass HtmlTable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HtmlTable
newRecord_ = do
    base <- HtmlTag.newRecord_
    let header_ = base.header_
    eND <- newIORef ""
    sTART <- newIORef ""
    eNDTAG <- newIORef ""
    cLASS <- newIORef ""
    dIRECTION <- newIORef ""
    iD <- newIORef ""
    lANG <- newIORef ""
    uNITS <- newIORef ""
    bORDER <- newIORef ""
    cELLPADDING <- newIORef ""
    cELLSPACING <- newIORef ""
    cOLS <- newIORef ""
    fLOAT <- newIORef ""
    fRAME <- newIORef ""
    rULES <- newIORef ""
    sTYLE <- newIORef ""
    bORDERCOLLAPSE <- newIORef ""
    numberOfColumns <- newIORef 0
    before <- newIORef ""
    border <- newIORef ""
    cellpadding <- newIORef ""
    cellspacing <- newIORef ""
    style <- newIORef ""
    name <- newIORef ""
    after <- newIORef ""
    htmlRowsVector <- newIORef javaNull
    let this = HtmlTable header_ base eND sTART eNDTAG cLASS dIRECTION iD lANG uNITS bORDER cELLPADDING cELLSPACING cOLS fLOAT fRAME rULES sTYLE bORDERCOLLAPSE numberOfColumns before border cellpadding cellspacing style name after htmlRowsVector
    jregisterLevel header_ this
    jregisterMethod header_ "addRow" (\() -> addRow_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: HtmlTable -> IO ()
initFields_ this = do
    jset this.eND (">")
    jset this.sTART ("<table ")
    jset this.eNDTAG ("</table>")
    jset this.cLASS ("class")
    jset this.dIRECTION ("dir")
    jset this.iD ("id")
    jset this.lANG ("lang")
    jset this.uNITS ("units")
    jset this.bORDER ("border")
    jset this.cELLPADDING ("cellpadding")
    jset this.cELLSPACING ("cellspacing")
    jset this.cOLS ("cols")
    jset this.fLOAT ("float")
    jset this.fRAME ("frame")
    jset this.rULES ("rules")
    jset this.sTYLE ("style")
    jset this.bORDERCOLLAPSE ("border-collapse: collapse")
    jset this.numberOfColumns (0)
    jset this.before (javaNull)
    jset this.border ("")
    jset this.cellpadding (javaNull)
    jset this.cellspacing (javaNull)
    jset this.style ("")
    jset this.name ("")
    jset this.after (javaNull)
    jset this.htmlRowsVector (javaNull)
    pure ()

new_4 :: String -> String -> String -> String -> IO HtmlTable
new_4 before cellpadding cellspacing after = do
    this <- newRecord_
    init_4 this before cellpadding cellspacing after
    pure this

init_4 :: HtmlTable -> String -> String -> String -> String -> IO ()
init_4 this before cellpadding cellspacing after = do
        HtmlTag.init_ this.base
        initFields_ this
        jset (this).before (before)
        jset (this).cellpadding (cellpadding)
        jset (this).cellspacing (cellspacing)
        jset (this).after (after)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).htmlRowsVector (assignedValue)
        Control.Monad.void (HtmlTag.addAttribute this (jget (this).bORDER) (jget ((jio (CommonPhoneStrings.getInstance))).zERO))
        Control.Monad.void (HtmlTag.addAttribute this (jget (this).cELLPADDING) (jget (this).cellpadding))
        Control.Monad.void (HtmlTag.addAttribute this (jget (this).cELLSPACING) (jget (this).cellspacing))
        Control.Monad.void (HtmlTag.addAttribute this (jget (this).sTYLE) (jget (this).bORDERCOLLAPSE))
        pure ()


addRow :: (JavaObjectClass this_) => this_ -> HtmlRow.HtmlRow -> IO (())
addRow object_ a1 = jmethod object_ "addRow" (\() -> (addRow_impl (javaCast object_ :: HtmlTable))) () a1

addRow_super :: (JavaObjectClass this_) => this_ -> HtmlRow.HtmlRow -> IO (())
addRow_super object_ a1 = (addRow_impl (javaCast object_ :: HtmlTable)) a1

addRow_impl :: HtmlTable -> HtmlRow.HtmlRow -> IO (())
addRow_impl this htmlRow = do
        when ((jget (this).numberOfColumns) < (jio (HtmlRow.getNumberOfColumns htmlRow))) $ do
            assignedValue <- (jio (HtmlRow.getNumberOfColumns htmlRow))
        jset (this).numberOfColumns (assignedValue)
        Control.Monad.void (BasicArrayList.add ((jget (this).htmlRowsVector)) htmlRow)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: HtmlTable))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: HtmlTable))

toString_impl :: HtmlTable -> IO (String)
toString_impl this = do
        stringUtil <- (StringUtil.getInstance)
        result <- newIORef ((jget (stringUtil).eMPTY_STRING))
        attributeKeys <- (HashMap.toArray ((jio (HashMap.keySet ((jget (this).base.otherAttributes))))))
        jset result ((jget (this).before))
        jset result (((jget result) ++ javaToString (jget (this).sTART)))
        jset result (((jget result) ++ javaToString " "))
        forM_ [0 .. (jlength attributeKeys) - 1] $ \i -> javaIteration (pure ()) $ do
            let key = (javaCast (jindex attributeKeys (i)) :: String)
            let value = (javaCast (jio (HashMap.get ((jget this.base.otherAttributes)) key)) :: String)
            when ((value /= javaNull) && ((Prelude.fromEnum (Prelude.compare value (jget (stringUtil).eMPTY_STRING)) - 1) /= 0)) $ do
                jset result (((jget result) ++ javaToString key))
                jset result (((jget result) ++ javaToString "=\""))
                jset result (((jget result) ++ javaToString value))
                jset result (((jget result) ++ javaToString "\" "))
        jset result (((jget result) ++ javaToString (jget (this).eND)))
        size <- (BasicArrayList.size ((jget (this).htmlRowsVector)))
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            jset result (((jget result) ++ javaToString (Any.toString ((jio (BasicArrayList.get ((jget (this).htmlRowsVector)) i))))))
            jset result (((jget result) ++ javaToString " "))
        jset result (((jget result) ++ javaToString (jget (this).eNDTAG)))
        jset result (((jget result) ++ javaToString (jget (this).after)))
        pure ((jget result))


