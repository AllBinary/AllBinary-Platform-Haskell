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
module CellPositionFactory where

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
import qualified CellPosition -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data CellPositionFactory = CellPositionFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , nONE :: IORef (CellPosition.CellPosition)
    , cellPositionArray :: IORef (JavaArray (JavaArray (CellPosition.CellPosition)))
    , columns :: IORef (Int)
    , rows :: IORef (Int)
    }

instance JavaNull CellPositionFactory where
    javaNull = javaNullRecord "CellPositionFactory"

instance JavaEquals CellPositionFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CellPositionFactory where
    (==) = jrecordEquals

instance JavaObjectClass CellPositionFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CellPositionFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    nONE <- newIORef javaNull
    cellPositionArray <- newIORef javaNull
    columns <- newIORef 0
    rows <- newIORef 0
    let this = CellPositionFactory header_ logUtil nONE cellPositionArray columns rows
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getInstanceColRow" (\() -> getInstanceColRow_impl this)
    jregisterMethod header_ "createInstance" (\() -> createInstance_impl this)
    jregisterMethod header_ "getColumns" (\() -> getColumns_impl this)
    jregisterMethod header_ "getRows" (\() -> getRows_impl this)
    pure this

initFields_ :: CellPositionFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.nONE =<< (CellPosition.new_4 (Prelude.negate 1) (Prelude.negate 1) (Prelude.negate 1) (Prelude.negate 1))
    jset this.cellPositionArray ((jnewArray2 (0) (0) javaNull))
    jset this.columns (0)
    jset this.rows (0)
    pure ()


getInstance :: IO (CellPositionFactory)
getInstance = do
        pure ((jget CellPositionFactory.sINGLETON))

new_ :: IO CellPositionFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CellPositionFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


init :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: CellPositionFactory))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: CellPositionFactory)) a1 a2

init_impl :: CellPositionFactory -> Int -> Int -> IO (())
init_impl this columns rows = do
        commonStrings <- (CommonStrings.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Init: columns: ")
        Control.Monad.void (StringMaker.appendint stringBuffer columns)
        Control.Monad.void (StringMaker.append stringBuffer " rows: ")
        Control.Monad.void (StringMaker.appendint stringBuffer rows)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (commonStrings).iNIT))
        jset (this).cellPositionArray ((jnewArray2 (columns) (rows) javaNull))
        jset (this).columns (columns)
        jset (this).rows (rows)
        forM_ [0 .. columns - 1] $ \column -> javaIteration (pure ()) $ do
            forM_ [0 .. rows - 1] $ \row -> javaIteration (pure ()) $ do
                Control.Monad.void (CellPositionFactory.createInstance this column row)
        pure ()


getInstanceColRow :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (CellPosition.CellPosition)
getInstanceColRow object_ a1 a2 = jmethod object_ "getInstanceColRow" (\() -> (getInstanceColRow_impl (javaCast object_ :: CellPositionFactory))) () a1 a2

getInstanceColRow_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (CellPosition.CellPosition)
getInstanceColRow_super object_ a1 a2 = (getInstanceColRow_impl (javaCast object_ :: CellPositionFactory)) a1 a2

getInstanceColRow_impl :: CellPositionFactory -> Int -> Int -> IO (CellPosition.CellPosition)
getInstanceColRow_impl this i_column i_row = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "columns: "))) (jio (CellPositionFactory.getColumns this))))) " rows: "))) (jio (CellPositionFactory.getRows this))))) " col: "))) i_column))) " row: "))) i_row))))) this (jget (commonStrings).gET_INSTANCE) e)
            pure ((jget (this).nONE))
            ) $ do
            pure ((jindex ((jindex ((jget (this).cellPositionArray)) (i_column))) (i_row)))


createInstance :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (CellPosition.CellPosition)
createInstance object_ a1 a2 = jmethod object_ "createInstance" (\() -> (createInstance_impl (javaCast object_ :: CellPositionFactory))) () a1 a2

createInstance_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (CellPosition.CellPosition)
createInstance_super object_ a1 a2 = (createInstance_impl (javaCast object_ :: CellPositionFactory)) a1 a2

createInstance_impl :: CellPositionFactory -> Int -> Int -> IO (CellPosition.CellPosition)
createInstance_impl this i_column i_row = do
        cellPositionCanBeNull <- newIORef ((jindex ((jindex ((jget (this).cellPositionArray)) (i_column))) (i_row)))
        when ((jget cellPositionCanBeNull) == javaNull) $ do
            assignedValue <- (CellPosition.new_4 i_column i_row (jget (this).columns) (jget (this).rows))
            jset cellPositionCanBeNull (assignedValue)
            jsetIndex ((jindex ((jget (this).cellPositionArray)) (i_column))) (i_row) ((jget cellPositionCanBeNull))
        pure ((jget cellPositionCanBeNull))


getColumns :: (JavaObjectClass this_) => this_ -> IO (Int)
getColumns object_ = jmethod object_ "getColumns" (\() -> (getColumns_impl (javaCast object_ :: CellPositionFactory))) ()

getColumns_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getColumns_super object_ = (getColumns_impl (javaCast object_ :: CellPositionFactory))

getColumns_impl :: CellPositionFactory -> IO (Int)
getColumns_impl this = do
        pure ((jget (this).columns))


getRows :: (JavaObjectClass this_) => this_ -> IO (Int)
getRows object_ = jmethod object_ "getRows" (\() -> (getRows_impl (javaCast object_ :: CellPositionFactory))) ()

getRows_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRows_super object_ = (getRows_impl (javaCast object_ :: CellPositionFactory))

getRows_impl :: CellPositionFactory -> IO (Int)
getRows_impl this = do
        pure ((jget (this).rows))


