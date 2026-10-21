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
-- package org.allbinary.input.motion.button
module TouchButtonTurnLeftResource (module TouchButtonTurnLeftResource, module TouchButtonResource) where

import TouchButtonResource hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, instance_)
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
import qualified TouchButtonResource

data TouchButtonTurnLeftResource = TouchButtonTurnLeftResource
    { header_ :: JavaHeader
    , base :: TouchButtonResource.TouchButtonResource
    }

instance JavaNull TouchButtonTurnLeftResource where
    javaNull = javaNullRecord "TouchButtonTurnLeftResource"

instance JavaEquals TouchButtonTurnLeftResource where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchButtonTurnLeftResource where
    (==) = jrecordEquals

instance JavaObjectClass TouchButtonTurnLeftResource where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: TouchButtonResource.TouchButtonResource) (new_)))

newRecord_ :: IO TouchButtonTurnLeftResource
newRecord_ = do
    base <- TouchButtonResource.newRecord_
    let header_ = base.header_
    let this = TouchButtonTurnLeftResource header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: TouchButtonTurnLeftResource -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (TouchButtonResource.TouchButtonResource)
getInstance = do
        pure (TouchButtonTurnLeftResource.instance_)

new_ :: IO TouchButtonTurnLeftResource
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TouchButtonTurnLeftResource -> IO ()
init_ this = do
        TouchButtonResource.init_2 this.base ("/touch_button_turn_left_arrow_64_by_64.png") ("/touch_button_turn_left_arrow_hint_64_by_64.png")
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


