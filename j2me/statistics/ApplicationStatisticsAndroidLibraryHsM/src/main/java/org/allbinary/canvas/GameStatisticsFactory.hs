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
module GameStatisticsFactory (module GameStatisticsFactory, module AndroidGameStatistics) where

import AndroidGameStatistics hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, add, add_super, add_impl, toString, toString_super, toString_impl, sINGLETON, stringBuffer)
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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AndroidGameStatistics

data GameStatisticsFactory = GameStatisticsFactory
    { header_ :: JavaHeader
    , base :: AndroidGameStatistics.AndroidGameStatistics
    , stringBuffer :: IORef (StringMaker.StringMaker)
    }

instance JavaNull GameStatisticsFactory where
    javaNull = javaNullRecord "GameStatisticsFactory"

instance JavaEquals GameStatisticsFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameStatisticsFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameStatisticsFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: AndroidGameStatistics.AndroidGameStatistics) (new_)))

newRecord_ :: IO GameStatisticsFactory
newRecord_ = do
    base <- AndroidGameStatistics.newRecord_
    let header_ = base.header_
    stringBuffer <- newIORef javaNull
    let this = GameStatisticsFactory header_ base stringBuffer
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: GameStatisticsFactory -> IO ()
initFields_ this = do
    jset this.stringBuffer =<< (StringMaker.new_)
    pure ()

new_ :: IO GameStatisticsFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameStatisticsFactory -> IO ()
init_ this = do
    AndroidGameStatistics.init_ this.base
    initFields_ this


getInstance :: IO (AndroidGameStatistics.AndroidGameStatistics)
getInstance = do
        pure (GameStatisticsFactory.sINGLETON)


add :: (JavaObjectClass this_) => this_ -> String -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: GameStatisticsFactory))) () a1

add_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: GameStatisticsFactory)) a1

add_impl :: GameStatisticsFactory -> String -> IO (())
add_impl this string = do
        when ((jio (StringMaker.length ((jget (this).stringBuffer)))) > 12000) $ do
            Control.Monad.void (StringMaker.delete ((jget (this).stringBuffer)) 0 (jio (StringMaker.length ((jget (this).stringBuffer)))))
            Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) "Old Stats Cleared")
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) string)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: GameStatisticsFactory))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: GameStatisticsFactory))

toString_impl :: GameStatisticsFactory -> IO (String)
toString_impl this = do
        (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (AndroidGameStatistics.toString_super this.base))))) (jio (StringMaker.toString ((jget (this).stringBuffer))))))))


