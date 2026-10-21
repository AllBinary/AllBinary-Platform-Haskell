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
-- package org.allbinary.game.resource
module ResourceRelativeRelationshipFactory where

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
import qualified RelativeRelationship -- org.allbinary.graphics.RelativeRelationship
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil
import qualified ResourceRelativeRelationshipFactoryInterface

-- implements ResourceRelativeRelationshipFactoryInterface
data ResourceRelativeRelationshipFactory = ResourceRelativeRelationshipFactory
    { header_ :: JavaHeader
    , basicArrayListUtil :: IORef (BasicArrayListUtil.BasicArrayListUtil)
    , hashtable :: IORef (ABHashtable.ABHashtable)
    , initialized :: IORef (Bool)
    }

instance JavaNull ResourceRelativeRelationshipFactory where
    javaNull = javaNullRecord "ResourceRelativeRelationshipFactory"

instance JavaEquals ResourceRelativeRelationshipFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ResourceRelativeRelationshipFactory where
    (==) = jrecordEquals

instance JavaObjectClass ResourceRelativeRelationshipFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ResourceRelativeRelationshipFactory
newRecord_ = do
    header_ <- newJavaHeader
    basicArrayListUtil <- newIORef javaNull
    hashtable <- newIORef javaNull
    initialized <- newIORef False
    let this = ResourceRelativeRelationshipFactory header_ basicArrayListUtil hashtable initialized
    jregisterLevel header_ this
    ResourceRelativeRelationshipFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getResourceRelativeRelationshipList" (\() -> getResourceRelativeRelationshipList_impl this)
    jregisterMethod header_ "addResourceRelativeRelationship" (\() -> addResourceRelativeRelationship_impl this)
    jregisterMethod header_ "isLoadingLevel" (\() -> isLoadingLevel_impl this)
    jregisterMethod header_ "isFeature" (\() -> isFeature_impl this)
    jregisterMethod header_ "setInitialized" (\() -> setInitialized_impl this)
    jregisterMethod header_ "isInitialized" (\() -> isInitialized_impl this)
    pure this

initFields_ :: ResourceRelativeRelationshipFactory -> IO ()
initFields_ this = do
    jset this.basicArrayListUtil =<< (BasicArrayListUtil.getInstance)
    jset this.hashtable =<< (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
    jset this.initialized (False)
    pure ()

new_ :: IO ResourceRelativeRelationshipFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ResourceRelativeRelationshipFactory -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ResourceRelativeRelationshipFactory))) () a1

init_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: ResourceRelativeRelationshipFactory)) a1

init_impl :: ResourceRelativeRelationshipFactory -> Int -> IO (())
init_impl this level = do
        Control.Monad.void (ResourceRelativeRelationshipFactory.setInitialized this True)
        pure ()


-- throws Exception
getResourceRelativeRelationshipList :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getResourceRelativeRelationshipList object_ a1 = jmethod object_ "getResourceRelativeRelationshipList" (\() -> (getResourceRelativeRelationshipList_impl (javaCast object_ :: ResourceRelativeRelationshipFactory))) () a1

getResourceRelativeRelationshipList_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getResourceRelativeRelationshipList_super object_ a1 = (getResourceRelativeRelationshipList_impl (javaCast object_ :: ResourceRelativeRelationshipFactory)) a1

getResourceRelativeRelationshipList_impl :: ResourceRelativeRelationshipFactory -> String -> IO (BasicArrayList.BasicArrayList)
getResourceRelativeRelationshipList_impl this resource = do
    javaCatchReturn $ do
        listCanBeNull <- (ABHashtable.get ((jget (this).hashtable)) resource)
        when (listCanBeNull == javaNull) $ do
            javaReturn =<< (BasicArrayListUtil.getImmutableInstance ((jget (this).basicArrayListUtil)))
        pure ((javaCast listCanBeNull :: BasicArrayList.BasicArrayList))


-- throws Exception
addResourceRelativeRelationship :: (JavaObjectClass this_) => this_ -> String -> RelativeRelationship.RelativeRelationship -> IO (())
addResourceRelativeRelationship object_ a1 a2 = jmethod object_ "addResourceRelativeRelationship" (\() -> (addResourceRelativeRelationship_impl (javaCast object_ :: ResourceRelativeRelationshipFactory))) () a1 a2

addResourceRelativeRelationship_super :: (JavaObjectClass this_) => this_ -> String -> RelativeRelationship.RelativeRelationship -> IO (())
addResourceRelativeRelationship_super object_ a1 a2 = (addResourceRelativeRelationship_impl (javaCast object_ :: ResourceRelativeRelationshipFactory)) a1 a2

addResourceRelativeRelationship_impl :: ResourceRelativeRelationshipFactory -> String -> RelativeRelationship.RelativeRelationship -> IO (())
addResourceRelativeRelationship_impl this resource hardPoint = do
        list <- newIORef =<< (ResourceRelativeRelationshipFactory.getResourceRelativeRelationshipList this resource)
        when ((jget list) == (jio (BasicArrayListUtil.getImmutableInstance ((jget (this).basicArrayListUtil))))) $ do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset list (assignedValue)
        Control.Monad.void (BasicArrayList.add ((jget list)) hardPoint)
        Control.Monad.void (ABHashtable.put ((jget (this).hashtable)) resource (jget list))
        pure ()


isLoadingLevel :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isLoadingLevel object_ a1 = jmethod object_ "isLoadingLevel" (\() -> (isLoadingLevel_impl (javaCast object_ :: ResourceRelativeRelationshipFactory))) () a1

isLoadingLevel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isLoadingLevel_super object_ a1 = (isLoadingLevel_impl (javaCast object_ :: ResourceRelativeRelationshipFactory)) a1

isLoadingLevel_impl :: ResourceRelativeRelationshipFactory -> Int -> IO (Bool)
isLoadingLevel_impl this level = do
        pure (False)


isFeature :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFeature object_ = jmethod object_ "isFeature" (\() -> (isFeature_impl (javaCast object_ :: ResourceRelativeRelationshipFactory))) ()

isFeature_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFeature_super object_ = (isFeature_impl (javaCast object_ :: ResourceRelativeRelationshipFactory))

isFeature_impl :: ResourceRelativeRelationshipFactory -> IO (Bool)
isFeature_impl this = do
        pure (False)


setInitialized :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setInitialized object_ a1 = jmethod object_ "setInitialized" (\() -> (setInitialized_impl (javaCast object_ :: ResourceRelativeRelationshipFactory))) () a1

setInitialized_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setInitialized_super object_ a1 = (setInitialized_impl (javaCast object_ :: ResourceRelativeRelationshipFactory)) a1

setInitialized_impl :: ResourceRelativeRelationshipFactory -> Bool -> IO (())
setInitialized_impl this initialized = do
        jset (this).initialized (initialized)
        pure ()


isInitialized :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized object_ = jmethod object_ "isInitialized" (\() -> (isInitialized_impl (javaCast object_ :: ResourceRelativeRelationshipFactory))) ()

isInitialized_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized_super object_ = (isInitialized_impl (javaCast object_ :: ResourceRelativeRelationshipFactory))

isInitialized_impl :: ResourceRelativeRelationshipFactory -> IO (Bool)
isInitialized_impl this = do
        pure ((jget (this).initialized))


