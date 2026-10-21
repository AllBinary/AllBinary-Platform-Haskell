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
module CollidableInterfaceCompositeInterface where

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
import qualified CollidableBaseBehavior -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data CollidableInterfaceCompositeInterface = CollidableInterfaceCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull CollidableInterfaceCompositeInterface where
    javaNull = javaNullRecord "CollidableInterfaceCompositeInterface"

instance JavaEquals CollidableInterfaceCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollidableInterfaceCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass CollidableInterfaceCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> CollidableInterfaceCompositeInterface
fromHeader_ header = CollidableInterfaceCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (CollidableInterfaceCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getCollidableInferface :: (JavaObjectClass this_) => this_ -> IO (CollidableBaseBehavior.CollidableBaseBehavior)
getCollidableInferface object_ = jmethod object_ "getCollidableInferface" (\() -> (getCollidableInferface_impl (javaCast object_ :: CollidableInterfaceCompositeInterface))) ()

getCollidableInferface_super :: (JavaObjectClass this_) => this_ -> IO (CollidableBaseBehavior.CollidableBaseBehavior)
getCollidableInferface_super object_ = (getCollidableInferface_impl (javaCast object_ :: CollidableInterfaceCompositeInterface))

getCollidableInferface_impl :: CollidableInterfaceCompositeInterface -> IO (CollidableBaseBehavior.CollidableBaseBehavior)
getCollidableInferface_impl this = javaAbstractMethod "getCollidableInferface"


