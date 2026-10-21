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
module FeaturedResourceRelativeRelationshipFactory (module FeaturedResourceRelativeRelationshipFactory, module FeaturedResourceFactory) where

import FeaturedResourceFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getRelativeRelationshipList, getRelativeRelationshipList_super, getRelativeRelationshipList_impl, duplicate, duplicate_super, duplicate_impl, iNSTANCE, basicArrayListUtil)
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
import qualified ResourceRelativeRelationshipFactoryInterface -- same package or java.lang
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified RelativeRelationship -- org.allbinary.graphics.RelativeRelationship
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified RelativeLayerRelationship -- org.allbinary.layer.relationship.RelativeLayerRelationship
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil
import qualified FeaturedResourceFactory

data FeaturedResourceRelativeRelationshipFactory = FeaturedResourceRelativeRelationshipFactory
    { header_ :: JavaHeader
    , base :: FeaturedResourceFactory.FeaturedResourceFactory
    , basicArrayListUtil :: IORef (BasicArrayListUtil.BasicArrayListUtil)
    }

instance JavaNull FeaturedResourceRelativeRelationshipFactory where
    javaNull = javaNullRecord "FeaturedResourceRelativeRelationshipFactory"

instance JavaEquals FeaturedResourceRelativeRelationshipFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FeaturedResourceRelativeRelationshipFactory where
    (==) = jrecordEquals

instance JavaObjectClass FeaturedResourceRelativeRelationshipFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE iNSTANCE #-}
iNSTANCE = unsafePerformIO ((new_) >>= newIORef)

newRecord_ :: IO FeaturedResourceRelativeRelationshipFactory
newRecord_ = do
    base <- FeaturedResourceFactory.newRecord_
    let header_ = base.header_
    basicArrayListUtil <- newIORef javaNull
    let this = FeaturedResourceRelativeRelationshipFactory header_ base basicArrayListUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getRelativeRelationshipList" (\() -> getRelativeRelationshipList_impl this)
    jregisterMethod header_ "duplicate" (\() -> duplicate_impl this)
    pure this

initFields_ :: FeaturedResourceRelativeRelationshipFactory -> IO ()
initFields_ this = do
    jset this.basicArrayListUtil =<< (BasicArrayListUtil.getInstance)
    pure ()

new_ :: IO FeaturedResourceRelativeRelationshipFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FeaturedResourceRelativeRelationshipFactory -> IO ()
init_ this = do
        FeaturedResourceFactory.init_ this.base
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (FeaturedResourceRelativeRelationshipFactory)
getInstance = do
        pure ((jget FeaturedResourceRelativeRelationshipFactory.iNSTANCE))


-- throws Exception
getRelativeRelationshipList :: (JavaObjectClass this_) => this_ -> String -> AllBinaryLayer.AllBinaryLayer -> IO (BasicArrayList.BasicArrayList)
getRelativeRelationshipList object_ a1 a2 = jmethod object_ "getRelativeRelationshipList" (\() -> (getRelativeRelationshipList_impl (javaCast object_ :: FeaturedResourceRelativeRelationshipFactory))) () a1 a2

getRelativeRelationshipList_super :: (JavaObjectClass this_) => this_ -> String -> AllBinaryLayer.AllBinaryLayer -> IO (BasicArrayList.BasicArrayList)
getRelativeRelationshipList_super object_ a1 a2 = (getRelativeRelationshipList_impl (javaCast object_ :: FeaturedResourceRelativeRelationshipFactory)) a1 a2

getRelativeRelationshipList_impl :: FeaturedResourceRelativeRelationshipFactory -> String -> AllBinaryLayer.AllBinaryLayer -> IO (BasicArrayList.BasicArrayList)
getRelativeRelationshipList_impl this resource layer = do
    javaCatchReturn $ do
        featureReleaseList <- (FeaturedResourceFactory.getList this)
        size <- (BasicArrayList.size ((jio (FeaturedResourceFactory.getList this))))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let featureInterface = (javaCast (jindex ((jget (featureReleaseList).objectArray)) (index)) :: ResourceRelativeRelationshipFactoryInterface.ResourceRelativeRelationshipFactoryInterface)
            when (jio (ResourceRelativeRelationshipFactoryInterface.isFeature featureInterface)) $ do
                list <- (ResourceRelativeRelationshipFactoryInterface.getResourceRelativeRelationshipList featureInterface resource)
                when (list /= (jio (BasicArrayListUtil.getImmutableInstance ((jget (this).basicArrayListUtil))))) $ do
                    javaReturn =<< (FeaturedResourceRelativeRelationshipFactory.duplicate this list layer)
        javaThrow ((JavaException "Exception" (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Not available for current feature selection or Resource: "))) resource)))))))


-- throws Exception
duplicate :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> AllBinaryLayer.AllBinaryLayer -> IO (BasicArrayList.BasicArrayList)
duplicate object_ a1 a2 = jmethod object_ "duplicate" (\() -> (duplicate_impl (javaCast object_ :: FeaturedResourceRelativeRelationshipFactory))) () a1 a2

duplicate_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> AllBinaryLayer.AllBinaryLayer -> IO (BasicArrayList.BasicArrayList)
duplicate_super object_ a1 a2 = (duplicate_impl (javaCast object_ :: FeaturedResourceRelativeRelationshipFactory)) a1 a2

duplicate_impl :: FeaturedResourceRelativeRelationshipFactory -> BasicArrayList.BasicArrayList -> AllBinaryLayer.AllBinaryLayer -> IO (BasicArrayList.BasicArrayList)
duplicate_impl this list layer = do
        pointFactory <- (PointFactory.getInstance)
        newList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        size <- (BasicArrayList.size list)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let relativeRelationship = (javaCast (jindex ((jget (list).objectArray)) (index)) :: RelativeRelationship.RelativeRelationship)
            Control.Monad.void (BasicArrayList.add newList (jio (RelativeLayerRelationship.new_3 layer (jio (PointFactory.createXY pointFactory (jio (RelativeRelationship.getX relativeRelationship)) (jio (RelativeRelationship.getY relativeRelationship)))) (jio (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))))))
        pure (newList)


