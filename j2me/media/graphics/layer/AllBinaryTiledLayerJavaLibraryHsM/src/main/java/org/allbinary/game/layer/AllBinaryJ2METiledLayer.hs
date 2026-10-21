{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
module AllBinaryJ2METiledLayer (module AllBinaryJ2METiledLayer, module AllBinaryTiledLayer) where

import AllBinaryTiledLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, paintDebug, paintDebug_super, paintDebug_impl, moveDXY, moveDXY_super, moveDXY_impl, setPosition, setPosition_super, setPosition_impl, getTiledLayer, getTiledLayer_super, getTiledLayer_impl, getCellWidth, getCellWidth_super, getCellWidth_impl, getCellHeight, getCellHeight_super, getCellHeight_impl, getCell, getCell_super, getCell_impl, getColumns, getColumns_super, getColumns_impl, getRows, getRows_super, getRows_impl, setCell, setCell_super, setCell_impl, getAnimatedTile, getAnimatedTile_super, getAnimatedTile_impl, tiledLayerP, debugColor, font2)
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
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified TiledLayer -- javax.microedition.lcdui.game.TiledLayer
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AllBinaryTiledLayer

data AllBinaryJ2METiledLayer = AllBinaryJ2METiledLayer
    { header_ :: JavaHeader
    , base :: AllBinaryTiledLayer.AllBinaryTiledLayer
    , tiledLayerP :: IORef (TiledLayer.TiledLayer)
    , debugColor :: IORef (Int)
    , font2 :: IORef (Font.Font)
    }

instance JavaNull AllBinaryJ2METiledLayer where
    javaNull = javaNullRecord "AllBinaryJ2METiledLayer"

instance JavaEquals AllBinaryJ2METiledLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryJ2METiledLayer where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryJ2METiledLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllBinaryJ2METiledLayer
newRecord_ = do
    base <- AllBinaryTiledLayer.newRecord_
    let header_ = base.header_
    tiledLayerP <- newIORef javaNull
    debugColor <- newIORef 0
    font2 <- newIORef javaNull
    let this = AllBinaryJ2METiledLayer header_ base tiledLayerP debugColor font2
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintDebug" (\() -> paintDebug_impl this)
    jregisterMethod header_ "moveDXY" (\() -> moveDXY_impl this)
    jregisterMethod header_ "setPosition" (\() -> setPosition_impl this)
    jregisterMethod header_ "getTiledLayer" (\() -> getTiledLayer_impl this)
    jregisterMethod header_ "getCellWidth" (\() -> getCellWidth_impl this)
    jregisterMethod header_ "getCellHeight" (\() -> getCellHeight_impl this)
    jregisterMethod header_ "getCell" (\() -> getCell_impl this)
    jregisterMethod header_ "getColumns" (\() -> getColumns_impl this)
    jregisterMethod header_ "getRows" (\() -> getRows_impl this)
    jregisterMethod header_ "setCell" (\() -> setCell_impl this)
    jregisterMethod header_ "getAnimatedTile" (\() -> getAnimatedTile_impl this)
    pure this

initFields_ :: AllBinaryJ2METiledLayer -> IO ()
initFields_ this = do
    jset this.tiledLayerP (javaNull)
    jset this.debugColor (0)
    jset this.font2 =<< (Font.getFont (Font.fACE_SYSTEM) (Font.sTYLE_PLAIN) 4)
    pure ()

new_4 :: Int -> TiledLayer.TiledLayer -> JavaArray (JavaArray (Int)) -> Int -> IO AllBinaryJ2METiledLayer
new_4 dataId tiledLayer mapTwoDArray debugColor = do
    this <- newRecord_
    init_4 this dataId tiledLayer mapTwoDArray debugColor
    pure this

init_4 :: AllBinaryJ2METiledLayer -> Int -> TiledLayer.TiledLayer -> JavaArray (JavaArray (Int)) -> Int -> IO ()
init_4 this dataId tiledLayer mapTwoDArray debugColor = do
        AllBinaryTiledLayer.init_5 this.base (dataId) (jio (TiledLayer.getWidth tiledLayer)) (jio (TiledLayer.getHeight tiledLayer)) (jio (TiledLayer.getCellWidth tiledLayer)) (jio (TiledLayer.getCellHeight tiledLayer))
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).tiledLayerP (tiledLayer)
        jset (this).debugColor (debugColor)
        Control.Monad.void (AllBinaryTiledLayer.setCells this mapTwoDArray)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: AllBinaryJ2METiledLayer))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: AllBinaryJ2METiledLayer)) a1

