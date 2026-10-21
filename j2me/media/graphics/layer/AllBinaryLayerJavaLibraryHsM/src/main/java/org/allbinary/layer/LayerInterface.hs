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
module LayerInterface (module LayerInterface, module NamedInterface, module PaintableInterface, module GroupInterfaceCompositeInterface, module PositionInterface) where

import NamedInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getHeight, getHeight_super, getHeight_impl, getWidth, getWidth_super, getWidth_impl, getHalfHeight, getHalfHeight_super, getHalfHeight_impl, getHalfWidth, getHalfWidth_super, getHalfWidth_impl, getXP, getXP_super, getXP_impl, getYP, getYP_super, getYP_impl, getZP, getZP_super, getZP_impl, getX2, getX2_super, getX2_impl, getY2, getY2_super, getY2_impl, getZ2, getZ2_super, getZ2_impl, isVisible, isVisible_super, isVisible_impl, moveDXYZ, moveDXYZ_super, moveDXYZ_impl, setVisible, setVisible_super, setVisible_impl, implmentsTickableInterface, implmentsTickableInterface_super, implmentsTickableInterface_impl, implmentsCollidableInterface, implmentsCollidableInterface_super, implmentsCollidableInterface_impl, implmentsGameInputInterface, implmentsGameInputInterface_super, implmentsGameInputInterface_impl, implmentsArtificialIntelligenceCompositeInterface, implmentsArtificialIntelligenceCompositeInterface_super, implmentsArtificialIntelligenceCompositeInterface_impl, getType, getType_super, getType_impl, toString)
import PaintableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getHeight, getHeight_super, getHeight_impl, getWidth, getWidth_super, getWidth_impl, getHalfHeight, getHalfHeight_super, getHalfHeight_impl, getHalfWidth, getHalfWidth_super, getHalfWidth_impl, getXP, getXP_super, getXP_impl, getYP, getYP_super, getYP_impl, getZP, getZP_super, getZP_impl, getX2, getX2_super, getX2_impl, getY2, getY2_super, getY2_impl, getZ2, getZ2_super, getZ2_impl, isVisible, isVisible_super, isVisible_impl, moveDXYZ, moveDXYZ_super, moveDXYZ_impl, setVisible, setVisible_super, setVisible_impl, implmentsTickableInterface, implmentsTickableInterface_super, implmentsTickableInterface_impl, implmentsCollidableInterface, implmentsCollidableInterface_super, implmentsCollidableInterface_impl, implmentsGameInputInterface, implmentsGameInputInterface_super, implmentsGameInputInterface_impl, implmentsArtificialIntelligenceCompositeInterface, implmentsArtificialIntelligenceCompositeInterface_super, implmentsArtificialIntelligenceCompositeInterface_impl, getType, getType_super, getType_impl, toString)
import GroupInterfaceCompositeInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getHeight, getHeight_super, getHeight_impl, getWidth, getWidth_super, getWidth_impl, getHalfHeight, getHalfHeight_super, getHalfHeight_impl, getHalfWidth, getHalfWidth_super, getHalfWidth_impl, getXP, getXP_super, getXP_impl, getYP, getYP_super, getYP_impl, getZP, getZP_super, getZP_impl, getX2, getX2_super, getX2_impl, getY2, getY2_super, getY2_impl, getZ2, getZ2_super, getZ2_impl, isVisible, isVisible_super, isVisible_impl, moveDXYZ, moveDXYZ_super, moveDXYZ_impl, setVisible, setVisible_super, setVisible_impl, implmentsTickableInterface, implmentsTickableInterface_super, implmentsTickableInterface_impl, implmentsCollidableInterface, implmentsCollidableInterface_super, implmentsCollidableInterface_impl, implmentsGameInputInterface, implmentsGameInputInterface_super, implmentsGameInputInterface_impl, implmentsArtificialIntelligenceCompositeInterface, implmentsArtificialIntelligenceCompositeInterface_super, implmentsArtificialIntelligenceCompositeInterface_impl, getType, getType_super, getType_impl, toString)
import PositionInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getHeight, getHeight_super, getHeight_impl, getWidth, getWidth_super, getWidth_impl, getHalfHeight, getHalfHeight_super, getHalfHeight_impl, getHalfWidth, getHalfWidth_super, getHalfWidth_impl, getXP, getXP_super, getXP_impl, getYP, getYP_super, getYP_impl, getZP, getZP_super, getZP_impl, getX2, getX2_super, getX2_impl, getY2, getY2_super, getY2_impl, getZ2, getZ2_super, getZ2_impl, isVisible, isVisible_super, isVisible_impl, moveDXYZ, moveDXYZ_super, moveDXYZ_impl, setVisible, setVisible_super, setVisible_impl, implmentsTickableInterface, implmentsTickableInterface_super, implmentsTickableInterface_impl, implmentsCollidableInterface, implmentsCollidableInterface_super, implmentsCollidableInterface_impl, implmentsGameInputInterface, implmentsGameInputInterface_super, implmentsGameInputInterface_impl, implmentsArtificialIntelligenceCompositeInterface, implmentsArtificialIntelligenceCompositeInterface_super, implmentsArtificialIntelligenceCompositeInterface_impl, getType, getType_super, getType_impl, toString)
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
import qualified GroupInterfaceCompositeInterface -- org.allbinary.game.identification.GroupInterfaceCompositeInterface
import qualified PaintableInterface -- org.allbinary.graphics.paint.PaintableInterface
import qualified NamedInterface
import qualified PositionInterface

