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
-- package org.allbinary.image
module ChoiceGroupImageUtil where

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
import qualified PreResourceImageUtil -- same package or java.lang
import qualified GL -- javax.microedition.khronos.opengles.GL
import qualified ChoiceGroupImageFactory -- javax.microedition.lcdui.ChoiceGroupImageFactory
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Image -- javax.microedition.lcdui.Image
import qualified OpenGLFeatureFactory -- org.allbinary.graphics.opengles.OpenGLFeatureFactory
import qualified Features -- org.allbinary.game.configuration.feature.Features

data ChoiceGroupImageUtil = ChoiceGroupImageUtil
    { header_ :: JavaHeader
    }

instance JavaNull ChoiceGroupImageUtil where
    javaNull = javaNullRecord "ChoiceGroupImageUtil"

instance JavaEquals ChoiceGroupImageUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ChoiceGroupImageUtil where
    (==) = jrecordEquals

instance JavaObjectClass ChoiceGroupImageUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ChoiceGroupImageUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = ChoiceGroupImageUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "update_overload1" (\() -> update_overload1_impl this)
    jregisterMethod header_ "update_overload2" (\() -> update_overload2_impl this)
    pure this

initFields_ :: ChoiceGroupImageUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ChoiceGroupImageUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ChoiceGroupImageUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ChoiceGroupImageUtil)
getInstance = do
        pure (ChoiceGroupImageUtil.instance_)


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ChoiceGroupImageUtil))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: ChoiceGroupImageUtil))

init_impl :: ChoiceGroupImageUtil -> IO (())
init_impl this = do
        features <- (Features.getInstance)
        choiceGroupFactory <- (ChoiceGroupImageFactory.getInstance)
        imageArray <- (ChoiceGroupImageFactory.getImageArray choiceGroupFactory)
        when (jio (Features.isDefault features (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL))) $ do
            preResourceImageUtil <- (PreResourceImageUtil.getInstance)
            let size = (jlength imageArray)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                assignedValue <- (PreResourceImageUtil.encapsulate preResourceImageUtil (jindex imageArray (index)))
                jsetIndex imageArray (index) (assignedValue)
            Control.Monad.void (ChoiceGroupImageFactory.init choiceGroupFactory imageArray)
        pure ()


-- Java overloads of update: calls the overload for the types of the arguments
update :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
update this a1
    | jisInstanceOf a1 (javaNull :: GL.GL) = update_overload1 this (javaCast a1 :: GL.GL)
    | jisInstanceOf a1 (javaNull :: Graphics.Graphics) = update_overload2 this (javaCast a1 :: Graphics.Graphics)
    | otherwise = update_overload2 this (javaCast a1 :: Graphics.Graphics)

update_overload1 :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
update_overload1 object_ a1 = jmethod object_ "update_overload1" (\() -> (update_overload1_impl (javaCast object_ :: ChoiceGroupImageUtil))) () a1

update_overload1_super :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
update_overload1_super object_ a1 = (update_overload1_impl (javaCast object_ :: ChoiceGroupImageUtil)) a1

update_overload1_impl :: ChoiceGroupImageUtil -> GL.GL -> IO (())
update_overload1_impl this gl = do
        features <- (Features.getInstance)
        choiceGroupFactory <- (ChoiceGroupImageFactory.getInstance)
        imageArray <- (ChoiceGroupImageFactory.getImageArray choiceGroupFactory)
        when (jio (Features.isDefault features (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL))) $ do
            preResourceImageUtil <- (PreResourceImageUtil.getInstance)
            let size = (jlength imageArray)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (PreResourceImageUtil.updateGL preResourceImageUtil gl (jindex imageArray (index)))
        Control.Monad.void (ChoiceGroupImageFactory.init choiceGroupFactory imageArray)
        pure ()


update_overload2 :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
update_overload2 object_ a1 = jmethod object_ "update_overload2" (\() -> (update_overload2_impl (javaCast object_ :: ChoiceGroupImageUtil))) () a1

update_overload2_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
update_overload2_super object_ a1 = (update_overload2_impl (javaCast object_ :: ChoiceGroupImageUtil)) a1

update_overload2_impl :: ChoiceGroupImageUtil -> Graphics.Graphics -> IO (())
update_overload2_impl this graphics = do
        features <- (Features.getInstance)
        choiceGroupFactory <- (ChoiceGroupImageFactory.getInstance)
        imageArray <- (ChoiceGroupImageFactory.getImageArray choiceGroupFactory)
        when (jio (Features.isDefault features (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL))) $ do
            preResourceImageUtil <- (PreResourceImageUtil.getInstance)
            let size = (jlength imageArray)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (PreResourceImageUtil.update preResourceImageUtil graphics (jindex imageArray (index)))
        Control.Monad.void (ChoiceGroupImageFactory.init choiceGroupFactory imageArray)
        pure ()