paint_impl :: AllBinaryJ2METiledLayer -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (TiledLayer.paint ((jget (this).tiledLayerP)) graphics)
        pure ()


paintDebug :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintDebug object_ a1 = jmethod object_ "paintDebug" (\() -> (paintDebug_impl (javaCast object_ :: AllBinaryJ2METiledLayer))) () a1

paintDebug_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintDebug_super object_ a1 = (paintDebug_impl (javaCast object_ :: AllBinaryJ2METiledLayer)) a1

paintDebug_impl :: AllBinaryJ2METiledLayer -> Graphics.Graphics -> IO (())
paintDebug_impl this graphics = do
        font <- (Graphics.getFont graphics)
        Control.Monad.void (Graphics.setFont graphics (jget (this).font2))
        Control.Monad.void (Graphics.setColor graphics (jget (this).debugColor))
        x <- newIORef =<< (TiledLayer.getX ((jget (this).tiledLayerP)))
        y <- newIORef =<< (TiledLayer.getY ((jget (this).tiledLayerP)))
        let firstColumn = 0
        let firstRow = 0
        totalColumns <- (TiledLayer.getColumns ((jget (this).tiledLayerP)))
        totalRows <- (TiledLayer.getRows ((jget (this).tiledLayerP)))
        let x0 = (jget x)
        tile <- newIORef (0)
        tileHeight <- (TiledLayer.getCellHeight ((jget (this).tiledLayerP)))
        tileWidth <- (TiledLayer.getCellWidth ((jget (this).tiledLayerP)))
        commonSeps <- (CommonSeps.getInstance)
        stringMaker <- (StringMaker.new_)
        rowIndex <- newIORef (firstRow)
        fix $ \loop -> when ((jget rowIndex) < totalRows) $ javaIteration (do { jset rowIndex ((jget rowIndex) + 1); jset y (((jget y) + tileHeight)); loop }) $ do
            jset x (x0)
            columnIndex <- newIORef (firstColumn)
            fix $ \loop -> when ((jget columnIndex) < totalColumns) $ javaIteration (do { jset columnIndex ((jget columnIndex) + 1); jset x (((jget x) + tileWidth)); loop }) $ do
                assignedValue <- (TiledLayer.getCell ((jget (this).tiledLayerP)) (jget columnIndex) (jget rowIndex))
                jset tile (assignedValue)
                when ((jget tile) < 0) $ do
                    assignedValue <- (TiledLayer.getAnimatedTile ((jget (this).tiledLayerP)) (jget tile))
                    jset tile (assignedValue)
                when ((jget tile) == 0) $ do
                    throwIO JavaContinue
                jset tile ((jget tile) - 1)
                Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
                Control.Monad.void (Graphics.drawString graphics (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint stringMaker (jget columnIndex)))) (jget (commonSeps).cOMMA)))) (jget rowIndex)))) (jget (commonSeps).cOLON)))) (jget tile)))))) ((jget x) + 5) ((jget y) + 10) 0)
        Control.Monad.void (Graphics.setFont graphics font)
        pure ()


moveDXY :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
moveDXY object_ a1 a2 = jmethod object_ "moveDXY" (\() -> (moveDXY_impl (javaCast object_ :: AllBinaryJ2METiledLayer))) () a1 a2

moveDXY_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
moveDXY_super object_ a1 a2 = (moveDXY_impl (javaCast object_ :: AllBinaryJ2METiledLayer)) a1 a2

moveDXY_impl :: AllBinaryJ2METiledLayer -> Int -> Int -> IO (())
moveDXY_impl this dx dy = do
        Control.Monad.void (TiledLayer.move ((jget (this).tiledLayerP)) dx dy)
        Control.Monad.void (AllBinaryTiledLayer.moveDXY_super this.base (Prelude.negate dx) (Prelude.negate dy))
        pure ()


setPosition :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
setPosition object_ a1 a2 a3 = jmethod object_ "setPosition" (\() -> (setPosition_impl (javaCast object_ :: AllBinaryJ2METiledLayer))) () a1 a2 a3

setPosition_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
setPosition_super object_ a1 a2 a3 = (setPosition_impl (javaCast object_ :: AllBinaryJ2METiledLayer)) a1 a2 a3

setPosition_impl :: AllBinaryJ2METiledLayer -> Int -> Int -> Int -> IO (())
setPosition_impl this x y z = do
        Control.Monad.void (TiledLayer.setPosition ((jget (this).tiledLayerP)) x y)
        Control.Monad.void (AllBinaryTiledLayer.setPosition_super this.base (Prelude.negate x) (Prelude.negate y) z)
        pure ()


