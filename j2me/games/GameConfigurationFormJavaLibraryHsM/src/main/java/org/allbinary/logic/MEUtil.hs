{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
-- package org.allbinary.logic
module MEUtil where

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
import qualified Item -- javax.microedition.lcdui.Item
import qualified CommandForm -- org.allbinary.graphics.displayable.screen.CommandForm

data MEUtil = MEUtil
    { header_ :: JavaHeader
    }

instance JavaNull MEUtil where
    javaNull = javaNullRecord "MEUtil"

instance JavaEquals MEUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MEUtil where
    (==) = jrecordEquals

instance JavaObjectClass MEUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MEUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = MEUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "appendItem" (\() -> appendItem_impl this)
    pure this

initFields_ :: MEUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MEUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MEUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (MEUtil)
getInstance = do
        pure (MEUtil.instance_)


appendItem :: (JavaObjectClass this_) => this_ -> CommandForm.CommandForm -> Item.Item -> IO (())
appendItem object_ a1 a2 = jmethod object_ "appendItem" (\() -> (appendItem_impl (javaCast object_ :: MEUtil))) () a1 a2

appendItem_super :: (JavaObjectClass this_) => this_ -> CommandForm.CommandForm -> Item.Item -> IO (())
appendItem_super object_ a1 a2 = (appendItem_impl (javaCast object_ :: MEUtil)) a1 a2

appendItem_impl :: MEUtil -> CommandForm.CommandForm -> Item.Item -> IO (())
appendItem_impl this form item = do
        Control.Monad.void (CommandForm.append form item)
        pure ()


