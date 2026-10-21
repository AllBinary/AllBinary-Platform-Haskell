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
module AllBinaryTiledLayer (module AllBinaryTiledLayer, module Layer) where

import Layer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setCells, setCells_super, setCells_impl, updateCells, updateCells_super, updateCells_impl, getName, getName_super, getName_impl, paint, paint_super, paint_impl, paintThreed, paintThreed_super, paintThreed_impl, getX2, getX2_super, getX2_impl, getY2, getY2_super, getY2_impl, getZ2, getZ2_super, getZ2_impl, getCellWidth, getCellWidth_super, getCellWidth_impl, getCellHeight, getCellHeight_super, getCellHeight_impl, getCell, getCell_super, getCell_impl, getColumns, getColumns_super, getColumns_impl, getRows, getRows_super, getRows_impl, setCell, setCell_super, setCell_impl, getHalfWidth, getHalfWidth_super, getHalfWidth_impl, getHalfHeight, getHalfHeight_super, getHalfHeight_impl, getDataId, getDataId_super, getDataId_impl, getHalfCellWidth, getHalfCellWidth_super, getHalfCellWidth_impl, getHalfCellHeight, getHalfCellHeight_super, getHalfCellHeight_impl, isOnTileLayer, isOnTileLayer_super, isOnTileLayer_impl, getAnimatedTile, getAnimatedTile_super, getAnimatedTile_impl, cellWidth, cellHeight, halfWidth, halfHeight, halfCellWidth, halfCellHeight, dataId)
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
import qualified Class -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PaintableInterface -- org.allbinary.graphics.paint.PaintableInterface
import qualified Layer -- org.allbinary.layer.Layer
import qualified NamedInterface -- org.allbinary.layer.NamedInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements NamedInterface
-- implements PaintableInterface
data AllBinaryTiledLayer = AllBinaryTiledLayer
    { header_ :: JavaHeader
    , base :: Layer.Layer
    , cellWidth :: IORef (Int)
    , cellHeight :: IORef (Int)
    , halfWidth :: IORef (Int)
    , halfHeight :: IORef (Int)
    , halfCellWidth :: IORef (Int)
    , halfCellHeight :: IORef (Int)
    , dataId :: IORef (Int)
    }

instance JavaNull AllBinaryTiledLayer where
    javaNull = javaNullRecord "AllBinaryTiledLayer"

instance JavaEquals AllBinaryTiledLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryTiledLayer where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryTiledLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllBinaryTiledLayer
newRecord_ = do
    base <- Layer.newRecord_
    let header_ = base.header_
    cellWidth <- newIORef 0
    cellHeight <- newIORef 0
    halfWidth <- newIORef 0
    halfHeight <- newIORef 0
    halfCellWidth <- newIORef 0
    halfCellHeight <- newIORef 0
    dataId <- newIORef javaNull
    let this = AllBinaryTiledLayer header_ base cellWidth cellHeight halfWidth halfHeight halfCellWidth halfCellHeight dataId
    jregisterLevel header_ this
    NamedInterface.registerInterface_ header_
    PaintableInterface.registerInterface_ header_
    jregisterMethod header_ "setCells" (\() -> setCells_impl this)
    jregisterMethod header_ "updateCells" (\() -> updateCells_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    jregisterMethod header_ "getX2" (\() -> getX2_impl this)
    jregisterMethod header_ "getY2" (\() -> getY2_impl this)
    jregisterMethod header_ "getZ2" (\() -> getZ2_impl this)
    jregisterMethod header_ "getCellWidth" (\() -> getCellWidth_impl this)
    jregisterMethod header_ "getCellHeight" (\() -> getCellHeight_impl this)
    jregisterMethod header_ "getCell" (\() -> getCell_impl this)
    jregisterMethod header_ "getColumns" (\() -> getColumns_impl this)
    jregisterMethod header_ "getRows" (\() -> getRows_impl this)
    jregisterMethod header_ "setCell" (\() -> setCell_impl this)
    jregisterMethod header_ "getHalfWidth" (\() -> getHalfWidth_impl this)
    jregisterMethod header_ "getHalfHeight" (\() -> getHalfHeight_impl this)
    jregisterMethod header_ "getDataId" (\() -> getDataId_impl this)
    jregisterMethod header_ "getHalfCellWidth" (\() -> getHalfCellWidth_impl this)
    jregisterMethod header_ "getHalfCellHeight" (\() -> getHalfCellHeight_impl this)
    jregisterMethod header_ "isOnTileLayer" (\() -> isOnTileLayer_impl this)
    jregisterMethod header_ "getAnimatedTile" (\() -> getAnimatedTile_impl this)
    pure this

initFields_ :: AllBinaryTiledLayer -> IO ()
initFields_ this = do
    jset this.cellWidth (0)
    jset this.cellHeight (0)
    jset this.halfWidth (0)
    jset this.halfHeight (0)
    jset this.halfCellWidth (0)
    jset this.halfCellHeight (0)
    jset this.dataId (javaNull)
    pure ()

new_5 :: Int -> Int -> Int -> Int -> Int -> IO AllBinaryTiledLayer
new_5 dataId width height cellWidth cellHeight = do
    this <- newRecord_
    init_5 this dataId width height cellWidth cellHeight
    pure this

init_5 :: AllBinaryTiledLayer -> Int -> Int -> Int -> Int -> Int -> IO ()
init_5 this dataId width height cellWidth cellHeight = do
        Layer.init_2 this.base (0) (0)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).dataId (dataId)
        Control.Monad.void (Layer.setLayerWidth this width)
        Control.Monad.void (Layer.setLayerHeight this height)
        Control.Monad.void (Layer.setPosition_super this.base 0 0 0)
        jset (this).cellWidth (cellWidth)
        jset (this).cellHeight (cellHeight)
        jset (this).halfWidth ((((jio (Layer.getWidth this)) `Data.Bits.shiftR` 1)))
        jset (this).halfHeight ((((jio (Layer.getHeight this)) `Data.Bits.shiftR` 1)))
        jset (this).halfCellWidth (((cellWidth `Data.Bits.shiftR` 1)))
        jset (this).halfCellHeight (((cellHeight `Data.Bits.shiftR` 1)))
        pure ()


