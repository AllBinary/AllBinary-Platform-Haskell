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
-- package org.allbinary.layer
module AllBinaryLayer (module AllBinaryLayer, module Layer) where

import Layer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onChangeEvent, onChangeEvent_super, onChangeEvent_impl, paintThreed, paintThreed_super, paintThreed_impl, getX2, getX2_super, getX2_impl, getY2, getY2_super, getY2_impl, getZ2, getZ2_super, getZ2_impl, getName, getName_super, getName_impl, setHalfWidth, setHalfWidth_super, setHalfWidth_impl, getHalfWidth, getHalfWidth_super, getHalfWidth_impl, setHalfHeight, setHalfHeight_super, setHalfHeight_impl, getHalfHeight, getHalfHeight_super, getHalfHeight_impl, getHalfDepth, getHalfDepth_super, getHalfDepth_impl, getViewPosition, getViewPosition_super, getViewPosition_impl, setViewPosition, setViewPosition_super, setViewPosition_impl, getGroupInterface, getGroupInterface_super, getGroupInterface_impl, implmentsTickableInterface, implmentsTickableInterface_super, implmentsTickableInterface_impl, implmentsGameInputInterface, implmentsGameInputInterface_super, implmentsGameInputInterface_impl, implmentsArtificialIntelligenceCompositeInterface, implmentsArtificialIntelligenceCompositeInterface_super, implmentsArtificialIntelligenceCompositeInterface_impl, implmentsCollidableInterface, implmentsCollidableInterface_super, implmentsCollidableInterface_impl, implementsThreedInterface, implementsThreedInterface_super, implementsThreedInterface_impl, getType, getType_super, getType_impl, getMultiPlayerType, getMultiPlayerType_super, getMultiPlayerType_impl, toStringAppend, toStringAppend_super, toStringAppend_impl, toString, toString_super, toString_impl, nULL_ALLBINARY_LAYER, viewPositionEvent, halfWidth, halfHeight, name, viewPosition, tYPE)
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
import qualified BasicGroupFactory -- org.allbinary.game.identification.BasicGroupFactory
import qualified Group -- org.allbinary.game.identification.Group
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified RectangleFactory -- org.allbinary.graphics.RectangleFactory
import qualified OpenGLFeatureUtil -- org.allbinary.graphics.opengles.OpenGLFeatureUtil
import qualified TsUtil -- org.allbinary.TsUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified PositionStrings -- org.allbinary.math.PositionStrings
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase
import qualified ViewPositionEvent -- org.allbinary.view.event.ViewPositionEvent
import qualified Layer
import qualified LayerInterface

-- implements LayerInterface
data AllBinaryLayer = AllBinaryLayer
    { header_ :: JavaHeader
    , base :: Layer.Layer
    , viewPositionEvent :: IORef (ViewPositionEvent.ViewPositionEvent)
    , halfWidth :: IORef (Int)
    , halfHeight :: IORef (Int)
    , name :: IORef (String)
    , viewPosition :: IORef (ViewPositionBase.ViewPositionBase)
    }

instance JavaNull AllBinaryLayer where
    javaNull = javaNullRecord "AllBinaryLayer"

instance JavaEquals AllBinaryLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryLayer where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_ALLBINARY_LAYER #-}
nULL_ALLBINARY_LAYER = unsafePerformIO ((new_3 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (RectangleFactory.sINGLETON) (ViewPositionBase.nULL_VIEW_POSITION)))

tYPE = "Type: "