getTiledLayer :: (JavaObjectClass this_) => this_ -> IO (TiledLayer.TiledLayer)
getTiledLayer object_ = jmethod object_ "getTiledLayer" (\() -> (getTiledLayer_impl (javaCast object_ :: AllBinaryJ2METiledLayer))) ()

getTiledLayer_super :: (JavaObjectClass this_) => this_ -> IO (TiledLayer.TiledLayer)
getTiledLayer_super object_ = (getTiledLayer_impl (javaCast object_ :: AllBinaryJ2METiledLayer))

getTiledLayer_impl :: AllBinaryJ2METiledLayer -> IO (TiledLayer.TiledLayer)
getTiledLayer_impl this = do
        pure ((jget (this).tiledLayerP))


getCellWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getCellWidth object_ = jmethod object_ "getCellWidth" (\() -> (getCellWidth_impl (javaCast object_ :: AllBinaryJ2METiledLayer))) ()

getCellWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCellWidth_super object_ = (getCellWidth_impl (javaCast object_ :: AllBinaryJ2METiledLayer))

getCellWidth_impl :: AllBinaryJ2METiledLayer -> IO (Int)
getCellWidth_impl this = do
        (TiledLayer.getCellWidth ((jget (this).tiledLayerP)))


getCellHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getCellHeight object_ = jmethod object_ "getCellHeight" (\() -> (getCellHeight_impl (javaCast object_ :: AllBinaryJ2METiledLayer))) ()

getCellHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCellHeight_super object_ = (getCellHeight_impl (javaCast object_ :: AllBinaryJ2METiledLayer))

getCellHeight_impl :: AllBinaryJ2METiledLayer -> IO (Int)
getCellHeight_impl this = do
        (TiledLayer.getCellHeight ((jget (this).tiledLayerP)))


getCell :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
getCell object_ a1 a2 = jmethod object_ "getCell" (\() -> (getCell_impl (javaCast object_ :: AllBinaryJ2METiledLayer))) () a1 a2

getCell_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
getCell_super object_ a1 a2 = (getCell_impl (javaCast object_ :: AllBinaryJ2METiledLayer)) a1 a2

getCell_impl :: AllBinaryJ2METiledLayer -> Int -> Int -> IO (Int)
getCell_impl this col row = do
        (TiledLayer.getCell ((jget (this).tiledLayerP)) col row)


getColumns :: (JavaObjectClass this_) => this_ -> IO (Int)
getColumns object_ = jmethod object_ "getColumns" (\() -> (getColumns_impl (javaCast object_ :: AllBinaryJ2METiledLayer))) ()

getColumns_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getColumns_super object_ = (getColumns_impl (javaCast object_ :: AllBinaryJ2METiledLayer))

getColumns_impl :: AllBinaryJ2METiledLayer -> IO (Int)
getColumns_impl this = do
        (TiledLayer.getColumns ((jget (this).tiledLayerP)))


getRows :: (JavaObjectClass this_) => this_ -> IO (Int)
getRows object_ = jmethod object_ "getRows" (\() -> (getRows_impl (javaCast object_ :: AllBinaryJ2METiledLayer))) ()

getRows_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRows_super object_ = (getRows_impl (javaCast object_ :: AllBinaryJ2METiledLayer))

getRows_impl :: AllBinaryJ2METiledLayer -> IO (Int)
getRows_impl this = do
        (TiledLayer.getRows ((jget (this).tiledLayerP)))


setCell :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
setCell object_ a1 a2 a3 = jmethod object_ "setCell" (\() -> (setCell_impl (javaCast object_ :: AllBinaryJ2METiledLayer))) () a1 a2 a3

setCell_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
setCell_super object_ a1 a2 a3 = (setCell_impl (javaCast object_ :: AllBinaryJ2METiledLayer)) a1 a2 a3

setCell_impl :: AllBinaryJ2METiledLayer -> Int -> Int -> Int -> IO (())
setCell_impl this col row index = do
        Control.Monad.void (TiledLayer.setCell ((jget (this).tiledLayerP)) col row index)
        pure ()


getAnimatedTile :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAnimatedTile object_ a1 = jmethod object_ "getAnimatedTile" (\() -> (getAnimatedTile_impl (javaCast object_ :: AllBinaryJ2METiledLayer))) () a1

getAnimatedTile_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAnimatedTile_super object_ a1 = (getAnimatedTile_impl (javaCast object_ :: AllBinaryJ2METiledLayer)) a1

getAnimatedTile_impl :: AllBinaryJ2METiledLayer -> Int -> IO (Int)
getAnimatedTile_impl this animationTileIndex = do
        (TiledLayer.getAnimatedTile ((jget (this).tiledLayerP)) animationTileIndex)


