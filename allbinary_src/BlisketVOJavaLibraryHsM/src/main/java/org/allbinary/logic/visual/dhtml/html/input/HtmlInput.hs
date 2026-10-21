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
-- package org.allbinary.logic.visual.dhtml.html.input
module HtmlInput (module HtmlInput, module HtmlTag) where

import HtmlTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toString, toString_super, toString_impl, eND, sTARTINPUT, eNDINPUT, tYPE, nAME, before, type_, name, after)
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

data HtmlInput = HtmlInput
    { header_ :: JavaHeader
    , base :: HtmlTag.HtmlTag
    , eND :: IORef (String)
    , sTARTINPUT :: IORef (String)
    , eNDINPUT :: IORef (String)
    , tYPE :: IORef (String)
    , nAME :: IORef (String)
    , before :: IORef (String)
    , type_ :: IORef (String)
    , name :: IORef (String)
    , after :: IORef (String)
    }

instance JavaNull HtmlInput where
    javaNull = javaNullRecord "HtmlInput"

instance JavaEquals HtmlInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlInput where
    (==) = jrecordEquals

instance JavaObjectClass HtmlInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HtmlInput
newRecord_ = do
    base <- HtmlTag.newRecord_
    let header_ = base.header_
    eND <- newIORef ""
    sTARTINPUT <- newIORef ""
    eNDINPUT <- newIORef ""
    tYPE <- newIORef ""
    nAME <- newIORef ""
    before <- newIORef ""
    type_ <- newIORef ""
    name <- newIORef ""
    after <- newIORef ""
    let this = HtmlInput header_ base eND sTARTINPUT eNDINPUT tYPE nAME before type_ name after
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: HtmlInput -> IO ()
initFields_ this = do
    jset this.eND (">")
    jset this.sTARTINPUT ("<INPUT ")
    jset this.eNDINPUT ("</INPUT>")
    jset this.tYPE ("TYPE=\"")
    jset this.nAME ("NAME=\"")
    jset this.before (javaNull)
    jset this.type_ (javaNull)
    jset this.name (javaNull)
    jset this.after (javaNull)
    pure ()

new_4 :: String -> String -> String -> String -> IO HtmlInput
new_4 before type_ name after = do
    this <- newRecord_
    init_4 this before type_ name after
    pure this

init_4 :: HtmlInput -> String -> String -> String -> String -> IO ()
init_4 this before type_ name after = do
        HtmlTag.init_ this.base
        initFields_ this
        jset (this).before (before)
        jset (this).type_ (type_)
        jset (this).name (name)
        jset (this).after (after)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: HtmlInput))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: HtmlInput))

toString_impl :: HtmlInput -> IO (String)
toString_impl this = do
        stringUtil <- (StringUtil.getInstance)
        result <- newIORef ((jget (stringUtil).eMPTY_STRING))
        attributeKeys <- (HashMap.toArray ((jio (HashMap.keySet ((jget (this).base.otherAttributes))))))
        let attributeSize = (jlength attributeKeys)
        jset result ((jget (this).before))
        jset result (((jget result) ++ javaToString (jget (this).sTARTINPUT)))
        jset result (((jget result) ++ javaToString (jget (this).tYPE)))
        jset result (((jget result) ++ javaToString (jget (this).type_)))
        jset result (((jget result) ++ javaToString "\" "))
        jset result (((jget result) ++ javaToString (jget (this).nAME)))
        jset result (((jget result) ++ javaToString (jget (this).name)))
        jset result (((jget result) ++ javaToString "\" "))
        forM_ [0 .. attributeSize - 1] $ \i -> javaIteration (pure ()) $ do
            let key = (javaCast (jindex attributeKeys (i)) :: String)
            let value = (javaCast (jio (HashMap.get ((jget this.base.otherAttributes)) key)) :: String)
            when ((value /= javaNull) && ((Prelude.fromEnum (Prelude.compare value (jget (stringUtil).eMPTY_STRING)) - 1) /= 0)) $ do
                jset result (((jget result) ++ javaToString key))
                jset result (((jget result) ++ javaToString "=\""))
                jset result (((jget result) ++ javaToString value))
                jset result (((jget result) ++ javaToString "\" "))
        jset result (((jget result) ++ javaToString (jget (this).eND)))
        jset result (((jget result) ++ javaToString (jget (this).eNDINPUT)))
        jset result (((jget result) ++ javaToString (jget (this).after)))
        pure ((jget result))


