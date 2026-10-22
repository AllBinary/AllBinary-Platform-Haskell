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
-- package org.allbinary.canvas
module SpecialMessageUtil where

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
import qualified GameStatisticsFactory -- same package or java.lang
import qualified OpenGLFeature -- same package or java.lang
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified OpenGLFeatureFactory -- org.allbinary.graphics.opengles.OpenGLFeatureFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified Memory -- org.allbinary.system.Memory

data SpecialMessageUtil = SpecialMessageUtil
    { header_ :: JavaHeader
    }

instance JavaNull SpecialMessageUtil where
    javaNull = javaNullRecord "SpecialMessageUtil"

instance JavaEquals SpecialMessageUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SpecialMessageUtil where
    (==) = jrecordEquals

instance JavaObjectClass SpecialMessageUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SpecialMessageUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = SpecialMessageUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    pure this

initFields_ :: SpecialMessageUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO SpecialMessageUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SpecialMessageUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (SpecialMessageUtil)
getInstance = do
        pure (SpecialMessageUtil.sINGLETON)


get :: (JavaObjectClass this_) => this_ -> IO (String)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: SpecialMessageUtil))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (String)
get_super object_ = (get_impl (javaCast object_ :: SpecialMessageUtil))

get_impl :: SpecialMessageUtil -> IO (String)
get_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (Memory.getInfo)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameStatisticsFactory.toString ((jio (GameStatisticsFactory.getInstance))))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer " Option: ")
        if (jio (Features.isDefault ((jio (Features.getInstance))) (javaCast (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL_AUTO_SELECT)))) then do
            Control.Monad.void (StringMaker.append stringBuffer (jio (OpenGLFeature.getName ((jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL_AUTO_SELECT)))))
        else do
            Control.Monad.void (StringMaker.append stringBuffer (jio (OpenGLFeature.getName ((jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL_MINIMUM)))))
        (StringMaker.toString stringBuffer)


