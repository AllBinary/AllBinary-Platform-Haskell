{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
-- package org.allbinary.game.layer
module LayerUtil where

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
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified PositionStrings -- org.allbinary.math.PositionStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data LayerUtil = LayerUtil
    { header_ :: JavaHeader
    }

instance JavaNull LayerUtil where
    javaNull = javaNullRecord "LayerUtil"

instance JavaEquals LayerUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerUtil where
    (==) = jrecordEquals

instance JavaObjectClass LayerUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

hASHTABLE = "Hashtable: "

newRecord_ :: IO LayerUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = LayerUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: LayerUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LayerUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LayerUtil -> IO ()
init_ this = do
    initFields_ this


toString :: ABHashtable.ABHashtable -> Int -> Int -> Int -> IO (String)
toString hashtable x y z = do
        commonSeps <- (CommonSeps.getInstance)
        positionStrings <- (PositionStrings.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (LayerUtil.hASHTABLE))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) hashtable)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (positionStrings).x_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer x)
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (positionStrings).y_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer y)
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (positionStrings).z_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer z)
        (StringMaker.toString stringBuffer)


