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
-- package org.allbinary.game.collision
module CollidableBaseBehavior where

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
import qualified LayerCollisionUtil -- same package or java.lang
import qualified CollidableInterfaceCompositeInterface -- same package or java.lang
import qualified CollisionTypeFactory -- same package or java.lang
import qualified CollisionType -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified CollidableCompositeLayer -- org.allbinary.game.layer.CollidableCompositeLayer
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified CollidableInterface

-- implements CollidableInterface
data CollidableBaseBehavior = CollidableBaseBehavior
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , layerCollisionUtil :: IORef (LayerCollisionUtil.LayerCollisionUtil)
    , collidable :: IORef (Bool)
    }

instance JavaNull CollidableBaseBehavior where
    javaNull = javaNullRecord "CollidableBaseBehavior"

instance JavaEquals CollidableBaseBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollidableBaseBehavior where
    (==) = jrecordEquals

instance JavaObjectClass CollidableBaseBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CollidableBaseBehavior
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    layerCollisionUtil <- newIORef javaNull
    collidable <- newIORef False
    let this = CollidableBaseBehavior header_ logUtil commonStrings layerCollisionUtil collidable
    jregisterLevel header_ this
    CollidableInterface.registerInterface_ header_
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "setCollidable" (\() -> setCollidable_impl this)
    jregisterMethod header_ "isCollidable" (\() -> isCollidable_impl this)
    jregisterMethod header_ "collide" (\() -> collide_impl this)
    jregisterMethod header_ "isCollision" (\() -> isCollision_impl this)
    jregisterMethod header_ "isCollisionInterface" (\() -> isCollisionInterface_impl this)
    jregisterMethod header_ "collideInterface" (\() -> collideInterface_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "getCollisionTypeWith" (\() -> getCollisionTypeWith_impl this)
    pure this

initFields_ :: CollidableBaseBehavior -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.layerCollisionUtil =<< (LayerCollisionUtil.getInstance)
    jset this.collidable (True)
    pure ()

new_1 :: Bool -> IO CollidableBaseBehavior
new_1 collidable = do
    this <- newRecord_
    init_1 this collidable
    pure this

init_1 :: CollidableBaseBehavior -> Bool -> IO ()
init_1 this collidable = do
        initFields_ this
        jset (this).collidable (collidable)
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: CollidableBaseBehavior))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: CollidableBaseBehavior))

update_impl :: CollidableBaseBehavior -> IO (())
update_impl this = do
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: CollidableBaseBehavior))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: CollidableBaseBehavior))

getName_impl :: CollidableBaseBehavior -> IO (String)
getName_impl this = do
        (Class.getName ((jio (jobjectGetClass this))))


setCollidable :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setCollidable object_ a1 = jmethod object_ "setCollidable" (\() -> (setCollidable_impl (javaCast object_ :: CollidableBaseBehavior))) () a1

setCollidable_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setCollidable_super object_ a1 = (setCollidable_impl (javaCast object_ :: CollidableBaseBehavior)) a1

setCollidable_impl :: CollidableBaseBehavior -> Bool -> IO (())
setCollidable_impl this collidable = do
        jset (this).collidable (collidable)
        pure ()


isCollidable :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollidable object_ a1 = jmethod object_ "isCollidable" (\() -> (isCollidable_impl (javaCast object_ :: CollidableBaseBehavior))) () a1

isCollidable_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollidable_super object_ a1 = (isCollidable_impl (javaCast object_ :: CollidableBaseBehavior)) a1

isCollidable_impl :: CollidableBaseBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollidable_impl this ownerLayer = do
        pure ((jget (this).collidable))


-- throws Exception
collide :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide object_ a1 a2 = jmethod object_ "collide" (\() -> (collide_impl (javaCast object_ :: CollidableBaseBehavior))) () a1 a2

collide_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide_super object_ a1 a2 = (collide_impl (javaCast object_ :: CollidableBaseBehavior)) a1 a2

collide_impl :: CollidableBaseBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collide_impl this ownerLayer allbinaryCollidableLayer = do
        javaThrow ((JavaException "Exception" (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))) (jget ((jio (CommonLabels.getInstance))).cOLON_SEP)))) (jio (Class.getName ((jio (jobjectGetClass this))))))))))))
        pure ()


isCollision :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollision object_ a1 a2 = jmethod object_ "isCollision" (\() -> (isCollision_impl (javaCast object_ :: CollidableBaseBehavior))) () a1 a2

isCollision_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollision_super object_ a1 a2 = (isCollision_impl (javaCast object_ :: CollidableBaseBehavior)) a1 a2

isCollision_impl :: CollidableBaseBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
isCollision_impl this ownerLayer collisionLayer = do
        (LayerCollisionUtil.isCollision ((jget (this).layerCollisionUtil)) (javaCast ownerLayer) (javaCast collisionLayer))


isCollisionInterface :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (Bool)
isCollisionInterface object_ a1 a2 = jmethod object_ "isCollisionInterface" (\() -> (isCollisionInterface_impl (javaCast object_ :: CollidableBaseBehavior))) () a1 a2

isCollisionInterface_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (Bool)
isCollisionInterface_super object_ a1 a2 = (isCollisionInterface_impl (javaCast object_ :: CollidableBaseBehavior)) a1 a2

isCollisionInterface_impl :: CollidableBaseBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (Bool)
isCollisionInterface_impl this ownerLayer collidableInterfaceCompositeInterface = do
        (LayerCollisionUtil.isCollision ((jget (this).layerCollisionUtil)) (javaCast ownerLayer) (javaCast collidableInterfaceCompositeInterface :: AllBinaryLayer.AllBinaryLayer))


-- throws Exception
collideInterface :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collideInterface object_ a1 a2 = jmethod object_ "collideInterface" (\() -> (collideInterface_impl (javaCast object_ :: CollidableBaseBehavior))) () a1 a2

collideInterface_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collideInterface_super object_ a1 a2 = (collideInterface_impl (javaCast object_ :: CollidableBaseBehavior)) a1 a2

collideInterface_impl :: CollidableBaseBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collideInterface_impl this ownerLayer collidableInterfaceCompositeInterface = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> Graphics.Graphics -> IO (())
paint object_ a1 a2 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: CollidableBaseBehavior))) () a1 a2

paint_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> Graphics.Graphics -> IO (())
paint_super object_ a1 a2 = (paint_impl (javaCast object_ :: CollidableBaseBehavior)) a1 a2

paint_impl :: CollidableBaseBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> Graphics.Graphics -> IO (())
paint_impl this ownerLayer graphics = do
        pure ()


getCollisionTypeWith :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (CollisionType.CollisionType)
getCollisionTypeWith object_ a1 = jmethod object_ "getCollisionTypeWith" (\() -> (getCollisionTypeWith_impl (javaCast object_ :: CollidableBaseBehavior))) () a1

getCollisionTypeWith_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (CollisionType.CollisionType)
getCollisionTypeWith_super object_ a1 = (getCollisionTypeWith_impl (javaCast object_ :: CollidableBaseBehavior)) a1

getCollisionTypeWith_impl :: CollidableBaseBehavior -> AllBinaryLayer.AllBinaryLayer -> IO (CollisionType.CollisionType)
getCollisionTypeWith_impl this layerInterface = do
        pure ((jget ((jio (CollisionTypeFactory.getInstance))).nONE))