setCells :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> IO (())
setCells object_ a1 = jmethod object_ "setCells" (\() -> (setCells_impl (javaCast object_ :: AllBinaryTiledLayer))) () a1

setCells_super :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> IO (())
setCells_super object_ a1 = (setCells_impl (javaCast object_ :: AllBinaryTiledLayer)) a1

setCells_impl :: AllBinaryTiledLayer -> JavaArray (JavaArray (Int)) -> IO (())
setCells_impl this mapTwoDArray = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Start: r: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jlength mapTwoDArray))
        Control.Monad.void (StringMaker.append stringBuffer " c: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jlength (jindex mapTwoDArray (0))))
        Control.Monad.void (StringMaker.append stringBuffer " rows: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (AllBinaryTiledLayer.getRows this)))
        Control.Monad.void (StringMaker.append stringBuffer " columns: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (AllBinaryTiledLayer.getColumns this)))
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString stringBuffer)) this "setCells")
        rows <- (AllBinaryTiledLayer.getRows this)
        columns <- (AllBinaryTiledLayer.getColumns this)
        forM_ [0 .. columns - 1] $ \col -> javaIteration (pure ()) $ do
            forM_ [0 .. rows - 1] $ \row -> javaIteration (pure ()) $ do
                Control.Monad.void (AllBinaryTiledLayer.setCell this col row (jindex ((jindex mapTwoDArray (row))) (col)))
        pure ()


updateCells :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> Int -> Int -> IO (())
updateCells object_ a1 a2 a3 = jmethod object_ "updateCells" (\() -> (updateCells_impl (javaCast object_ :: AllBinaryTiledLayer))) () a1 a2 a3

updateCells_super :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> Int -> Int -> IO (())
updateCells_super object_ a1 a2 a3 = (updateCells_impl (javaCast object_ :: AllBinaryTiledLayer)) a1 a2 a3

updateCells_impl :: AllBinaryTiledLayer -> JavaArray (JavaArray (Int)) -> Int -> Int -> IO (())
updateCells_impl this mapTwoDArray fromTileId toTileId = do
        rows <- (AllBinaryTiledLayer.getRows this)
        columns <- (AllBinaryTiledLayer.getColumns this)
        forM_ [0 .. columns - 1] $ \col -> javaIteration (pure ()) $ do
            forM_ [0 .. rows - 1] $ \row -> javaIteration (pure ()) $ do
                when (fromTileId == (jindex ((jindex mapTwoDArray (row))) (col))) $ do
                    jsetIndex ((jindex mapTwoDArray (row))) (col) (toTileId)
                    Control.Monad.void (AllBinaryTiledLayer.setCell this col row (jindex ((jindex mapTwoDArray (row))) (col)))
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: AllBinaryTiledLayer))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: AllBinaryTiledLayer))

