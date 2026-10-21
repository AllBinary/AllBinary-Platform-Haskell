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
module TouchButtonLocationHelper where

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
import qualified CommonButtons -- same package or java.lang
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data TouchButtonLocationHelper = TouchButtonLocationHelper
    { header_ :: JavaHeader
    , totalColumns :: IORef (Int)
    , totalRows :: IORef (Int)
    , columnsRemainder :: IORef (Int)
    , rowsRemainder :: IORef (Int)
    , columnsRemainderHalf :: IORef (Int)
    , rowsRemainderHalf :: IORef (Int)
    }

instance JavaNull TouchButtonLocationHelper where
    javaNull = javaNullRecord "TouchButtonLocationHelper"

instance JavaEquals TouchButtonLocationHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchButtonLocationHelper where
    (==) = jrecordEquals

instance JavaObjectClass TouchButtonLocationHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TouchButtonLocationHelper
newRecord_ = do
    header_ <- newJavaHeader
    totalColumns <- newIORef 0
    totalRows <- newIORef 0
    columnsRemainder <- newIORef 0
    rowsRemainder <- newIORef 0
    columnsRemainderHalf <- newIORef 0
    rowsRemainderHalf <- newIORef 0
    let this = TouchButtonLocationHelper header_ totalColumns totalRows columnsRemainder rowsRemainder columnsRemainderHalf rowsRemainderHalf
    jregisterLevel header_ this
    jregisterMethod header_ "getTotalColumns" (\() -> getTotalColumns_impl this)
    jregisterMethod header_ "getTotalRows" (\() -> getTotalRows_impl this)
    jregisterMethod header_ "getColumnsRemainder" (\() -> getColumnsRemainder_impl this)
    jregisterMethod header_ "getRowsRemainder" (\() -> getRowsRemainder_impl this)
    jregisterMethod header_ "getColumnsRemainderHalf" (\() -> getColumnsRemainderHalf_impl this)
    jregisterMethod header_ "getRowsRemainderHalf" (\() -> getRowsRemainderHalf_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: TouchButtonLocationHelper -> IO ()
initFields_ this = do
    jset this.totalColumns (0)
    jset this.totalRows (0)
    jset this.columnsRemainder (0)
    jset this.rowsRemainder (0)
    jset this.columnsRemainderHalf (0)
    jset this.rowsRemainderHalf (0)
    pure ()

new_ :: IO TouchButtonLocationHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TouchButtonLocationHelper -> IO ()
init_ this = do
        initFields_ this
        let buttonSize = (jget ((jio (CommonButtons.getInstance))).sTANDARD_BUTTON_SIZE)
        displayInfo <- (DisplayInfoSingleton.getInstance)
        jset (this).totalColumns ((Prelude.round ((Prelude.fromIntegral (jio (DisplayInfoSingleton.getLastWidth displayInfo))) / (Prelude.fromIntegral buttonSize))))
        jset (this).totalRows ((Prelude.round ((Prelude.fromIntegral (jio (DisplayInfoSingleton.getLastHeight displayInfo))) / (Prelude.fromIntegral buttonSize))))
        jset (this).columnsRemainder (((jio (DisplayInfoSingleton.getLastWidth displayInfo)) `rem` buttonSize))
        jset (this).columnsRemainderHalf ((((jget (this).columnsRemainder) `Data.Bits.shiftR` 1)))
        jset (this).rowsRemainder (((jio (DisplayInfoSingleton.getLastHeight displayInfo)) `rem` buttonSize))
        jset (this).rowsRemainderHalf ((((jget (this).rowsRemainder) `Data.Bits.shiftR` 1)))
        pure ()


getTotalColumns :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalColumns object_ = jmethod object_ "getTotalColumns" (\() -> (getTotalColumns_impl (javaCast object_ :: TouchButtonLocationHelper))) ()

getTotalColumns_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalColumns_super object_ = (getTotalColumns_impl (javaCast object_ :: TouchButtonLocationHelper))

getTotalColumns_impl :: TouchButtonLocationHelper -> IO (Int)
getTotalColumns_impl this = do
        pure ((jget (this).totalColumns))


getTotalRows :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalRows object_ = jmethod object_ "getTotalRows" (\() -> (getTotalRows_impl (javaCast object_ :: TouchButtonLocationHelper))) ()

getTotalRows_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalRows_super object_ = (getTotalRows_impl (javaCast object_ :: TouchButtonLocationHelper))

getTotalRows_impl :: TouchButtonLocationHelper -> IO (Int)
getTotalRows_impl this = do
        pure ((jget (this).totalRows))


getColumnsRemainder :: (JavaObjectClass this_) => this_ -> IO (Int)
getColumnsRemainder object_ = jmethod object_ "getColumnsRemainder" (\() -> (getColumnsRemainder_impl (javaCast object_ :: TouchButtonLocationHelper))) ()

getColumnsRemainder_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getColumnsRemainder_super object_ = (getColumnsRemainder_impl (javaCast object_ :: TouchButtonLocationHelper))

getColumnsRemainder_impl :: TouchButtonLocationHelper -> IO (Int)
getColumnsRemainder_impl this = do
        pure ((jget (this).columnsRemainder))


getRowsRemainder :: (JavaObjectClass this_) => this_ -> IO (Int)
getRowsRemainder object_ = jmethod object_ "getRowsRemainder" (\() -> (getRowsRemainder_impl (javaCast object_ :: TouchButtonLocationHelper))) ()

getRowsRemainder_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRowsRemainder_super object_ = (getRowsRemainder_impl (javaCast object_ :: TouchButtonLocationHelper))

getRowsRemainder_impl :: TouchButtonLocationHelper -> IO (Int)
getRowsRemainder_impl this = do
        pure ((jget (this).rowsRemainder))


getColumnsRemainderHalf :: (JavaObjectClass this_) => this_ -> IO (Int)
getColumnsRemainderHalf object_ = jmethod object_ "getColumnsRemainderHalf" (\() -> (getColumnsRemainderHalf_impl (javaCast object_ :: TouchButtonLocationHelper))) ()

getColumnsRemainderHalf_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getColumnsRemainderHalf_super object_ = (getColumnsRemainderHalf_impl (javaCast object_ :: TouchButtonLocationHelper))

getColumnsRemainderHalf_impl :: TouchButtonLocationHelper -> IO (Int)
getColumnsRemainderHalf_impl this = do
        pure ((jget (this).columnsRemainderHalf))


getRowsRemainderHalf :: (JavaObjectClass this_) => this_ -> IO (Int)
getRowsRemainderHalf object_ = jmethod object_ "getRowsRemainderHalf" (\() -> (getRowsRemainderHalf_impl (javaCast object_ :: TouchButtonLocationHelper))) ()

getRowsRemainderHalf_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRowsRemainderHalf_super object_ = (getRowsRemainderHalf_impl (javaCast object_ :: TouchButtonLocationHelper))

getRowsRemainderHalf_impl :: TouchButtonLocationHelper -> IO (Int)
getRowsRemainderHalf_impl this = do
        pure ((jget (this).rowsRemainderHalf))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: TouchButtonLocationHelper))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: TouchButtonLocationHelper))

toString_impl :: TouchButtonLocationHelper -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "totalColumns: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).totalColumns))
        Control.Monad.void (StringMaker.append stringBuffer " totalRows: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).totalRows))
        Control.Monad.void (StringMaker.append stringBuffer " columnsRemainder: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).columnsRemainder))
        Control.Monad.void (StringMaker.append stringBuffer " rowsRemainder: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).rowsRemainder))
        Control.Monad.void (StringMaker.append stringBuffer " columnsRemainderHalf: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).columnsRemainderHalf))
        Control.Monad.void (StringMaker.append stringBuffer " rowsRemainderHalf: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).rowsRemainderHalf))
        (StringMaker.toString stringBuffer)


