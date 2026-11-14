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
module ScrollSelectionFormTempHorizontalDx (module ScrollSelectionFormTempHorizontalDx, module ItemIndexDx) where

import ItemIndexDx hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getDx, getDx_super, getDx_impl, scrollSelectionForm)
import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified ScrollSelectionForm -- same package or java.lang
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified ItemIndexDx

data ScrollSelectionFormTempHorizontalDx = ScrollSelectionFormTempHorizontalDx
    { header_ :: JavaHeader
    , base :: ItemIndexDx.ItemIndexDx
    , scrollSelectionForm :: IORef (ScrollSelectionForm.ScrollSelectionForm)
    }

instance JavaNull ScrollSelectionFormTempHorizontalDx where
    javaNull = javaNullRecord "ScrollSelectionFormTempHorizontalDx"

instance JavaEquals ScrollSelectionFormTempHorizontalDx where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScrollSelectionFormTempHorizontalDx where
    (==) = jrecordEquals

instance JavaObjectClass ScrollSelectionFormTempHorizontalDx where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ScrollSelectionFormTempHorizontalDx
newRecord_ = do
    base <- ItemIndexDx.newRecord_
    let header_ = base.header_
    scrollSelectionForm <- newIORef javaNull
    let this = ScrollSelectionFormTempHorizontalDx header_ base scrollSelectionForm
    jregisterLevel header_ this
    jregisterMethod header_ "getDx" (\() -> getDx_impl this)
    pure this

initFields_ :: ScrollSelectionFormTempHorizontalDx -> IO ()
initFields_ this = do
    jset this.scrollSelectionForm (javaNull)
    pure ()

new_1 :: ScrollSelectionForm.ScrollSelectionForm -> IO ScrollSelectionFormTempHorizontalDx
new_1 scrollSelectionForm = do
    this <- newRecord_
    init_1 this scrollSelectionForm
    pure this

init_1 :: ScrollSelectionFormTempHorizontalDx -> ScrollSelectionForm.ScrollSelectionForm -> IO ()
init_1 this scrollSelectionForm = do
        ItemIndexDx.init_ this.base
        initFields_ this
        jset (this).scrollSelectionForm (scrollSelectionForm)
        pure ()


-- throws Exception
getDx :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getDx object_ a1 a2 a3 a4 = jmethod object_ "getDx" (\() -> (getDx_impl (javaCast object_ :: ScrollSelectionFormTempHorizontalDx))) () a1 a2 a3 a4

getDx_super :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getDx_super object_ a1 a2 a3 a4 = (getDx_impl (javaCast object_ :: ScrollSelectionFormTempHorizontalDx)) a1 a2 a3 a4

getDx_impl :: ScrollSelectionFormTempHorizontalDx -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getDx_impl this index item dx dy = do
        (ScrollSelectionForm.getSelectedIndexForPointTempHorizontalDx ((jget (this).scrollSelectionForm)) index item dx dy)