newRecord_ :: IO AllBinaryLayer
newRecord_ = do
    base <- Layer.newRecord_
    let header_ = base.header_
    viewPositionEvent <- newIORef javaNull
    halfWidth <- newIORef 0
    halfHeight <- newIORef 0
    name <- newIORef ""
    viewPosition <- newIORef javaNull
    let this = AllBinaryLayer header_ base viewPositionEvent halfWidth halfHeight name viewPosition
    jregisterLevel header_ this
    LayerInterface.registerInterface_ header_
    jregisterMethod header_ "onChangeEvent" (\() -> onChangeEvent_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    jregisterMethod header_ "getX2" (\() -> getX2_impl this)
    jregisterMethod header_ "getY2" (\() -> getY2_impl this)
    jregisterMethod header_ "getZ2" (\() -> getZ2_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "setHalfWidth" (\() -> setHalfWidth_impl this)
    jregisterMethod header_ "getHalfWidth" (\() -> getHalfWidth_impl this)
    jregisterMethod header_ "setHalfHeight" (\() -> setHalfHeight_impl this)
    jregisterMethod header_ "getHalfHeight" (\() -> getHalfHeight_impl this)
    jregisterMethod header_ "getHalfDepth" (\() -> getHalfDepth_impl this)
    jregisterMethod header_ "getViewPosition" (\() -> getViewPosition_impl this)
    jregisterMethod header_ "setViewPosition" (\() -> setViewPosition_impl this)
    jregisterMethod header_ "getGroupInterface" (\() -> getGroupInterface_impl this)
    jregisterMethod header_ "implmentsTickableInterface" (\() -> implmentsTickableInterface_impl this)
    jregisterMethod header_ "implmentsGameInputInterface" (\() -> implmentsGameInputInterface_impl this)
    jregisterMethod header_ "implmentsArtificialIntelligenceCompositeInterface" (\() -> implmentsArtificialIntelligenceCompositeInterface_impl this)
    jregisterMethod header_ "implmentsCollidableInterface" (\() -> implmentsCollidableInterface_impl this)
    jregisterMethod header_ "implementsThreedInterface" (\() -> implementsThreedInterface_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    jregisterMethod header_ "getMultiPlayerType" (\() -> getMultiPlayerType_impl this)
    jregisterMethod header_ "toStringAppend" (\() -> toStringAppend_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: AllBinaryLayer -> IO ()
initFields_ this = do
    jset this.viewPositionEvent =<< (ViewPositionEvent.new_1 this)
    jset this.halfWidth (0)
    jset this.halfHeight (0)
    jset this.name (javaNull)
    jset this.viewPosition (ViewPositionBase.nULL_VIEW_POSITION)
    pure ()

new_3 :: String -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> IO AllBinaryLayer
new_3 name rectangle viewPosition = do
    this <- newRecord_
    init_3 this name rectangle viewPosition
    pure this

init_3 :: AllBinaryLayer -> String -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> IO ()
init_3 this name rectangle viewPosition = do
        Layer.init_2 this.base (jio (Rectangle.getWidth rectangle)) (jio (Rectangle.getHeight rectangle))
        initFields_ this
        pure () -- super(...) is in the record above
        localName <- newIORef ("")
        if (name == javaNull) then do
            assignedValue <- (Class.getName ((jio (jobjectGetClass this))))
            jset localName (assignedValue)
        else do
            assignedValue <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) name))) (jget ((jio (CommonSeps.getInstance))).cOLON)))) (Numeric.showHex (jio (TsUtil.hashCode ((jio (TsUtil.getInstance))) this)) "")))))
            jset localName (assignedValue)
        jset (this).name ((jget localName))
        point <- (Rectangle.getPoint rectangle)
        Control.Monad.void (Layer.setPosition this (jio (GPoint.getX point)) (jio (GPoint.getY point)) (jio (GPoint.getZ point)))
        Control.Monad.void (AllBinaryLayer.setHalfWidth this (((jio (Layer.getWidth this)) `Data.Bits.shiftR` 1)))
        Control.Monad.void (AllBinaryLayer.setHalfHeight this (((jio (Layer.getHeight this)) `Data.Bits.shiftR` 1)))
        jset (this).viewPosition (viewPosition)
        Control.Monad.void (ViewPositionBase.setAllbinaryLayer ((jget (this).viewPosition)) this)
        pure ()


-- throws Exception
onChangeEvent :: (JavaObjectClass this_) => this_ -> ViewPositionEvent.ViewPositionEvent -> IO (())
onChangeEvent object_ a1 = jmethod object_ "onChangeEvent" (\() -> (onChangeEvent_impl (javaCast object_ :: AllBinaryLayer))) () a1

