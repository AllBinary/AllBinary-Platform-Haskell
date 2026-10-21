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
-- package org.allbinary.game.init
module GameInitializationUtil where

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
import qualified GameInitializationInterface -- same package or java.lang
import qualified BasicBuildGameInitializerFactory -- same package or java.lang
import qualified Feature -- same package or java.lang
import qualified ResourceLoadingLevel -- same package or java.lang
import qualified ChangedGameFeatureListener -- org.allbinary.game.configuration.event.ChangedGameFeatureListener
import qualified GameInitializedEvent -- org.allbinary.game.configuration.event.GameInitializedEvent
import qualified GameInitializedEventHandler -- org.allbinary.game.configuration.event.GameInitializedEventHandler
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified MainFeatureFactory -- org.allbinary.game.configuration.feature.MainFeatureFactory
import qualified ResourceLoadingLevelFactory -- org.allbinary.game.resource.ResourceLoadingLevelFactory
import qualified MyCanvas -- org.allbinary.graphics.displayable.MyCanvas
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

data GameInitializationUtil = GameInitializationUtil
    { header_ :: JavaHeader
    , eVENT :: IORef (GameInitializedEvent.GameInitializedEvent)
    }

instance JavaNull GameInitializationUtil where
    javaNull = javaNullRecord "GameInitializationUtil"

instance JavaEquals GameInitializationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInitializationUtil where
    (==) = jrecordEquals

instance JavaObjectClass GameInitializationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameInitializationUtil
newRecord_ = do
    header_ <- newJavaHeader
    eVENT <- newIORef javaNull
    let this = GameInitializationUtil header_ eVENT
    jregisterLevel header_ this
    jregisterMethod header_ "initDemo" (\() -> initDemo_impl this)
    jregisterMethod header_ "initGame" (\() -> initGame_impl this)
    pure this

initFields_ :: GameInitializationUtil -> IO ()
initFields_ this = do
    jset this.eVENT =<< (GameInitializedEvent.new_1 this)
    pure ()

new_ :: IO GameInitializationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameInitializationUtil -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
initDemo :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> MyCanvas.MyCanvas -> BasicBuildGameInitializerFactory.BasicBuildGameInitializerFactory -> IO (())
initDemo object_ a1 a2 a3 = jmethod object_ "initDemo" (\() -> (initDemo_impl (javaCast object_ :: GameInitializationUtil))) () a1 a2 a3

initDemo_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> MyCanvas.MyCanvas -> BasicBuildGameInitializerFactory.BasicBuildGameInitializerFactory -> IO (())
initDemo_super object_ a1 a2 a3 = (initDemo_impl (javaCast object_ :: GameInitializationUtil)) a1 a2 a3

initDemo_impl :: GameInitializationUtil -> AbeClientInformationInterface.AbeClientInformationInterface -> MyCanvas.MyCanvas -> BasicBuildGameInitializerFactory.BasicBuildGameInitializerFactory -> IO (())
initDemo_impl this abeClientInformation canvas gameInitializationInterfaceFactoryInterface = do
        mainFeatureFactory <- (MainFeatureFactory.getInstance)
        when (jio (ChangedGameFeatureListener.isChangedFeature ((jio (ChangedGameFeatureListener.getInstance))) (jget (mainFeatureFactory).sTATIC))) $ do
            gameInitializationInterface <- (BasicBuildGameInitializerFactory.getInstance gameInitializationInterfaceFactoryInterface)
            features <- (Features.getInstance)
            if (jio (Features.isFeature features (jget (mainFeatureFactory).lOAD_ALL))) then do
                Control.Monad.void (GameInitializationUtil.initGame this abeClientInformation canvas gameInitializationInterfaceFactoryInterface)
            else if (jio (Features.isFeature features (jget (mainFeatureFactory).lOAD_ONDEMAND))) then do
                resourceLoadingLevelFactory <- (ResourceLoadingLevelFactory.getInstance)
                Control.Monad.void (GameInitializationInterface.init gameInitializationInterface abeClientInformation (jio (MyCanvas.getCustomCommandListener canvas)) (jio (ResourceLoadingLevel.getLevel ((jget (resourceLoadingLevelFactory).lOAD_EARLY)))))
                Control.Monad.void (GameInitializedEvent.setResourceLoadingLevel ((jget (this).eVENT)) (jget (resourceLoadingLevelFactory).lOAD_EARLY))
            else do
                javaThrow ((JavaException "Exception" "No Loading Feature Available"))
            Control.Monad.void (GameInitializedEventHandler.fireEvent ((jio (GameInitializedEventHandler.getInstance))) (jget (this).eVENT))
        pure ()


-- throws Exception
initGame :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> MyCanvas.MyCanvas -> BasicBuildGameInitializerFactory.BasicBuildGameInitializerFactory -> IO (())
initGame object_ a1 a2 a3 = jmethod object_ "initGame" (\() -> (initGame_impl (javaCast object_ :: GameInitializationUtil))) () a1 a2 a3

initGame_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> MyCanvas.MyCanvas -> BasicBuildGameInitializerFactory.BasicBuildGameInitializerFactory -> IO (())
initGame_super object_ a1 a2 a3 = (initGame_impl (javaCast object_ :: GameInitializationUtil)) a1 a2 a3

initGame_impl :: GameInitializationUtil -> AbeClientInformationInterface.AbeClientInformationInterface -> MyCanvas.MyCanvas -> BasicBuildGameInitializerFactory.BasicBuildGameInitializerFactory -> IO (())
initGame_impl this abeClientInformation canvas gameInitializationInterfaceFactoryInterface = do
        when (jio (ChangedGameFeatureListener.isChangedFeature ((jio (ChangedGameFeatureListener.getInstance))) (jget ((jio (MainFeatureFactory.getInstance))).sTATIC))) $ do
            gameInitializationInterface <- (BasicBuildGameInitializerFactory.getInstance gameInitializationInterfaceFactoryInterface)
            resourceLoadingLevelFactory <- (ResourceLoadingLevelFactory.getInstance)
            Control.Monad.void (GameInitializationInterface.init gameInitializationInterface abeClientInformation (jio (MyCanvas.getCustomCommandListener canvas)) (jio (ResourceLoadingLevel.getLevel ((jget (resourceLoadingLevelFactory).lOAD_ALL)))))
            Control.Monad.void (GameInitializedEvent.setResourceLoadingLevel ((jget (this).eVENT)) (jget (resourceLoadingLevelFactory).lOAD_ALL))
            Control.Monad.void (GameInitializedEventHandler.fireEvent ((jio (GameInitializedEventHandler.getInstance))) (jget (this).eVENT))
            Control.Monad.void (ChangedGameFeatureListener.remove ((jio (ChangedGameFeatureListener.getInstance))) (jget ((jio (MainFeatureFactory.getInstance))).sTATIC))
        pure ()


getInstance :: IO (GameInitializationUtil)
getInstance = do
        pure (GameInitializationUtil.instance_)


