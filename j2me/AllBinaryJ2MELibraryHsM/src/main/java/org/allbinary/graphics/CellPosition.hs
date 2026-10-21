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
-- package org.allbinary.graphics
module CellPosition (module CellPosition, module V) where

import V hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getColumn, getColumn_super, getColumn_impl, getRow, getRow_super, getRow_impl, toString, toString_super, toString_impl, toStringCellPosition, toStringCellPosition_super, toStringCellPosition_impl, toStringColRow, toStringColRow_super, toStringColRow_impl, getId, getId_super, getId_impl, id, column, row)
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
import qualified V -- org.allbinary.graph.V
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data CellPosition = CellPosition
    { header_ :: JavaHeader
    , base :: V.V
    , id :: IORef (Int)
    , column :: IORef (Int)
    , row :: IORef (Int)
    }

instance JavaNull CellPosition where
    javaNull = javaNullRecord "CellPosition"

instance JavaEquals CellPosition where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CellPosition where
    (==) = jrecordEquals

instance JavaObjectClass CellPosition where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CellPosition
newRecord_ = do
    base <- V.newRecord_
    let header_ = base.header_
    id <- newIORef 0
    column <- newIORef 0
    row <- newIORef 0
    let this = CellPosition header_ base id column row
    jregisterLevel header_ this
    jregisterMethod header_ "getColumn" (\() -> getColumn_impl this)
    jregisterMethod header_ "getRow" (\() -> getRow_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    pure this

initFields_ :: CellPosition -> IO ()
initFields_ this = do
    jset this.id (0)
    jset this.column (0)
    jset this.row (0)
    pure ()

new_4 :: Int -> Int -> Int -> Int -> IO CellPosition
new_4 column row columns rows = do
    this <- newRecord_
    init_4 this column row columns rows
    pure this

init_4 :: CellPosition -> Int -> Int -> Int -> Int -> IO ()
init_4 this column row columns rows = do
        V.init_ this.base
        initFields_ this
        jset (this).column (column)
        jset (this).row (row)
        jset (this).id ((((row * columns)) + column))
        pure ()


getColumn :: (JavaObjectClass this_) => this_ -> IO (Int)
getColumn object_ = jmethod object_ "getColumn" (\() -> (getColumn_impl (javaCast object_ :: CellPosition))) ()

getColumn_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getColumn_super object_ = (getColumn_impl (javaCast object_ :: CellPosition))

getColumn_impl :: CellPosition -> IO (Int)
getColumn_impl this = do
        pure ((jget (this).column))


getRow :: (JavaObjectClass this_) => this_ -> IO (Int)
getRow object_ = jmethod object_ "getRow" (\() -> (getRow_impl (javaCast object_ :: CellPosition))) ()

getRow_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRow_super object_ = (getRow_impl (javaCast object_ :: CellPosition))

getRow_impl :: CellPosition -> IO (Int)
getRow_impl this = do
        pure ((jget (this).row))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: CellPosition))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: CellPosition))

toString_impl :: CellPosition -> IO (String)
toString_impl this = do
        (CellPosition.toStringColRow (jio (CellPosition.getColumn this)) (jio (CellPosition.getRow this)))


toStringCellPosition :: CellPosition -> IO (String)
toStringCellPosition basicGeographicMapCellPosition = do
        (CellPosition.toStringColRow (jio (CellPosition.getColumn basicGeographicMapCellPosition)) (jio (CellPosition.getRow basicGeographicMapCellPosition)))


toStringColRow :: Int -> Int -> IO (String)
toStringColRow i_column i_row = do
        stringBuffer <- (StringMaker.new_)
        commonSeps <- (CommonSeps.getInstance)
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).pARENTHESIS_OPEN))
        Control.Monad.void (StringMaker.appendint stringBuffer i_column)
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).cOMMA))
        Control.Monad.void (StringMaker.appendint stringBuffer i_row)
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).pARENTHESIS_CLOSE))
        (StringMaker.toString stringBuffer)


getId :: (JavaObjectClass this_) => this_ -> IO (Int)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: CellPosition))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getId_super object_ = (getId_impl (javaCast object_ :: CellPosition))

getId_impl :: CellPosition -> IO (Int)
getId_impl this = do
        pure ((jget (this).id))


