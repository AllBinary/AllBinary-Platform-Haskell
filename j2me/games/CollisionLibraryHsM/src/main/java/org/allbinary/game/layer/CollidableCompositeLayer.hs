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
-- package org.allbinary.game.layer
module CollidableCompositeLayer (module CollidableCompositeLayer, module AllBinaryGameLayer) where

import AllBinaryGameLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getNullInstance, getNullInstance_super, getNullInstance_impl, getArtificialIntelligenceInterface, getArtificialIntelligenceInterface_super, getArtificialIntelligenceInterface_impl, getCollidableInferface, getCollidableInferface_super, getCollidableInferface_impl, setCollidableInferface, setCollidableInferface_super, setCollidableInferface_impl, implmentsCollidableInterface, implmentsCollidableInterface_super, implmentsCollidableInterface_impl, toStringAppend, toStringAppend_super, toStringAppend_impl, toString, toString_super, toString_impl, nULL_COLLIDABLE_COMPOSITE_LAYER, collidableInferface)
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
import qualified CommonStrings -- same package or java.lang
import qualified ArtificialIntelligence -- org.allbinary.ai.ArtificialIntelligence
import qualified ArtificialIntelligenceInterface -- org.allbinary.ai.ArtificialIntelligenceInterface
import qualified CollidableBaseBehavior -- org.allbinary.game.collision.CollidableBaseBehavior
import qualified CollidableBaseBehaviorFactory -- org.allbinary.game.collision.CollidableBaseBehaviorFactory
import qualified CollidableInterfaceCompositeInterface -- org.allbinary.game.collision.CollidableInterfaceCompositeInterface
import qualified CollidableNeverCollideBehaviorFactory -- org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified RectangleFactory -- org.allbinary.graphics.RectangleFactory
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified AllBinaryGameLayer

-- implements CollidableInterfaceCompositeInterface
data CollidableCompositeLayer = CollidableCompositeLayer
    { header_ :: JavaHeader
    , base :: AllBinaryGameLayer.AllBinaryGameLayer
    , collidableInferface :: IORef (CollidableBaseBehavior.CollidableBaseBehavior)
    }

instance JavaNull CollidableCompositeLayer where
    javaNull = javaNullRecord "CollidableCompositeLayer"

instance JavaEquals CollidableCompositeLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollidableCompositeLayer where
    (==) = jrecordEquals

instance JavaObjectClass CollidableCompositeLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_COLLIDABLE_COMPOSITE_LAYER #-}
nULL_COLLIDABLE_COMPOSITE_LAYER = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

newRecord_ :: IO CollidableCompositeLayer
newRecord_ = do
    base <- AllBinaryGameLayer.newRecord_
    let header_ = base.header_
    collidableInferface <- newIORef javaNull
    let this = CollidableCompositeLayer header_ base collidableInferface
    jregisterLevel header_ this
    CollidableInterfaceCompositeInterface.registerInterface_ header_
    jregisterMethod header_ "getArtificialIntelligenceInterface" (\() -> getArtificialIntelligenceInterface_impl this)
    jregisterMethod header_ "getCollidableInferface" (\() -> getCollidableInferface_impl this)
    jregisterMethod header_ "setCollidableInferface" (\() -> setCollidableInferface_impl this)
    jregisterMethod header_ "implmentsCollidableInterface" (\() -> implmentsCollidableInterface_impl this)
    jregisterMethod header_ "toStringAppend" (\() -> toStringAppend_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: CollidableCompositeLayer -> IO ()
initFields_ this = do
    jset this.collidableInferface =<< (CollidableNeverCollideBehaviorFactory.createBehavior ((jio (CollidableNeverCollideBehaviorFactory.getInstance))))
    pure ()


getNullInstance :: IO (CollidableCompositeLayer)
getNullInstance = do
        when ((jget CollidableCompositeLayer.nULL_COLLIDABLE_COMPOSITE_LAYER) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_4 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (RectangleFactory.sINGLETON) (ViewPositionBase.nULL_VIEW_POSITION) (jio (CollidableNeverCollideBehaviorFactory.getInstance)))
            jset CollidableCompositeLayer.nULL_COLLIDABLE_COMPOSITE_LAYER (assignedValue)
        pure ((javaCast (jget CollidableCompositeLayer.nULL_COLLIDABLE_COMPOSITE_LAYER) :: CollidableCompositeLayer))

new_4 :: String -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> CollidableBaseBehaviorFactory.CollidableBaseBehaviorFactory -> IO CollidableCompositeLayer
new_4 name layerInfo viewPosition collidableBaseBehaviorFactory = do
    this <- newRecord_
    init_4 this name layerInfo viewPosition collidableBaseBehaviorFactory
    pure this

init_4 :: CollidableCompositeLayer -> String -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> CollidableBaseBehaviorFactory.CollidableBaseBehaviorFactory -> IO ()
init_4 this name layerInfo viewPosition collidableBaseBehaviorFactory = do
        AllBinaryGameLayer.init_3 this.base (name) (layerInfo) (viewPosition)
        initFields_ this
        pure () -- super(...) is in the record above
        when ((jtoObject collidableBaseBehaviorFactory) /= (jtoObject (jio (CollidableNeverCollideBehaviorFactory.getInstance)))) $ do
            Control.Monad.void (CollidableCompositeLayer.setCollidableInferface this (jio (CollidableBaseBehaviorFactory.createBehavior collidableBaseBehaviorFactory)))
        pure ()


getArtificialIntelligenceInterface :: (JavaObjectClass this_) => this_ -> IO (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface)
getArtificialIntelligenceInterface object_ = jmethod object_ "getArtificialIntelligenceInterface" (\() -> (getArtificialIntelligenceInterface_impl (javaCast object_ :: CollidableCompositeLayer))) ()

getArtificialIntelligenceInterface_super :: (JavaObjectClass this_) => this_ -> IO (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface)
getArtificialIntelligenceInterface_super object_ = (getArtificialIntelligenceInterface_impl (javaCast object_ :: CollidableCompositeLayer))

getArtificialIntelligenceInterface_impl :: CollidableCompositeLayer -> IO (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface)
getArtificialIntelligenceInterface_impl this = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jget (this).base.commonStrings)).nOT_IMPLEMENTED) this)
        (fmap (\value_ -> javaCast value_ :: ArtificialIntelligenceInterface.ArtificialIntelligenceInterface) (ArtificialIntelligence.getInstance))