-- Java interface: the classes that implement it have these functions
data LayerInterface = LayerInterface
    { header_ :: JavaHeader
    }

instance JavaNull LayerInterface where
    javaNull = javaNullRecord "LayerInterface"

instance JavaEquals LayerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerInterface where
    (==) = jrecordEquals

instance JavaObjectClass LayerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> LayerInterface
fromHeader_ header = LayerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (LayerInterface header)
    NamedInterface.registerInterface_ header
    PaintableInterface.registerInterface_ header
    GroupInterfaceCompositeInterface.registerInterface_ header
    PositionInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: LayerInterface))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: LayerInterface))

getHeight_impl :: LayerInterface -> IO (Int)
getHeight_impl this = javaAbstractMethod "getHeight"


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: LayerInterface))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: LayerInterface))

getWidth_impl :: LayerInterface -> IO (Int)
getWidth_impl this = javaAbstractMethod "getWidth"


getHalfHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfHeight object_ = jmethod object_ "getHalfHeight" (\() -> (getHalfHeight_impl (javaCast object_ :: LayerInterface))) ()

getHalfHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfHeight_super object_ = (getHalfHeight_impl (javaCast object_ :: LayerInterface))

getHalfHeight_impl :: LayerInterface -> IO (Int)
getHalfHeight_impl this = javaAbstractMethod "getHalfHeight"


getHalfWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfWidth object_ = jmethod object_ "getHalfWidth" (\() -> (getHalfWidth_impl (javaCast object_ :: LayerInterface))) ()

getHalfWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfWidth_super object_ = (getHalfWidth_impl (javaCast object_ :: LayerInterface))

getHalfWidth_impl :: LayerInterface -> IO (Int)
getHalfWidth_impl this = javaAbstractMethod "getHalfWidth"


getXP :: (JavaObjectClass this_) => this_ -> IO (Int)
getXP object_ = jmethod object_ "getXP" (\() -> (getXP_impl (javaCast object_ :: LayerInterface))) ()

getXP_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getXP_super object_ = (getXP_impl (javaCast object_ :: LayerInterface))

getXP_impl :: LayerInterface -> IO (Int)
getXP_impl this = javaAbstractMethod "getXP"


getYP :: (JavaObjectClass this_) => this_ -> IO (Int)
getYP object_ = jmethod object_ "getYP" (\() -> (getYP_impl (javaCast object_ :: LayerInterface))) ()

getYP_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getYP_super object_ = (getYP_impl (javaCast object_ :: LayerInterface))

getYP_impl :: LayerInterface -> IO (Int)
getYP_impl this = javaAbstractMethod "getYP"


getZP :: (JavaObjectClass this_) => this_ -> IO (Int)
getZP object_ = jmethod object_ "getZP" (\() -> (getZP_impl (javaCast object_ :: LayerInterface))) ()

getZP_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getZP_super object_ = (getZP_impl (javaCast object_ :: LayerInterface))

getZP_impl :: LayerInterface -> IO (Int)
getZP_impl this = javaAbstractMethod "getZP"


getX2 :: (JavaObjectClass this_) => this_ -> IO (Int)
getX2 object_ = jmethod object_ "getX2" (\() -> (getX2_impl (javaCast object_ :: LayerInterface))) ()

getX2_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getX2_super object_ = (getX2_impl (javaCast object_ :: LayerInterface))

getX2_impl :: LayerInterface -> IO (Int)
getX2_impl this = javaAbstractMethod "getX2"


getY2 :: (JavaObjectClass this_) => this_ -> IO (Int)
getY2 object_ = jmethod object_ "getY2" (\() -> (getY2_impl (javaCast object_ :: LayerInterface))) ()

