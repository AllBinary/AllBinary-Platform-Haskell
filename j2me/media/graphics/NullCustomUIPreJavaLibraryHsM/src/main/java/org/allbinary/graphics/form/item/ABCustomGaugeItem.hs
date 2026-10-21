{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
module ABCustomGaugeItem (module ABCustomGaugeItem, module ABCustomItem) where

import ABCustomItem hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, nULL_GAUGE_ITEM)
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
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified ABCustomItem

data ABCustomGaugeItem = ABCustomGaugeItem
    { header_ :: JavaHeader
    , base :: ABCustomItem.ABCustomItem
    }

instance JavaNull ABCustomGaugeItem where
    javaNull = javaNullRecord "ABCustomGaugeItem"

instance JavaEquals ABCustomGaugeItem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABCustomGaugeItem where
    (==) = jrecordEquals

instance JavaObjectClass ABCustomGaugeItem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_GAUGE_ITEM #-}
nULL_GAUGE_ITEM = unsafePerformIO ((new_5 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) 1 0 (jget ((jio (BasicColorFactory.getInstance))).bLACK) (jget ((jio (BasicColorFactory.getInstance))).wHITE)))

newRecord_ :: IO ABCustomGaugeItem
newRecord_ = do
    base <- ABCustomItem.newRecord_
    let header_ = base.header_
    let this = ABCustomGaugeItem header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: ABCustomGaugeItem -> IO ()
initFields_ this = do
    pure ()

new_5 :: String -> Int -> Int -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ABCustomGaugeItem
new_5 label maxValue initialValue backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_5 this label maxValue initialValue backgroundBasicColor foregroundBasicColor
    pure this

init_5 :: ABCustomGaugeItem -> String -> Int -> Int -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_5 this label maxValue initialValue backgroundBasicColor foregroundBasicColor = do
        ABCustomItem.init_3 this.base (label) (backgroundBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