getCollidableInferface :: (JavaObjectClass this_) => this_ -> IO (CollidableBaseBehavior.CollidableBaseBehavior)
getCollidableInferface object_ = jmethod object_ "getCollidableInferface" (\() -> (getCollidableInferface_impl (javaCast object_ :: CollidableCompositeLayer))) ()

getCollidableInferface_super :: (JavaObjectClass this_) => this_ -> IO (CollidableBaseBehavior.CollidableBaseBehavior)
getCollidableInferface_super object_ = (getCollidableInferface_impl (javaCast object_ :: CollidableCompositeLayer))

getCollidableInferface_impl :: CollidableCompositeLayer -> IO (CollidableBaseBehavior.CollidableBaseBehavior)
getCollidableInferface_impl this = do
        pure ((jget (this).collidableInferface))


setCollidableInferface :: (JavaObjectClass this_) => this_ -> CollidableBaseBehavior.CollidableBaseBehavior -> IO (())
setCollidableInferface object_ a1 = jmethod object_ "setCollidableInferface" (\() -> (setCollidableInferface_impl (javaCast object_ :: CollidableCompositeLayer))) () a1

setCollidableInferface_super :: (JavaObjectClass this_) => this_ -> CollidableBaseBehavior.CollidableBaseBehavior -> IO (())
setCollidableInferface_super object_ a1 = (setCollidableInferface_impl (javaCast object_ :: CollidableCompositeLayer)) a1

setCollidableInferface_impl :: CollidableCompositeLayer -> CollidableBaseBehavior.CollidableBaseBehavior -> IO (())
setCollidableInferface_impl this collidableInferface = do
        jset (this).collidableInferface (collidableInferface)
        pure ()


implmentsCollidableInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsCollidableInterface object_ = jmethod object_ "implmentsCollidableInterface" (\() -> (implmentsCollidableInterface_impl (javaCast object_ :: CollidableCompositeLayer))) ()

implmentsCollidableInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsCollidableInterface_super object_ = (implmentsCollidableInterface_impl (javaCast object_ :: CollidableCompositeLayer))

implmentsCollidableInterface_impl :: CollidableCompositeLayer -> IO (Bool)
implmentsCollidableInterface_impl this = do
        pure (True)


toStringAppend :: (JavaObjectClass this_) => this_ -> StringMaker.StringMaker -> IO (())
toStringAppend object_ a1 = jmethod object_ "toStringAppend" (\() -> (toStringAppend_impl (javaCast object_ :: CollidableCompositeLayer))) () a1

toStringAppend_super :: (JavaObjectClass this_) => this_ -> StringMaker.StringMaker -> IO (())
toStringAppend_super object_ a1 = (toStringAppend_impl (javaCast object_ :: CollidableCompositeLayer)) a1

toStringAppend_impl :: CollidableCompositeLayer -> StringMaker.StringMaker -> IO (())
toStringAppend_impl this stringBuffer = do
        commonSeps <- (CommonSeps.getInstance)
        Control.Monad.void (AllBinaryGameLayer.toStringAppend_super this.base stringBuffer)
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer (jio (CollidableBaseBehavior.toString ((jio (CollidableCompositeLayer.getCollidableInferface this))))))
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: CollidableCompositeLayer))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: CollidableCompositeLayer))

toString_impl :: CollidableCompositeLayer -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (CollidableCompositeLayer.toStringAppend this stringBuffer)
        (StringMaker.toString stringBuffer)


