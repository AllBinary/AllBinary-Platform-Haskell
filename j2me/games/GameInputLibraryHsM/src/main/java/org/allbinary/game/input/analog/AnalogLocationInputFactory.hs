{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.game.input.analog
module AnalogLocationInputFactory where

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
import qualified AnalogLocationInput -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data AnalogLocationInputFactory = AnalogLocationInputFactory
    { header_ :: JavaHeader
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull AnalogLocationInputFactory where
    javaNull = javaNullRecord "AnalogLocationInputFactory"

instance JavaEquals AnalogLocationInputFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnalogLocationInputFactory where
    (==) = jrecordEquals

instance JavaObjectClass AnalogLocationInputFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AnalogLocationInputFactory
newRecord_ = do
    header_ <- newJavaHeader
    list <- newIORef javaNull
    let this = AnalogLocationInputFactory header_ list
    jregisterLevel header_ this
    jregisterMethod header_ "addPlayer" (\() -> addPlayer_impl this)
    jregisterMethod header_ "getInstanceForPlayer" (\() -> getInstanceForPlayer_impl this)
    jregisterMethod header_ "getList" (\() -> getList_impl this)
    pure this

initFields_ :: AnalogLocationInputFactory -> IO ()
initFields_ this = do
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()


getInstance :: IO (AnalogLocationInputFactory)
getInstance = do
        pure (AnalogLocationInputFactory.instance_)

new_ :: IO AnalogLocationInputFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AnalogLocationInputFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


addPlayer :: (JavaObjectClass this_) => this_ -> Int -> IO (())
addPlayer object_ a1 = jmethod object_ "addPlayer" (\() -> (addPlayer_impl (javaCast object_ :: AnalogLocationInputFactory))) () a1

addPlayer_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
addPlayer_super object_ a1 = (addPlayer_impl (javaCast object_ :: AnalogLocationInputFactory)) a1

addPlayer_impl :: AnalogLocationInputFactory -> Int -> IO (())
addPlayer_impl this playerInputId = do
        analogLocationInput <- newIORef (AnalogLocationInput.nULL_ANALOG_LOCATION_INPUT)
        when (playerInputId < (jio (BasicArrayList.size ((jget (this).list))))) $ do
            jset analogLocationInput ((javaCast (jio (BasicArrayList.get ((jget (this).list)) playerInputId)) :: AnalogLocationInput.AnalogLocationInput))
        when ((jget analogLocationInput) == AnalogLocationInput.nULL_ANALOG_LOCATION_INPUT) $ do
            assignedValue <- (AnalogLocationInput.new_1 playerInputId)
            jset analogLocationInput (assignedValue)
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jget analogLocationInput))
        pure ()


getInstanceForPlayer :: (JavaObjectClass this_) => this_ -> Int -> IO (AnalogLocationInput.AnalogLocationInput)
getInstanceForPlayer object_ a1 = jmethod object_ "getInstanceForPlayer" (\() -> (getInstanceForPlayer_impl (javaCast object_ :: AnalogLocationInputFactory))) () a1

getInstanceForPlayer_super :: (JavaObjectClass this_) => this_ -> Int -> IO (AnalogLocationInput.AnalogLocationInput)
getInstanceForPlayer_super object_ a1 = (getInstanceForPlayer_impl (javaCast object_ :: AnalogLocationInputFactory)) a1

getInstanceForPlayer_impl :: AnalogLocationInputFactory -> Int -> IO (AnalogLocationInput.AnalogLocationInput)
getInstanceForPlayer_impl this playerInputId = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).list)) playerInputId)) :: AnalogLocationInput.AnalogLocationInput))


getList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList object_ = jmethod object_ "getList" (\() -> (getList_impl (javaCast object_ :: AnalogLocationInputFactory))) ()

getList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList_super object_ = (getList_impl (javaCast object_ :: AnalogLocationInputFactory))

getList_impl :: AnalogLocationInputFactory -> IO (BasicArrayList.BasicArrayList)
getList_impl this = do
        pure ((jget (this).list))


