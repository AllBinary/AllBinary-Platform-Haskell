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
module CollisionTypeFactory where

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
import qualified CollisionType -- same package or java.lang

data CollisionTypeFactory = CollisionTypeFactory
    { header_ :: JavaHeader
    , nONE :: IORef (CollisionType.CollisionType)
    , dAMAGE :: IORef (CollisionType.CollisionType)
    , pICKUP :: IORef (CollisionType.CollisionType)
    , cOLLISION :: IORef (CollisionType.CollisionType)
    }

instance JavaNull CollisionTypeFactory where
    javaNull = javaNullRecord "CollisionTypeFactory"

instance JavaEquals CollisionTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollisionTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass CollisionTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CollisionTypeFactory
newRecord_ = do
    header_ <- newJavaHeader
    nONE <- newIORef javaNull
    dAMAGE <- newIORef javaNull
    pICKUP <- newIORef javaNull
    cOLLISION <- newIORef javaNull
    let this = CollisionTypeFactory header_ nONE dAMAGE pICKUP cOLLISION
    jregisterLevel header_ this
    pure this

initFields_ :: CollisionTypeFactory -> IO ()
initFields_ this = do
    jset this.nONE =<< (CollisionType.new_1 "None")
    jset this.dAMAGE =<< (CollisionType.new_1 "Damage")
    jset this.pICKUP =<< (CollisionType.new_1 "Pickup")
    jset this.cOLLISION =<< (CollisionType.new_1 "Collision")
    pure ()

new_ :: IO CollisionTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CollisionTypeFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CollisionTypeFactory)
getInstance = do
        pure ((jget CollisionTypeFactory.sINGLETON))


