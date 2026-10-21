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
module HtmlRow (module HtmlRow, module HtmlTag) where

import HtmlTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addCell, addCell_super, addCell_impl, getNumberOfColumns, getNumberOfColumns_super, getNumberOfColumns_impl, toString, toString_super, toString_impl, eND, sTART, eNDTAG, numberOfColumns, before, after, htmlCellsVector)
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
import qualified HtmlCell -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified HtmlTag -- org.allbinary.logic.visual.dhtml.html.HtmlTag

data HtmlRow = HtmlRow
    { header_ :: JavaHeader
    , base :: HtmlTag.HtmlTag
    , eND :: IORef (String)
    , sTART :: IORef (String)
    , eNDTAG :: IORef (String)
    , numberOfColumns :: IORef (Int)
    , before :: IORef (String)
    , after :: IORef (String)
    , htmlCellsVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull HtmlRow where
    javaNull = javaNullRecord "HtmlRow"

instance JavaEquals HtmlRow where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlRow where
    (==) = jrecordEquals

instance JavaObjectClass HtmlRow where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HtmlRow
newRecord_ = do
    base <- HtmlTag.newRecord_
    let header_ = base.header_
    eND <- newIORef ""
    sTART <- newIORef ""
    eNDTAG <- newIORef ""
    numberOfColumns <- newIORef 0
    before <- newIORef ""
    after <- newIORef ""
    htmlCellsVector <- newIORef javaNull
    let this = HtmlRow header_ base eND sTART eNDTAG numberOfColumns before after htmlCellsVector
    jregisterLevel header_ this
    jregisterMethod header_ "addCell" (\() -> addCell_impl this)
    jregisterMethod header_ "getNumberOfColumns" (\() -> getNumberOfColumns_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: HtmlRow -> IO ()
initFields_ this = do
    jset this.eND (">")
    jset this.sTART ("<tr ")
    jset this.eNDTAG ("</tr>")
    jset this.numberOfColumns (0)
    jset this.before (javaNull)
    jset this.after (javaNull)
    jset this.htmlCellsVector (javaNull)
    pure ()

new_2 :: String -> String -> IO HtmlRow
new_2 before after = do
    this <- newRecord_
    init_2 this before after
    pure this

init_2 :: HtmlRow -> String -> String -> IO ()
init_2 this before after = do
        HtmlTag.init_ this.base
        initFields_ this
        assignedValue <- (jnewString before)
        jset (this).before (assignedValue)
        assignedValue <- (jnewString after)
        jset (this).after (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).htmlCellsVector (assignedValue)
        pure ()


addCell :: (JavaObjectClass this_) => this_ -> HtmlCell.HtmlCell -> IO (())
addCell object_ a1 = jmethod object_ "addCell" (\() -> (addCell_impl (javaCast object_ :: HtmlRow))) () a1

addCell_super :: (JavaObjectClass this_) => this_ -> HtmlCell.HtmlCell -> IO (())
addCell_super object_ a1 = (addCell_impl (javaCast object_ :: HtmlRow)) a1

addCell_impl :: HtmlRow -> HtmlCell.HtmlCell -> IO (())
addCell_impl this htmlCell = do
        Control.Monad.void (BasicArrayList.add ((jget (this).htmlCellsVector)) htmlCell)
        jset (this).numberOfColumns ((jget (this).numberOfColumns) + 1)
        pure ()


getNumberOfColumns :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfColumns object_ = jmethod object_ "getNumberOfColumns" (\() -> (getNumberOfColumns_impl (javaCast object_ :: HtmlRow))) ()

getNumberOfColumns_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfColumns_super object_ = (getNumberOfColumns_impl (javaCast object_ :: HtmlRow))

getNumberOfColumns_impl :: HtmlRow -> IO (Int)
getNumberOfColumns_impl this = do
        pure ((jget (this).numberOfColumns))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: HtmlRow))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: HtmlRow))

toString_impl :: HtmlRow -> IO (String)
toString_impl this = do
        stringUtil <- (StringUtil.getInstance)
        result <- newIORef ((jget (stringUtil).eMPTY_STRING))
        attributeKeys <- (toArray ((jio (keySet ((jget (this).base.otherAttributes))))))
        let attributeSize = (jlength attributeKeys)
        cellSize <- (BasicArrayList.size ((jget (this).htmlCellsVector)))
        jset result ((jget (this).before))
        jset result (((jget result) ++ javaToString (jget (this).sTART)))
        jset result (((jget result) ++ javaToString " "))
        forM_ [0 .. attributeSize - 1] $ \i -> javaIteration (pure ()) $ do
            let key = (javaCast (jindex attributeKeys (i)) :: String)
            let value = (javaCast (jio (get ((jget this.base.otherAttributes)) key)) :: String)
            when ((value /= javaNull) && ((Prelude.fromEnum (Prelude.compare value (jget (stringUtil).eMPTY_STRING)) - 1) /= 0)) $ do
                jset result (((jget result) ++ javaToString key))
                jset result (((jget result) ++ javaToString "=\""))
                jset result (((jget result) ++ javaToString value))
                jset result (((jget result) ++ javaToString "\" "))
        jset result (((jget result) ++ javaToString (jget (this).eND)))
        forM_ [0 .. cellSize - 1] $ \i -> javaIteration (pure ()) $ do
            jset result (((jget result) ++ javaToString (BasicArrayList.toString ((jio (BasicArrayList.get ((jget (this).htmlCellsVector)) i))))))
            jset result (((jget result) ++ javaToString " "))
        jset result (((jget result) ++ javaToString (jget (this).eNDTAG)))
        jset result (((jget result) ++ javaToString (jget (this).after)))
        pure ((jget result))


