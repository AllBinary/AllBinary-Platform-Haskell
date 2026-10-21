{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.business.advertisement
module GameAdStateFactory where

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
import qualified AppNameLicensingAdConfiguration -- same package or java.lang
import qualified GameAdStateBase -- same package or java.lang
import qualified GameAdState -- org.allbinary.game.GameAdState
import qualified SoftwareInformation -- org.allbinary.logic.system.SoftwareInformation
import qualified GameAdStateFactoryInterface

-- implements GameAdStateFactoryInterface
data GameAdStateFactory = GameAdStateFactory
    { header_ :: JavaHeader
    , gameAdStateArray :: IORef (JavaArray (GameAdState.GameAdState))
    , gameAdState :: IORef (GameAdState.GameAdState)
    }

instance JavaNull GameAdStateFactory where
    javaNull = javaNullRecord "GameAdStateFactory"

instance JavaEquals GameAdStateFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameAdStateFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameAdStateFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameAdStateFactory
newRecord_ = do
    header_ <- newJavaHeader
    gameAdStateArray <- newIORef javaNull
    gameAdState <- newIORef javaNull
    let this = GameAdStateFactory header_ gameAdStateArray gameAdState
    jregisterLevel header_ this
    GameAdStateFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getCurrentInstance" (\() -> getCurrentInstance_impl this)
    jregisterMethod header_ "getInstanceForApp" (\() -> getInstanceForApp_impl this)
    jregisterMethod header_ "isEnabled" (\() -> isEnabled_impl this)
    pure this

initFields_ :: GameAdStateFactory -> IO ()
initFields_ this = do
    jset this.gameAdStateArray ((jarrayFromList [(jio (GameAdState.new_1 (jio (AppNameLicensingAdConfiguration.new_))))]))
    jset this.gameAdState ((jindex ((jget (this).gameAdStateArray)) (0)))
    pure ()

new_ :: IO GameAdStateFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameAdStateFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GameAdStateFactory)
getInstance = do
        pure (GameAdStateFactory.instance_)


getCurrentInstance :: (JavaObjectClass this_) => this_ -> IO (GameAdState.GameAdState)
getCurrentInstance object_ = jmethod object_ "getCurrentInstance" (\() -> (getCurrentInstance_impl (javaCast object_ :: GameAdStateFactory))) ()

getCurrentInstance_super :: (JavaObjectClass this_) => this_ -> IO (GameAdState.GameAdState)
getCurrentInstance_super object_ = (getCurrentInstance_impl (javaCast object_ :: GameAdStateFactory))

getCurrentInstance_impl :: GameAdStateFactory -> IO (GameAdState.GameAdState)
getCurrentInstance_impl this = do
        pure ((jget (this).gameAdState))


-- throws Exception
getInstanceForApp :: (JavaObjectClass this_) => this_ -> SoftwareInformation.SoftwareInformation -> IO (GameAdStateBase.GameAdStateBase)
getInstanceForApp object_ a1 = jmethod object_ "getInstanceForApp" (\() -> (getInstanceForApp_impl (javaCast object_ :: GameAdStateFactory))) () a1

getInstanceForApp_super :: (JavaObjectClass this_) => this_ -> SoftwareInformation.SoftwareInformation -> IO (GameAdStateBase.GameAdStateBase)
getInstanceForApp_super object_ a1 = (getInstanceForApp_impl (javaCast object_ :: GameAdStateFactory)) a1

getInstanceForApp_impl :: GameAdStateFactory -> SoftwareInformation.SoftwareInformation -> IO (GameAdStateBase.GameAdStateBase)
getInstanceForApp_impl this softwareInformation = do
        jset (this).gameAdState ((jindex ((jget (this).gameAdStateArray)) (0)))
        pure ((jindex ((jget (this).gameAdStateArray)) (0)))


isEnabled :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled object_ = jmethod object_ "isEnabled" (\() -> (isEnabled_impl (javaCast object_ :: GameAdStateFactory))) ()

isEnabled_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled_super object_ = (isEnabled_impl (javaCast object_ :: GameAdStateFactory))

isEnabled_impl :: GameAdStateFactory -> IO (Bool)
isEnabled_impl this = do
        pure (False)


