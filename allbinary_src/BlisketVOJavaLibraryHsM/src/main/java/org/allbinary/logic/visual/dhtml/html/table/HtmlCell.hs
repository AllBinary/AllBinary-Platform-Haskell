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
module HtmlCell (module HtmlCell, module HtmlTag) where

import HtmlTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addText, addText_super, addText_impl, toString, toString_super, toString_impl, eND, sTART, eNDTAG, hEIGHT, wIDTH, height, width, before, body, after)
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
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified HtmlTag -- org.allbinary.logic.visual.dhtml.html.HtmlTag

data HtmlCell = HtmlCell
    { header_ :: JavaHeader
    , base :: HtmlTag.HtmlTag
    , eND :: IORef (String)
    , sTART :: IORef (String)
    , eNDTAG :: IORef (String)
    , hEIGHT :: IORef (String)
    , wIDTH :: IORef (String)
    , height :: IORef (String)
    , width :: IORef (String)
    , before :: IORef (String)
    , body :: IORef (String)
    , after :: IORef (String)
    }

instance JavaNull HtmlCell where
    javaNull = javaNullRecord "HtmlCell"

instance JavaEquals HtmlCell where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlCell where
    (==) = jrecordEquals

instance JavaObjectClass HtmlCell where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HtmlCell
newRecord_ = do
    base <- HtmlTag.newRecord_
    let header_ = base.header_
    eND <- newIORef ""
    sTART <- newIORef ""
    eNDTAG <- newIORef ""
    hEIGHT <- newIORef ""
    wIDTH <- newIORef ""
    height <- newIORef ""
    width <- newIORef ""
    before <- newIORef ""
    body <- newIORef ""
    after <- newIORef ""
    let this = HtmlCell header_ base eND sTART eNDTAG hEIGHT wIDTH height width before body after
    jregisterLevel header_ this
    jregisterMethod header_ "addText" (\() -> addText_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: HtmlCell -> IO ()
initFields_ this = do
    jset this.eND (">")
    jset this.sTART ("<td ")
    jset this.eNDTAG ("</td>")
    jset this.hEIGHT ("height")
    jset this.wIDTH ("width")
    jset this.height (javaNull)
    jset this.width (javaNull)
    jset this.before (javaNull)
    jset this.body ("")
    jset this.after (javaNull)
    pure ()

new_4 :: String -> String -> String -> String -> IO HtmlCell
new_4 before width height after = do
    this <- newRecord_
    init_4 this before width height after
    pure this

init_4 :: HtmlCell -> String -> String -> String -> String -> IO ()
init_4 this before width height after = do
        HtmlTag.init_ this.base
        initFields_ this
        assignedValue <- (jnewString before)
        jset (this).before (assignedValue)
        assignedValue <- (jnewString after)
        jset (this).after (assignedValue)
        assignedValue <- (jnewString height)
        jset (this).height (assignedValue)
        assignedValue <- (jnewString width)
        jset (this).width (assignedValue)
        Control.Monad.void (HtmlTag.addAttribute this (jget (this).hEIGHT) (jget (this).height))
        Control.Monad.void (HtmlTag.addAttribute this (jget (this).wIDTH) (jget (this).width))
        pure ()


addText :: (JavaObjectClass this_) => this_ -> String -> IO (())
addText object_ a1 = jmethod object_ "addText" (\() -> (addText_impl (javaCast object_ :: HtmlCell))) () a1

addText_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
addText_super object_ a1 = (addText_impl (javaCast object_ :: HtmlCell)) a1

addText_impl :: HtmlCell -> String -> IO (())
addText_impl this body = do
        jset (this).body (body)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: HtmlCell))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: HtmlCell))

toString_impl :: HtmlCell -> IO (String)
toString_impl this = do
        stringUtil <- (StringUtil.getInstance)
        result <- newIORef ((jget (stringUtil).eMPTY_STRING))
        attributeKeys <- (HashMap.toArray ((jio (HashMap.keySet ((jget (this).base.otherAttributes))))))
        let attributeSize = (jlength attributeKeys)
        jset result ((jget (this).before))
        jset result (((jget result) ++ javaToString (jget (this).sTART)))
        jset result (((jget result) ++ javaToString " "))
        forM_ [0 .. attributeSize - 1] $ \i -> javaIteration (pure ()) $ do
            let key = (javaCast (jindex attributeKeys (i)) :: String)
            let value = (javaCast (jio (HashMap.get ((jget this.base.otherAttributes)) key)) :: String)
            when ((value /= javaNull) && ((Prelude.fromEnum (Prelude.compare value (jget (stringUtil).eMPTY_STRING)) - 1) /= 0)) $ do
                jset result (((jget result) ++ javaToString key))
                jset result (((jget result) ++ javaToString "=\""))
                jset result (((jget result) ++ javaToString value))
                jset result (((jget result) ++ javaToString "\" "))
        jset result (((jget result) ++ javaToString (jget (this).eND)))
        jset result (((jget result) ++ javaToString (jget (this).body)))
        jset result (((jget result) ++ javaToString (jget (this).eNDTAG)))
        jset result (((jget result) ++ javaToString (jget (this).after)))
        pure ((jget result))


