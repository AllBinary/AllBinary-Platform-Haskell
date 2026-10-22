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
-- package org.allbinary.input.motion.button
module TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory (module TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory, module TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory) where

import TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, isFeature, isFeature_super, isFeature_impl)
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
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified OpenGLFeatureFactory -- org.allbinary.graphics.opengles.OpenGLFeatureFactory
import qualified OpenGLImageCacheFactory -- org.allbinary.image.opengles.OpenGLImageCacheFactory
import qualified TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory

data TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory = TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory
    { header_ :: JavaHeader
    , base :: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory
    }

instance JavaNull TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory where
    javaNull = javaNullRecord "TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory"

instance JavaEquals TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory
newRecord_ = do
    base <- TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.newRecord_
    let header_ = base.header_
    let this = TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "isFeature" (\() -> isFeature_impl this)
    pure this

initFields_ :: TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory -> IO ()
init_ this = do
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.init_1 this.base ("OpenGL TouchButton Animations")
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory))) () a1

init_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory)) a1

init_impl :: TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory -> Int -> IO (())
init_impl this level = do
        Control.Monad.void (TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.initImageCache_super this.base (jio (OpenGLImageCacheFactory.getInstance)) level)
        pure ()


isFeature :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFeature object_ = jmethod object_ "isFeature" (\() -> (isFeature_impl (javaCast object_ :: TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory))) ()

isFeature_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFeature_super object_ = (isFeature_impl (javaCast object_ :: TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory))

isFeature_impl :: TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory -> IO (Bool)
isFeature_impl this = do
    javaCatchReturn $ do
        if (jio (Features.isDefault ((jio (Features.getInstance))) (javaCast (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL)))) then do
            javaReturn (True)
        else do
            javaReturn (False)