getName_impl :: AllBinaryTiledLayer -> IO (String)
getName_impl this = do
        (Class.getName ((jio (jobjectGetClass this))))


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: AllBinaryTiledLayer))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: AllBinaryTiledLayer)) a1

paint_impl :: AllBinaryTiledLayer -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: AllBinaryTiledLayer))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: AllBinaryTiledLayer)) a1

paintThreed_impl :: AllBinaryTiledLayer -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        pure ()


getX2 :: (JavaObjectClass this_) => this_ -> IO (Int)
getX2 object_ = jmethod object_ "getX2" (\() -> (getX2_impl (javaCast object_ :: AllBinaryTiledLayer))) ()

getX2_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getX2_super object_ = (getX2_impl (javaCast object_ :: AllBinaryTiledLayer))

getX2_impl :: AllBinaryTiledLayer -> IO (Int)
getX2_impl this = do
        pure (((jget (this).base.x) + (jio (Layer.getWidth this))))


getY2 :: (JavaObjectClass this_) => this_ -> IO (Int)
getY2 object_ = jmethod object_ "getY2" (\() -> (getY2_impl (javaCast object_ :: AllBinaryTiledLayer))) ()

getY2_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getY2_super object_ = (getY2_impl (javaCast object_ :: AllBinaryTiledLayer))

getY2_impl :: AllBinaryTiledLayer -> IO (Int)
getY2_impl this = do
        pure (((jget (this).base.y) + (jio (Layer.getHeight this))))


getZ2 :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ2 object_ = jmethod object_ "getZ2" (\() -> (getZ2_impl (javaCast object_ :: AllBinaryTiledLayer))) ()

getZ2_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ2_super object_ = (getZ2_impl (javaCast object_ :: AllBinaryTiledLayer))

getZ2_impl :: AllBinaryTiledLayer -> IO (Int)
getZ2_impl this = do
        pure ((Prelude.fromInteger (jnumericInteger (((jget (this).base.z) + (jio (Layer.getDepth this)))))))


getCellWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getCellWidth object_ = jmethod object_ "getCellWidth" (\() -> (getCellWidth_impl (javaCast object_ :: AllBinaryTiledLayer))) ()

getCellWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCellWidth_super object_ = (getCellWidth_impl (javaCast object_ :: AllBinaryTiledLayer))

getCellWidth_impl :: AllBinaryTiledLayer -> IO (Int)
getCellWidth_impl this = do
        pure ((jget (this).cellWidth))


getCellHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getCellHeight object_ = jmethod object_ "getCellHeight" (\() -> (getCellHeight_impl (javaCast object_ :: AllBinaryTiledLayer))) ()

getCellHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCellHeight_super object_ = (getCellHeight_impl (javaCast object_ :: AllBinaryTiledLayer))

getCellHeight_impl :: AllBinaryTiledLayer -> IO (Int)
getCellHeight_impl this = do
        pure ((jget (this).cellHeight))


getCell :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
getCell object_ a1 a2 = jmethod object_ "getCell" (\() -> (getCell_impl (javaCast object_ :: AllBinaryTiledLayer))) () a1 a2

getCell_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
getCell_super object_ a1 a2 = (getCell_impl (javaCast object_ :: AllBinaryTiledLayer)) a1 a2

getCell_impl :: AllBinaryTiledLayer -> Int -> Int -> IO (Int)
getCell_impl this col row = do
        pure ((Prelude.negate 1))


getColumns :: (JavaObjectClass this_) => this_ -> IO (Int)
getColumns object_ = jmethod object_ "getColumns" (\() -> (getColumns_impl (javaCast object_ :: AllBinaryTiledLayer))) ()

getColumns_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getColumns_super object_ = (getColumns_impl (javaCast object_ :: AllBinaryTiledLayer))

getColumns_impl :: AllBinaryTiledLayer -> IO (Int)
getColumns_impl this = do
        pure ((Prelude.negate 1))


getRows :: (JavaObjectClass this_) => this_ -> IO (Int)
getRows object_ = jmethod object_ "getRows" (\() -> (getRows_impl (javaCast object_ :: AllBinaryTiledLayer))) ()

getRows_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRows_super object_ = (getRows_impl (javaCast object_ :: AllBinaryTiledLayer))

getRows_impl :: AllBinaryTiledLayer -> IO (Int)
getRows_impl this = do
        pure ((Prelude.negate 1))