onChangeEvent_super :: (JavaObjectClass this_) => this_ -> ViewPositionEvent.ViewPositionEvent -> IO (())
onChangeEvent_super object_ a1 = (onChangeEvent_impl (javaCast object_ :: AllBinaryLayer)) a1

onChangeEvent_impl :: AllBinaryLayer -> ViewPositionEvent.ViewPositionEvent -> IO (())
onChangeEvent_impl this layerManagerEvent = do
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: AllBinaryLayer))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: AllBinaryLayer)) a1

paintThreed_impl :: AllBinaryLayer -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        pure ()


getX2 :: (JavaObjectClass this_) => this_ -> IO (Int)
getX2 object_ = jmethod object_ "getX2" (\() -> (getX2_impl (javaCast object_ :: AllBinaryLayer))) ()

getX2_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getX2_super object_ = (getX2_impl (javaCast object_ :: AllBinaryLayer))

getX2_impl :: AllBinaryLayer -> IO (Int)
getX2_impl this = do
        pure (((jio (Layer.getXP this)) + (jio (Layer.getWidth this))))


getY2 :: (JavaObjectClass this_) => this_ -> IO (Int)
getY2 object_ = jmethod object_ "getY2" (\() -> (getY2_impl (javaCast object_ :: AllBinaryLayer))) ()

getY2_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getY2_super object_ = (getY2_impl (javaCast object_ :: AllBinaryLayer))

getY2_impl :: AllBinaryLayer -> IO (Int)
getY2_impl this = do
        pure (((jio (Layer.getYP this)) + (jio (Layer.getHeight this))))


getZ2 :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ2 object_ = jmethod object_ "getZ2" (\() -> (getZ2_impl (javaCast object_ :: AllBinaryLayer))) ()

getZ2_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ2_super object_ = (getZ2_impl (javaCast object_ :: AllBinaryLayer))

getZ2_impl :: AllBinaryLayer -> IO (Int)
getZ2_impl this = do
        pure ((Prelude.fromInteger (jnumericInteger (((jio (Layer.getZP this)) + (jio (Layer.getDepth this)))))))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: AllBinaryLayer))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: AllBinaryLayer))

getName_impl :: AllBinaryLayer -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


setHalfWidth :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHalfWidth object_ a1 = jmethod object_ "setHalfWidth" (\() -> (setHalfWidth_impl (javaCast object_ :: AllBinaryLayer))) () a1

setHalfWidth_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHalfWidth_super object_ a1 = (setHalfWidth_impl (javaCast object_ :: AllBinaryLayer)) a1

setHalfWidth_impl :: AllBinaryLayer -> Int -> IO (())
setHalfWidth_impl this halfWidth = do
        jset (this).halfWidth (halfWidth)
        pure ()


getHalfWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfWidth object_ = jmethod object_ "getHalfWidth" (\() -> (getHalfWidth_impl (javaCast object_ :: AllBinaryLayer))) ()

getHalfWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfWidth_super object_ = (getHalfWidth_impl (javaCast object_ :: AllBinaryLayer))

getHalfWidth_impl :: AllBinaryLayer -> IO (Int)
getHalfWidth_impl this = do
        pure ((jget (this).halfWidth))


setHalfHeight :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHalfHeight object_ a1 = jmethod object_ "setHalfHeight" (\() -> (setHalfHeight_impl (javaCast object_ :: AllBinaryLayer))) () a1

setHalfHeight_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHalfHeight_super object_ a1 = (setHalfHeight_impl (javaCast object_ :: AllBinaryLayer)) a1

setHalfHeight_impl :: AllBinaryLayer -> Int -> IO (())
setHalfHeight_impl this halfHeight = do
        jset (this).halfHeight (halfHeight)
        pure ()


getHalfHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfHeight object_ = jmethod object_ "getHalfHeight" (\() -> (getHalfHeight_impl (javaCast object_ :: AllBinaryLayer))) ()

getHalfHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfHeight_super object_ = (getHalfHeight_impl (javaCast object_ :: AllBinaryLayer))

