{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2022 AllBinary
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
-- package org.allbinary.graphics.displayable.screen
module AboutPaintableFactory where

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
import qualified AboutPaintable -- org.allbinary.game.paint.AboutPaintable
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data AboutPaintableFactory = AboutPaintableFactory
    { header_ :: JavaHeader
    , paintableArray :: IORef (JavaArray (Paintable.Paintable))
    }

instance JavaNull AboutPaintableFactory where
    javaNull = javaNullRecord "AboutPaintableFactory"

instance JavaEquals AboutPaintableFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AboutPaintableFactory where
    (==) = jrecordEquals

instance JavaObjectClass AboutPaintableFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AboutPaintableFactory
newRecord_ = do
    header_ <- newJavaHeader
    paintableArray <- newIORef javaNull
    let this = AboutPaintableFactory header_ paintableArray
    jregisterLevel header_ this
    pure this

initFields_ :: AboutPaintableFactory -> IO ()
initFields_ this = do
    jset this.paintableArray ((jarrayFromList [(jio (NullPaintable.getInstance))]))
    pure ()


getInstance :: IO (AboutPaintableFactory)
getInstance = do
        pure (AboutPaintableFactory.instance_)

new_ :: IO AboutPaintableFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AboutPaintableFactory -> IO ()
init_ this = do
        initFields_ this
        let iNFO = (jarrayFromList ["Built with the", "AllBinary Platform", (jget ((jio (StringUtil.getInstance))).eMPTY_STRING), "Comments or Questions:", "support@allbinary.com"])
        let dEVELOPERS = (jarrayFromList ["Developed By:", "Travis Berthelot"])
        assignedValue <- (AboutPaintable.getPaintableArrayInstance ((jio (AboutPaintable.getInstance iNFO dEVELOPERS))))
        jset (this).paintableArray (assignedValue)
        pure ()


