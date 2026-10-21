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
-- package org.allbinary.animation.resource
module FeatureResourceAnimationInterfaceFactoryInterface (module FeatureResourceAnimationInterfaceFactoryInterface, module ResourceAnimationInterfaceFactoryInterface, module RectangleResourceFactoryInterface, module GameFeatureControlledInterface) where

import ResourceAnimationInterfaceFactoryInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getHashtable, getHashtable_super, getHashtable_impl, toString)
import RectangleResourceFactoryInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getHashtable, getHashtable_super, getHashtable_impl, toString)
import GameFeatureControlledInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getHashtable, getHashtable_super, getHashtable_impl, toString)
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
import qualified GameFeatureControlledInterface -- org.allbinary.game.configuration.feature.GameFeatureControlledInterface
import qualified RectangleResourceFactoryInterface -- org.allbinary.game.resource.RectangleResourceFactoryInterface
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified ResourceAnimationInterfaceFactoryInterface

-- Java interface: the classes that implement it have these functions
data FeatureResourceAnimationInterfaceFactoryInterface = FeatureResourceAnimationInterfaceFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull FeatureResourceAnimationInterfaceFactoryInterface where
    javaNull = javaNullRecord "FeatureResourceAnimationInterfaceFactoryInterface"

instance JavaEquals FeatureResourceAnimationInterfaceFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FeatureResourceAnimationInterfaceFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass FeatureResourceAnimationInterfaceFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> FeatureResourceAnimationInterfaceFactoryInterface
fromHeader_ header = FeatureResourceAnimationInterfaceFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (FeatureResourceAnimationInterfaceFactoryInterface header)
    ResourceAnimationInterfaceFactoryInterface.registerInterface_ header
    RectangleResourceFactoryInterface.registerInterface_ header
    GameFeatureControlledInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getHashtable object_ = jmethod object_ "getHashtable" (\() -> (getHashtable_impl (javaCast object_ :: FeatureResourceAnimationInterfaceFactoryInterface))) ()

getHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getHashtable_super object_ = (getHashtable_impl (javaCast object_ :: FeatureResourceAnimationInterfaceFactoryInterface))

getHashtable_impl :: FeatureResourceAnimationInterfaceFactoryInterface -> IO (ABHashtable.ABHashtable)
getHashtable_impl this = javaAbstractMethod "getHashtable"


