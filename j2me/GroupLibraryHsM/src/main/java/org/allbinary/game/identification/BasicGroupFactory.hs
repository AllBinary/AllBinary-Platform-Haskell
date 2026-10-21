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
-- package org.allbinary.game.identification
module BasicGroupFactory where

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
import qualified Group -- same package or java.lang
import qualified NullUtil -- org.allbinary.logic.NullUtil

data BasicGroupFactory = BasicGroupFactory
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , nO_SUCH_GROUP :: IORef (String)
    , gOOD :: IORef (Group.Group)
    , eNEMY :: IORef (Group.Group)
    , eNEMY_ON_LEVEL :: IORef (Group.Group)
    , nONE :: IORef (Group.Group)
    , gOOD_ARRAY :: IORef (JavaArray (Group.Group))
    , eNEMY_ARRAY :: IORef (JavaArray (Group.Group))
    , eNEMY_ON_LEVEL_ARRAY :: IORef (JavaArray (Group.Group))
    , nONE_ARRAY :: IORef (JavaArray (Group.Group))
    }

instance JavaNull BasicGroupFactory where
    javaNull = javaNullRecord "BasicGroupFactory"

instance JavaEquals BasicGroupFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicGroupFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicGroupFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicGroupFactory
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    nO_SUCH_GROUP <- newIORef ""
    gOOD <- newIORef javaNull
    eNEMY <- newIORef javaNull
    eNEMY_ON_LEVEL <- newIORef javaNull
    nONE <- newIORef javaNull
    gOOD_ARRAY <- newIORef javaNull
    eNEMY_ARRAY <- newIORef javaNull
    eNEMY_ON_LEVEL_ARRAY <- newIORef javaNull
    nONE_ARRAY <- newIORef javaNull
    let this = BasicGroupFactory header_ nAME nO_SUCH_GROUP gOOD eNEMY eNEMY_ON_LEVEL nONE gOOD_ARRAY eNEMY_ARRAY eNEMY_ON_LEVEL_ARRAY nONE_ARRAY
    jregisterLevel header_ this
    pure this

initFields_ :: BasicGroupFactory -> IO ()
initFields_ this = do
    jset this.nAME ("GROUP_NAME")
    jset this.nO_SUCH_GROUP ("No Such Group: ")
    jset this.gOOD =<< (Group.new_2 "Good Guys" (Prelude.fromIntegral (0 :: Int)))
    jset this.eNEMY =<< (Group.new_2 "Bad Guys" (Prelude.fromIntegral (1 :: Int)))
    jset this.eNEMY_ON_LEVEL =<< (Group.new_2 "Bad Guys on Level" (Prelude.fromIntegral (2 :: Int)))
    jset this.nONE =<< (Group.new_2 "Not On A Team" (Prelude.fromIntegral (3 :: Int)))
    jset this.gOOD_ARRAY ((jarrayFromList [(jget (this).gOOD)]))
    jset this.eNEMY_ARRAY ((jarrayFromList [(jget (this).eNEMY)]))
    jset this.eNEMY_ON_LEVEL_ARRAY ((jarrayFromList [(jget (this).eNEMY), (jget (this).eNEMY_ON_LEVEL)]))
    jset this.nONE_ARRAY ((jarrayFromList [(jget (this).nONE)]))
    pure ()

new_ :: IO BasicGroupFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicGroupFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BasicGroupFactory)
getInstance = do
        when ((jget BasicGroupFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset BasicGroupFactory.instance_ (assignedValue)
        pure ((javaCast (jget BasicGroupFactory.instance_) :: BasicGroupFactory))