getHalfHeight_impl :: AllBinaryLayer -> IO (Int)
getHalfHeight_impl this = do
        pure ((jget (this).halfHeight))


getHalfDepth :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfDepth object_ = jmethod object_ "getHalfDepth" (\() -> (getHalfDepth_impl (javaCast object_ :: AllBinaryLayer))) ()

getHalfDepth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfDepth_super object_ = (getHalfDepth_impl (javaCast object_ :: AllBinaryLayer))

getHalfDepth_impl :: AllBinaryLayer -> IO (Int)
getHalfDepth_impl this = do
        pure (((Prelude.fromInteger (jnumericInteger (jio (Layer.getDepth this)))) `quot` 2))


getViewPosition :: (JavaObjectClass this_) => this_ -> IO (ViewPositionBase.ViewPositionBase)
getViewPosition object_ = jmethod object_ "getViewPosition" (\() -> (getViewPosition_impl (javaCast object_ :: AllBinaryLayer))) ()

getViewPosition_super :: (JavaObjectClass this_) => this_ -> IO (ViewPositionBase.ViewPositionBase)
getViewPosition_super object_ = (getViewPosition_impl (javaCast object_ :: AllBinaryLayer))

getViewPosition_impl :: AllBinaryLayer -> IO (ViewPositionBase.ViewPositionBase)
getViewPosition_impl this = do
        pure ((jget (this).viewPosition))


setViewPosition :: (JavaObjectClass this_) => this_ -> ViewPositionBase.ViewPositionBase -> IO (())
setViewPosition object_ a1 = jmethod object_ "setViewPosition" (\() -> (setViewPosition_impl (javaCast object_ :: AllBinaryLayer))) () a1

setViewPosition_super :: (JavaObjectClass this_) => this_ -> ViewPositionBase.ViewPositionBase -> IO (())
setViewPosition_super object_ a1 = (setViewPosition_impl (javaCast object_ :: AllBinaryLayer)) a1

setViewPosition_impl :: AllBinaryLayer -> ViewPositionBase.ViewPositionBase -> IO (())
setViewPosition_impl this viewPosition = do
        jset (this).viewPosition (viewPosition)
        pure ()


getGroupInterface :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Group.Group))
getGroupInterface object_ = jmethod object_ "getGroupInterface" (\() -> (getGroupInterface_impl (javaCast object_ :: AllBinaryLayer))) ()

getGroupInterface_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Group.Group))
getGroupInterface_super object_ = (getGroupInterface_impl (javaCast object_ :: AllBinaryLayer))

getGroupInterface_impl :: AllBinaryLayer -> IO (JavaArray (Group.Group))
getGroupInterface_impl this = do
        pure ((jget ((jio (BasicGroupFactory.getInstance))).nONE_ARRAY))


implmentsTickableInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsTickableInterface object_ = jmethod object_ "implmentsTickableInterface" (\() -> (implmentsTickableInterface_impl (javaCast object_ :: AllBinaryLayer))) ()

implmentsTickableInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsTickableInterface_super object_ = (implmentsTickableInterface_impl (javaCast object_ :: AllBinaryLayer))

implmentsTickableInterface_impl :: AllBinaryLayer -> IO (Bool)
implmentsTickableInterface_impl this = do
        pure (False)


implmentsGameInputInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsGameInputInterface object_ = jmethod object_ "implmentsGameInputInterface" (\() -> (implmentsGameInputInterface_impl (javaCast object_ :: AllBinaryLayer))) ()

implmentsGameInputInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsGameInputInterface_super object_ = (implmentsGameInputInterface_impl (javaCast object_ :: AllBinaryLayer))

implmentsGameInputInterface_impl :: AllBinaryLayer -> IO (Bool)
implmentsGameInputInterface_impl this = do
        pure (False)


implmentsArtificialIntelligenceCompositeInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsArtificialIntelligenceCompositeInterface object_ = jmethod object_ "implmentsArtificialIntelligenceCompositeInterface" (\() -> (implmentsArtificialIntelligenceCompositeInterface_impl (javaCast object_ :: AllBinaryLayer))) ()

implmentsArtificialIntelligenceCompositeInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsArtificialIntelligenceCompositeInterface_super object_ = (implmentsArtificialIntelligenceCompositeInterface_impl (javaCast object_ :: AllBinaryLayer))

implmentsArtificialIntelligenceCompositeInterface_impl :: AllBinaryLayer -> IO (Bool)
implmentsArtificialIntelligenceCompositeInterface_impl this = do
        pure (False)


implmentsCollidableInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsCollidableInterface object_ = jmethod object_ "implmentsCollidableInterface" (\() -> (implmentsCollidableInterface_impl (javaCast object_ :: AllBinaryLayer))) ()

implmentsCollidableInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsCollidableInterface_super object_ = (implmentsCollidableInterface_impl (javaCast object_ :: AllBinaryLayer))

implmentsCollidableInterface_impl :: AllBinaryLayer -> IO (Bool)
implmentsCollidableInterface_impl this = do
        pure (False)


implementsThreedInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implementsThreedInterface object_ = jmethod object_ "implementsThreedInterface" (\() -> (implementsThreedInterface_impl (javaCast object_ :: AllBinaryLayer))) ()

implementsThreedInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implementsThreedInterface_super object_ = (implementsThreedInterface_impl (javaCast object_ :: AllBinaryLayer))

implementsThreedInterface_impl :: AllBinaryLayer -> IO (Bool)
implementsThreedInterface_impl this = do
        (OpenGLFeatureUtil.isAnyThreed ((jio (OpenGLFeatureUtil.getInstance))))


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: AllBinaryLayer))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: AllBinaryLayer))

getType_impl :: AllBinaryLayer -> IO (Int)
getType_impl this = do
        pure ((Prelude.negate 1))


getMultiPlayerType :: (JavaObjectClass this_) => this_ -> IO (Int)
getMultiPlayerType object_ = jmethod object_ "getMultiPlayerType" (\() -> (getMultiPlayerType_impl (javaCast object_ :: AllBinaryLayer))) ()

getMultiPlayerType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMultiPlayerType_super object_ = (getMultiPlayerType_impl (javaCast object_ :: AllBinaryLayer))

getMultiPlayerType_impl :: AllBinaryLayer -> IO (Int)
getMultiPlayerType_impl this = do
        pure ((Prelude.negate 1))


toStringAppend :: (JavaObjectClass this_) => this_ -> StringMaker.StringMaker -> IO (())
toStringAppend object_ a1 = jmethod object_ "toStringAppend" (\() -> (toStringAppend_impl (javaCast object_ :: AllBinaryLayer))) () a1

toStringAppend_super :: (JavaObjectClass this_) => this_ -> StringMaker.StringMaker -> IO (())
toStringAppend_super object_ a1 = (toStringAppend_impl (javaCast object_ :: AllBinaryLayer)) a1

toStringAppend_impl :: AllBinaryLayer -> StringMaker.StringMaker -> IO (())
toStringAppend_impl this stringBuffer = do
        commonSeps <- (CommonSeps.getInstance)
        positionStrings <- (PositionStrings.getInstance)
        commonLabels <- (CommonLabels.getInstance)
        Control.Monad.void (StringMaker.append stringBuffer (jio (AllBinaryLayer.getName this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).cOLON))
        Control.Monad.void (StringMaker.append stringBuffer (AllBinaryLayer.tYPE))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (AllBinaryLayer.getType this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (positionStrings).x_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jio (Layer.getXP this)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (positionStrings).y_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jio (Layer.getYP this)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (positionStrings).z_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jio (Layer.getZP this)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonLabels).wIDTH_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jio (Layer.getWidth this)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonLabels).hEIGHT_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jio (Layer.getHeight this)))))
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: AllBinaryLayer))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: AllBinaryLayer))

toString_impl :: AllBinaryLayer -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (AllBinaryLayer.toStringAppend this stringBuffer)
        (StringMaker.toString stringBuffer)


