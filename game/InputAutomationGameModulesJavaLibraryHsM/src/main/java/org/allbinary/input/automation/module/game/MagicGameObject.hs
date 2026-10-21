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
-- package org.allbinary.input.automation.module.game
module MagicGameObject (module MagicGameObject, module MeteredGameObject) where

import MeteredGameObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toString, toString_super, toString_impl, mP_LABEL)
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
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified MeteredGameObject
import qualified MagicGameObjectInterface

-- implements MagicGameObjectInterface
data MagicGameObject = MagicGameObject
    { header_ :: JavaHeader
    , base :: MeteredGameObject.MeteredGameObject
    , mP_LABEL :: IORef (String)
    }

instance JavaNull MagicGameObject where
    javaNull = javaNullRecord "MagicGameObject"

instance JavaEquals MagicGameObject where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MagicGameObject where
    (==) = jrecordEquals

instance JavaObjectClass MagicGameObject where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MagicGameObject
newRecord_ = do
    base <- MeteredGameObject.newRecord_
    let header_ = base.header_
    mP_LABEL <- newIORef ""
    let this = MagicGameObject header_ base mP_LABEL
    jregisterLevel header_ this
    MagicGameObjectInterface.registerInterface_ header_
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: MagicGameObject -> IO ()
initFields_ this = do
    jset this.mP_LABEL ("MP:")
    pure ()

new_4 :: JavaArray (BufferedImage.BufferedImage) -> Int -> Int -> Int -> IO MagicGameObject
new_4 bufferedImage minX maxX y = do
    this <- newRecord_
    init_4 this bufferedImage minX maxX y
    pure this

init_4 :: MagicGameObject -> JavaArray (BufferedImage.BufferedImage) -> Int -> Int -> Int -> IO ()
init_4 this bufferedImage minX maxX y = do
        MeteredGameObject.init_4 this.base (bufferedImage) (minX) (maxX) (y)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: MagicGameObject))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: MagicGameObject))

toString_impl :: MagicGameObject -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).mP_LABEL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (MeteredGameObject.toString_super this.base)))
        (StringMaker.toString stringBuffer)


