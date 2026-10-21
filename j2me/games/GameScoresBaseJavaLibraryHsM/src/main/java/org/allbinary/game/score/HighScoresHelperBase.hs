{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.game.score
module HighScoresHelperBase where

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
import qualified LastFetchHighScoresFactory -- same package or java.lang
import qualified HighScores -- same package or java.lang
import qualified NullHighScoresSingletonFactory -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified HighScoresHelperBaseInterface

-- implements HighScoresHelperBaseInterface
data HighScoresHelperBase = HighScoresHelperBase
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , highScoresArrayP :: IORef (JavaArray (HighScores.HighScores))
    }

instance JavaNull HighScoresHelperBase where
    javaNull = javaNullRecord "HighScoresHelperBase"

instance JavaEquals HighScoresHelperBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoresHelperBase where
    (==) = jrecordEquals

instance JavaObjectClass HighScoresHelperBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HighScoresHelperBase
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    highScoresArrayP <- newIORef javaNull
    let this = HighScoresHelperBase header_ logUtil highScoresArrayP
    jregisterLevel header_ this
    HighScoresHelperBaseInterface.registerInterface_ header_
    jregisterMethod header_ "setHighScoresArray" (\() -> setHighScoresArray_impl this)
    jregisterMethod header_ "getNextHighScores" (\() -> getNextHighScores_impl this)
    jregisterMethod header_ "isAnyHighScores" (\() -> isAnyHighScores_impl this)
    jregisterMethod header_ "setSelectedHighScores" (\() -> setSelectedHighScores_impl this)
    jregisterMethod header_ "getSelectedHighScores" (\() -> getSelectedHighScores_impl this)
    jregisterMethod header_ "getHighScoresArray" (\() -> getHighScoresArray_impl this)
    jregisterMethod header_ "selectHighScores" (\() -> selectHighScores_impl this)
    pure this

initFields_ :: HighScoresHelperBase -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.highScoresArrayP ((jget ((jio (LastFetchHighScoresFactory.getInstance))).highScoresArray))
    pure ()

new_ :: IO HighScoresHelperBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HighScoresHelperBase -> IO ()
init_ this = do
    initFields_ this


setHighScoresArray :: (JavaObjectClass this_) => this_ -> JavaArray (HighScores.HighScores) -> IO (())
setHighScoresArray object_ a1 = jmethod object_ "setHighScoresArray" (\() -> (setHighScoresArray_impl (javaCast object_ :: HighScoresHelperBase))) () a1

setHighScoresArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (HighScores.HighScores) -> IO (())
setHighScoresArray_super object_ a1 = (setHighScoresArray_impl (javaCast object_ :: HighScoresHelperBase)) a1

setHighScoresArray_impl :: HighScoresHelperBase -> JavaArray (HighScores.HighScores) -> IO (())
setHighScoresArray_impl this highScoresArrayP = do
        if (highScoresArrayP /= javaNull) then do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (commonStrings).sTART)))) (jlength highScoresArrayP)))))) this "setHighScoresArray")
        else do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (commonStrings).sTART) this "setHighScoresArray")
        jset (this).highScoresArrayP (highScoresArrayP)
        pure ()


getNextHighScores :: (JavaObjectClass this_) => this_ -> IO (HighScores.HighScores)
getNextHighScores object_ = jmethod object_ "getNextHighScores" (\() -> (getNextHighScores_impl (javaCast object_ :: HighScoresHelperBase))) ()

getNextHighScores_super :: (JavaObjectClass this_) => this_ -> IO (HighScores.HighScores)
getNextHighScores_super object_ = (getNextHighScores_impl (javaCast object_ :: HighScoresHelperBase))

getNextHighScores_impl :: HighScoresHelperBase -> IO (HighScores.HighScores)
getNextHighScores_impl this = do
        (NullHighScoresSingletonFactory.getInstance)


isAnyHighScores :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAnyHighScores object_ = jmethod object_ "isAnyHighScores" (\() -> (isAnyHighScores_impl (javaCast object_ :: HighScoresHelperBase))) ()

isAnyHighScores_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAnyHighScores_super object_ = (isAnyHighScores_impl (javaCast object_ :: HighScoresHelperBase))

isAnyHighScores_impl :: HighScoresHelperBase -> IO (Bool)
isAnyHighScores_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


setSelectedHighScores :: (JavaObjectClass this_) => this_ -> HighScores.HighScores -> IO (())
setSelectedHighScores object_ a1 = jmethod object_ "setSelectedHighScores" (\() -> (setSelectedHighScores_impl (javaCast object_ :: HighScoresHelperBase))) () a1

setSelectedHighScores_super :: (JavaObjectClass this_) => this_ -> HighScores.HighScores -> IO (())
setSelectedHighScores_super object_ a1 = (setSelectedHighScores_impl (javaCast object_ :: HighScoresHelperBase)) a1

setSelectedHighScores_impl :: HighScoresHelperBase -> HighScores.HighScores -> IO (())
setSelectedHighScores_impl this selectedHighScores = do
        pure ()


getSelectedHighScores :: (JavaObjectClass this_) => this_ -> IO (HighScores.HighScores)
getSelectedHighScores object_ = jmethod object_ "getSelectedHighScores" (\() -> (getSelectedHighScores_impl (javaCast object_ :: HighScoresHelperBase))) ()

getSelectedHighScores_super :: (JavaObjectClass this_) => this_ -> IO (HighScores.HighScores)
getSelectedHighScores_super object_ = (getSelectedHighScores_impl (javaCast object_ :: HighScoresHelperBase))

getSelectedHighScores_impl :: HighScoresHelperBase -> IO (HighScores.HighScores)
getSelectedHighScores_impl this = do
        (NullHighScoresSingletonFactory.getInstance)


getHighScoresArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (HighScores.HighScores))
getHighScoresArray object_ = jmethod object_ "getHighScoresArray" (\() -> (getHighScoresArray_impl (javaCast object_ :: HighScoresHelperBase))) ()

getHighScoresArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (HighScores.HighScores))
getHighScoresArray_super object_ = (getHighScoresArray_impl (javaCast object_ :: HighScoresHelperBase))

getHighScoresArray_impl :: HighScoresHelperBase -> IO (JavaArray (HighScores.HighScores))
getHighScoresArray_impl this = do
        pure ((jget (this).highScoresArrayP))


selectHighScores :: (JavaObjectClass this_) => this_ -> IO (())
selectHighScores object_ = jmethod object_ "selectHighScores" (\() -> (selectHighScores_impl (javaCast object_ :: HighScoresHelperBase))) ()

selectHighScores_super :: (JavaObjectClass this_) => this_ -> IO (())
selectHighScores_super object_ = (selectHighScores_impl (javaCast object_ :: HighScoresHelperBase))

selectHighScores_impl :: HighScoresHelperBase -> IO (())
selectHighScores_impl this = do
        pure ()