setCell :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
setCell object_ a1 a2 a3 = jmethod object_ "setCell" (\() -> (setCell_impl (javaCast object_ :: AllBinaryTiledLayer))) () a1 a2 a3

setCell_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
setCell_super object_ a1 a2 a3 = (setCell_impl (javaCast object_ :: AllBinaryTiledLayer)) a1 a2 a3

setCell_impl :: AllBinaryTiledLayer -> Int -> Int -> Int -> IO (())
setCell_impl this col row tileIndex = do
        pure ()


getHalfWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfWidth object_ = jmethod object_ "getHalfWidth" (\() -> (getHalfWidth_impl (javaCast object_ :: AllBinaryTiledLayer))) ()

getHalfWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfWidth_super object_ = (getHalfWidth_impl (javaCast object_ :: AllBinaryTiledLayer))

getHalfWidth_impl :: AllBinaryTiledLayer -> IO (Int)
getHalfWidth_impl this = do
        pure ((jget (this).halfWidth))


getHalfHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfHeight object_ = jmethod object_ "getHalfHeight" (\() -> (getHalfHeight_impl (javaCast object_ :: AllBinaryTiledLayer))) ()

getHalfHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfHeight_super object_ = (getHalfHeight_impl (javaCast object_ :: AllBinaryTiledLayer))

getHalfHeight_impl :: AllBinaryTiledLayer -> IO (Int)
getHalfHeight_impl this = do
        pure ((jget (this).halfHeight))


getDataId :: (JavaObjectClass this_) => this_ -> IO (Int)
getDataId object_ = jmethod object_ "getDataId" (\() -> (getDataId_impl (javaCast object_ :: AllBinaryTiledLayer))) ()

getDataId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDataId_super object_ = (getDataId_impl (javaCast object_ :: AllBinaryTiledLayer))

getDataId_impl :: AllBinaryTiledLayer -> IO (Int)
getDataId_impl this = do
        pure ((jget (this).dataId))


getHalfCellWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfCellWidth object_ = jmethod object_ "getHalfCellWidth" (\() -> (getHalfCellWidth_impl (javaCast object_ :: AllBinaryTiledLayer))) ()

getHalfCellWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfCellWidth_super object_ = (getHalfCellWidth_impl (javaCast object_ :: AllBinaryTiledLayer))

getHalfCellWidth_impl :: AllBinaryTiledLayer -> IO (Int)
getHalfCellWidth_impl this = do
        pure ((jget (this).halfCellWidth))


getHalfCellHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfCellHeight object_ = jmethod object_ "getHalfCellHeight" (\() -> (getHalfCellHeight_impl (javaCast object_ :: AllBinaryTiledLayer))) ()

getHalfCellHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfCellHeight_super object_ = (getHalfCellHeight_impl (javaCast object_ :: AllBinaryTiledLayer))

getHalfCellHeight_impl :: AllBinaryTiledLayer -> IO (Int)
getHalfCellHeight_impl this = do
        pure ((jget (this).halfCellHeight))


isOnTileLayer :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Bool)
isOnTileLayer object_ a1 a2 = jmethod object_ "isOnTileLayer" (\() -> (isOnTileLayer_impl (javaCast object_ :: AllBinaryTiledLayer))) () a1 a2

isOnTileLayer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Bool)
isOnTileLayer_super object_ a1 a2 = (isOnTileLayer_impl (javaCast object_ :: AllBinaryTiledLayer)) a1 a2

isOnTileLayer_impl :: AllBinaryTiledLayer -> Int -> Int -> IO (Bool)
isOnTileLayer_impl this column row = do
    javaCatchReturn $ do
        if (((((jio (AllBinaryTiledLayer.getColumns this)) > column) && ((jio (AllBinaryTiledLayer.getRows this)) > row)) && (row >= 0)) && (column >= 0)) then do
            javaReturn (True)
        else do
            javaReturn (False)


getAnimatedTile :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAnimatedTile object_ a1 = jmethod object_ "getAnimatedTile" (\() -> (getAnimatedTile_impl (javaCast object_ :: AllBinaryTiledLayer))) () a1

getAnimatedTile_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAnimatedTile_super object_ a1 = (getAnimatedTile_impl (javaCast object_ :: AllBinaryTiledLayer)) a1

getAnimatedTile_impl :: AllBinaryTiledLayer -> Int -> IO (Int)
getAnimatedTile_impl this animationTileIndex = do
        pure (animationTileIndex)


