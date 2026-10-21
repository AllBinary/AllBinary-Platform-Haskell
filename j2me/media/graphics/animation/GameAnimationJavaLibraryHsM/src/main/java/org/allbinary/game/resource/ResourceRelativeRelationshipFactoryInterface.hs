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
-- package org.allbinary.game.resource
module ResourceRelativeRelationshipFactoryInterface (module ResourceRelativeRelationshipFactoryInterface, module GameFeatureControlledInterface) where

import GameFeatureControlledInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getResourceRelativeRelationshipList, getResourceRelativeRelationshipList_super, getResourceRelativeRelationshipList_impl, addResourceRelativeRelationship, addResourceRelativeRelationship_super, addResourceRelativeRelationship_impl, toString)
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
import qualified GameFeatureControlledInterface -- org.allbinary.game.configuration.feature.GameFeatureControlledInterface
import qualified RelativeRelationship -- org.allbinary.graphics.RelativeRelationship
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- Java interface: the classes that implement it have these functions
data ResourceRelativeRelationshipFactoryInterface = ResourceRelativeRelationshipFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull ResourceRelativeRelationshipFactoryInterface where
    javaNull = javaNullRecord "ResourceRelativeRelationshipFactoryInterface"

instance JavaEquals ResourceRelativeRelationshipFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ResourceRelativeRelationshipFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass ResourceRelativeRelationshipFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ResourceRelativeRelationshipFactoryInterface
fromHeader_ header = ResourceRelativeRelationshipFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ResourceRelativeRelationshipFactoryInterface header)
    GameFeatureControlledInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getResourceRelativeRelationshipList :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getResourceRelativeRelationshipList object_ a1 = jmethod object_ "getResourceRelativeRelationshipList" (\() -> (getResourceRelativeRelationshipList_impl (javaCast object_ :: ResourceRelativeRelationshipFactoryInterface))) () a1

getResourceRelativeRelationshipList_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getResourceRelativeRelationshipList_super object_ a1 = (getResourceRelativeRelationshipList_impl (javaCast object_ :: ResourceRelativeRelationshipFactoryInterface)) a1

getResourceRelativeRelationshipList_impl :: ResourceRelativeRelationshipFactoryInterface -> String -> IO (BasicArrayList.BasicArrayList)
getResourceRelativeRelationshipList_impl this resource = javaAbstractMethod "getResourceRelativeRelationshipList"


-- throws Exception
addResourceRelativeRelationship :: (JavaObjectClass this_) => this_ -> String -> RelativeRelationship.RelativeRelationship -> IO (())
addResourceRelativeRelationship object_ a1 a2 = jmethod object_ "addResourceRelativeRelationship" (\() -> (addResourceRelativeRelationship_impl (javaCast object_ :: ResourceRelativeRelationshipFactoryInterface))) () a1 a2

addResourceRelativeRelationship_super :: (JavaObjectClass this_) => this_ -> String -> RelativeRelationship.RelativeRelationship -> IO (())
addResourceRelativeRelationship_super object_ a1 a2 = (addResourceRelativeRelationship_impl (javaCast object_ :: ResourceRelativeRelationshipFactoryInterface)) a1 a2

addResourceRelativeRelationship_impl :: ResourceRelativeRelationshipFactoryInterface -> String -> RelativeRelationship.RelativeRelationship -> IO (())
addResourceRelativeRelationship_impl this resource relativeRelationship = javaAbstractMethod "addResourceRelativeRelationship"


