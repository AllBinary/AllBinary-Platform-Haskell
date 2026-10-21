{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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
-- package org.allbinary.android.input.motion.api5
module GameInputMotionInfoAPI5 (module GameInputMotionInfoAPI5, module GameInputMotionInfo) where

import GameInputMotionInfo hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, instance_)
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
import qualified GameInputMotionInfo -- org.allbinary.android.input.motion.GameInputMotionInfo

data GameInputMotionInfoAPI5 = GameInputMotionInfoAPI5
    { header_ :: JavaHeader
    , base :: GameInputMotionInfo.GameInputMotionInfo
    }

instance JavaNull GameInputMotionInfoAPI5 where
    javaNull = javaNullRecord "GameInputMotionInfoAPI5"

instance JavaEquals GameInputMotionInfoAPI5 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInputMotionInfoAPI5 where
    (==) = jrecordEquals

instance JavaObjectClass GameInputMotionInfoAPI5 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO GameInputMotionInfoAPI5
newRecord_ = do
    base <- GameInputMotionInfo.newRecord_
    let header_ = base.header_
    let this = GameInputMotionInfoAPI5 header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: GameInputMotionInfoAPI5 -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (GameInputMotionInfoAPI5)
getInstance = do
        pure (GameInputMotionInfoAPI5.instance_)

new_ :: IO GameInputMotionInfoAPI5
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameInputMotionInfoAPI5 -> IO ()
init_ this = do
        GameInputMotionInfo.init_2 this.base (2147483647 :: Int) (10)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


