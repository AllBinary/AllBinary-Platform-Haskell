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
-- package org.allbinary.graphics.form
module CommandCurrentSelectionFormFactory where

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
import qualified ScrollSelectionFormNoneFactory -- same package or java.lang
import qualified CommandCurrentSelectionForm -- same package or java.lang
import qualified ScrollSelectionForm -- same package or java.lang
import qualified FormType -- same package or java.lang
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified TouchFeatureFactory -- org.allbinary.game.configuration.feature.TouchFeatureFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem

data CommandCurrentSelectionFormFactory = CommandCurrentSelectionFormFactory
    { header_ :: JavaHeader
    }

instance JavaNull CommandCurrentSelectionFormFactory where
    javaNull = javaNullRecord "CommandCurrentSelectionFormFactory"

instance JavaEquals CommandCurrentSelectionFormFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CommandCurrentSelectionFormFactory where
    (==) = jrecordEquals

instance JavaObjectClass CommandCurrentSelectionFormFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CommandCurrentSelectionFormFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = CommandCurrentSelectionFormFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: CommandCurrentSelectionFormFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CommandCurrentSelectionFormFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CommandCurrentSelectionFormFactory -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getInstance :: String -> JavaArray (ABCustomItem.ABCustomItem) -> Rectangle.Rectangle -> FormType.FormType -> Int -> Bool -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO (ScrollSelectionForm.ScrollSelectionForm)
getInstance title items rectangle formType border moveForSmallScreen backgroundBasicColor foregroundBasicColor = do
    javaCatchReturn $ do
        if (jio (Features.isFeature ((jio (Features.getInstance))) (jget ((jio (TouchFeatureFactory.getInstance))).tOUCH_ENABLED))) then do
            scrollSelectionForm <- (fmap (\value_ -> javaCast value_ :: ScrollSelectionForm.ScrollSelectionForm) (CommandCurrentSelectionForm.new_6 title items border moveForSmallScreen backgroundBasicColor foregroundBasicColor))
            Control.Monad.void (ScrollSelectionForm.init scrollSelectionForm rectangle formType)
            javaReturn (scrollSelectionForm)
        else do
            javaReturn =<< (ScrollSelectionFormNoneFactory.getInstance)