getY2_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getY2_super object_ = (getY2_impl (javaCast object_ :: LayerInterface))

getY2_impl :: LayerInterface -> IO (Int)
getY2_impl this = javaAbstractMethod "getY2"


getZ2 :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ2 object_ = jmethod object_ "getZ2" (\() -> (getZ2_impl (javaCast object_ :: LayerInterface))) ()

getZ2_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ2_super object_ = (getZ2_impl (javaCast object_ :: LayerInterface))

getZ2_impl :: LayerInterface -> IO (Int)
getZ2_impl this = javaAbstractMethod "getZ2"


isVisible :: (JavaObjectClass this_) => this_ -> IO (Bool)
isVisible object_ = jmethod object_ "isVisible" (\() -> (isVisible_impl (javaCast object_ :: LayerInterface))) ()

isVisible_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isVisible_super object_ = (isVisible_impl (javaCast object_ :: LayerInterface))

isVisible_impl :: LayerInterface -> IO (Bool)
isVisible_impl this = javaAbstractMethod "isVisible"


moveDXYZ :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
moveDXYZ object_ a1 a2 a3 = jmethod object_ "moveDXYZ" (\() -> (moveDXYZ_impl (javaCast object_ :: LayerInterface))) () a1 a2 a3

moveDXYZ_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
moveDXYZ_super object_ a1 a2 a3 = (moveDXYZ_impl (javaCast object_ :: LayerInterface)) a1 a2 a3

moveDXYZ_impl :: LayerInterface -> Int -> Int -> Int -> IO (())
moveDXYZ_impl this dx dy dz = javaAbstractMethod "moveDXYZ"


setVisible :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setVisible object_ a1 = jmethod object_ "setVisible" (\() -> (setVisible_impl (javaCast object_ :: LayerInterface))) () a1

setVisible_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setVisible_super object_ a1 = (setVisible_impl (javaCast object_ :: LayerInterface)) a1

setVisible_impl :: LayerInterface -> Bool -> IO (())
setVisible_impl this visible = javaAbstractMethod "setVisible"


implmentsTickableInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsTickableInterface object_ = jmethod object_ "implmentsTickableInterface" (\() -> (implmentsTickableInterface_impl (javaCast object_ :: LayerInterface))) ()

implmentsTickableInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsTickableInterface_super object_ = (implmentsTickableInterface_impl (javaCast object_ :: LayerInterface))

implmentsTickableInterface_impl :: LayerInterface -> IO (Bool)
implmentsTickableInterface_impl this = javaAbstractMethod "implmentsTickableInterface"


implmentsCollidableInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsCollidableInterface object_ = jmethod object_ "implmentsCollidableInterface" (\() -> (implmentsCollidableInterface_impl (javaCast object_ :: LayerInterface))) ()

implmentsCollidableInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsCollidableInterface_super object_ = (implmentsCollidableInterface_impl (javaCast object_ :: LayerInterface))

implmentsCollidableInterface_impl :: LayerInterface -> IO (Bool)
implmentsCollidableInterface_impl this = javaAbstractMethod "implmentsCollidableInterface"


implmentsGameInputInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsGameInputInterface object_ = jmethod object_ "implmentsGameInputInterface" (\() -> (implmentsGameInputInterface_impl (javaCast object_ :: LayerInterface))) ()

implmentsGameInputInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsGameInputInterface_super object_ = (implmentsGameInputInterface_impl (javaCast object_ :: LayerInterface))

implmentsGameInputInterface_impl :: LayerInterface -> IO (Bool)
implmentsGameInputInterface_impl this = javaAbstractMethod "implmentsGameInputInterface"


implmentsArtificialIntelligenceCompositeInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsArtificialIntelligenceCompositeInterface object_ = jmethod object_ "implmentsArtificialIntelligenceCompositeInterface" (\() -> (implmentsArtificialIntelligenceCompositeInterface_impl (javaCast object_ :: LayerInterface))) ()

implmentsArtificialIntelligenceCompositeInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsArtificialIntelligenceCompositeInterface_super object_ = (implmentsArtificialIntelligenceCompositeInterface_impl (javaCast object_ :: LayerInterface))

implmentsArtificialIntelligenceCompositeInterface_impl :: LayerInterface -> IO (Bool)
implmentsArtificialIntelligenceCompositeInterface_impl this = javaAbstractMethod "implmentsArtificialIntelligenceCompositeInterface"


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: LayerInterface))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: LayerInterface))

getType_impl :: LayerInterface -> IO (Int)
getType_impl this = javaAbstractMethod "getType"


