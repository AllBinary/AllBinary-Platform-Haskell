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
-- package org.allbinary.logic.visual.dhtml.style.css.property
module CssPropertyValidationFactory where

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
import qualified ValidationInterface -- org.allbinary.logic.control.validate.ValidationInterface
import qualified FontFamilyValidation -- org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyValidation
import qualified Node -- org.w3c.dom.Node

data CssPropertyValidationFactory = CssPropertyValidationFactory
    { header_ :: JavaHeader
    }

instance JavaNull CssPropertyValidationFactory where
    javaNull = javaNullRecord "CssPropertyValidationFactory"

instance JavaEquals CssPropertyValidationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CssPropertyValidationFactory where
    (==) = jrecordEquals

instance JavaObjectClass CssPropertyValidationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CssPropertyValidationFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = CssPropertyValidationFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: CssPropertyValidationFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CssPropertyValidationFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CssPropertyValidationFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance :: Node.Node -> IO (ValidationInterface.ValidationInterface)
getInstance node = do
        pure ((javaCast (jio (FontFamilyValidation.new_1 node)) :: ValidationInterface.ValidationInterface))


