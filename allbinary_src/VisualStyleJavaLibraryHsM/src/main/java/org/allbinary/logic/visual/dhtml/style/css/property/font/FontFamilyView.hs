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
-- package org.allbinary.logic.visual.dhtml.style.css.property.font
module FontFamilyView (module FontFamilyView, module CssPropertyView) where

import CssPropertyView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified FontFamilyData -- same package or java.lang
import qualified CssPropertyView -- org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView
import qualified Node -- org.w3c.dom.Node

data FontFamilyView = FontFamilyView
    { header_ :: JavaHeader
    , base :: CssPropertyView.CssPropertyView
    }

instance JavaNull FontFamilyView where
    javaNull = javaNullRecord "FontFamilyView"

instance JavaEquals FontFamilyView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FontFamilyView where
    (==) = jrecordEquals

instance JavaObjectClass FontFamilyView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO FontFamilyView
newRecord_ = do
    base <- CssPropertyView.newRecord_
    let header_ = base.header_
    let this = FontFamilyView header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: FontFamilyView -> IO ()
initFields_ this = do
    pure ()

new_ :: IO FontFamilyView
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FontFamilyView -> IO ()
init_ this = do
        CssPropertyView.init_1 this.base (jget ((jio (FontFamilyData.getInstance))).vALUE)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

new_1 :: Node.Node -> IO FontFamilyView
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: FontFamilyView -> Node.Node -> IO ()
init_1 this node = do
        CssPropertyView.init_1 this.base (node)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


