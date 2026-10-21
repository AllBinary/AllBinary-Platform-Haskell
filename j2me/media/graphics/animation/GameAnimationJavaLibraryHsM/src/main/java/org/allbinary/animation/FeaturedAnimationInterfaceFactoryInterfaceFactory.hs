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
-- package org.allbinary.animation
module FeaturedAnimationInterfaceFactoryInterfaceFactory (module FeaturedAnimationInterfaceFactoryInterfaceFactory, module FeaturedResourceFactory) where

import FeaturedResourceFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getRectangle, getRectangle_super, getRectangle_impl, getRectangleXY, getRectangleXY_super, getRectangleXY_impl, getProcedural, getProcedural_super, getProcedural_impl, get, get_super, get_impl, getBasicAnimationInterfaceFactoryInstance, getBasicAnimationInterfaceFactoryInstance_super, getBasicAnimationInterfaceFactoryInstance_impl, iNSTANCE)
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
import qualified ProceduralAnimationInterfaceFactoryInterface -- same package or java.lang
import qualified AnimationInterfaceFactoryInterface -- same package or java.lang
import qualified BasicAnimationInterfaceFactoryInterface -- same package or java.lang
import qualified NullAnimationFactory -- same package or java.lang
import qualified GameConfiguration -- same package or java.lang
import qualified FeatureResourceAnimationInterfaceFactoryInterface -- org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface
import qualified GameConfigurationCentral -- org.allbinary.game.configuration.GameConfigurationCentral
import qualified FeaturedResourceFactory -- org.allbinary.game.resource.FeaturedResourceFactory
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified RectangleFactory -- org.allbinary.graphics.RectangleFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data FeaturedAnimationInterfaceFactoryInterfaceFactory = FeaturedAnimationInterfaceFactoryInterfaceFactory
    { header_ :: JavaHeader
    , base :: FeaturedResourceFactory.FeaturedResourceFactory
    }

instance JavaNull FeaturedAnimationInterfaceFactoryInterfaceFactory where
    javaNull = javaNullRecord "FeaturedAnimationInterfaceFactoryInterfaceFactory"

instance JavaEquals FeaturedAnimationInterfaceFactoryInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FeaturedAnimationInterfaceFactoryInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass FeaturedAnimationInterfaceFactoryInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE iNSTANCE #-}
iNSTANCE = unsafePerformIO ((new_) >>= newIORef)

newRecord_ :: IO FeaturedAnimationInterfaceFactoryInterfaceFactory
newRecord_ = do
    base <- FeaturedResourceFactory.newRecord_
    let header_ = base.header_
    let this = FeaturedAnimationInterfaceFactoryInterfaceFactory header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getRectangle" (\() -> getRectangle_impl this)
    jregisterMethod header_ "getRectangleXY" (\() -> getRectangleXY_impl this)
    jregisterMethod header_ "getProcedural" (\() -> getProcedural_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getBasicAnimationInterfaceFactoryInstance" (\() -> getBasicAnimationInterfaceFactoryInstance_impl this)
    pure this

initFields_ :: FeaturedAnimationInterfaceFactoryInterfaceFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO FeaturedAnimationInterfaceFactoryInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FeaturedAnimationInterfaceFactoryInterfaceFactory -> IO ()
init_ this = do
        FeaturedResourceFactory.init_ this.base
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (FeaturedAnimationInterfaceFactoryInterfaceFactory)
getInstance = do
        pure ((jget FeaturedAnimationInterfaceFactoryInterfaceFactory.iNSTANCE))


-- throws Exception
getRectangle :: (JavaObjectClass this_) => this_ -> String -> IO (Rectangle.Rectangle)
getRectangle object_ a1 = jmethod object_ "getRectangle" (\() -> (getRectangle_impl (javaCast object_ :: FeaturedAnimationInterfaceFactoryInterfaceFactory))) () a1

getRectangle_super :: (JavaObjectClass this_) => this_ -> String -> IO (Rectangle.Rectangle)
getRectangle_super object_ a1 = (getRectangle_impl (javaCast object_ :: FeaturedAnimationInterfaceFactoryInterfaceFactory)) a1

getRectangle_impl :: FeaturedAnimationInterfaceFactoryInterfaceFactory -> String -> IO (Rectangle.Rectangle)
getRectangle_impl this resource = do
        (FeaturedAnimationInterfaceFactoryInterfaceFactory.getRectangleXY this resource 0 0)


-- throws Exception
getRectangleXY :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Rectangle.Rectangle)
getRectangleXY object_ a1 a2 a3 = jmethod object_ "getRectangleXY" (\() -> (getRectangleXY_impl (javaCast object_ :: FeaturedAnimationInterfaceFactoryInterfaceFactory))) () a1 a2 a3

getRectangleXY_super :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Rectangle.Rectangle)
getRectangleXY_super object_ a1 a2 a3 = (getRectangleXY_impl (javaCast object_ :: FeaturedAnimationInterfaceFactoryInterfaceFactory)) a1 a2 a3

getRectangleXY_impl :: FeaturedAnimationInterfaceFactoryInterfaceFactory -> String -> Int -> Int -> IO (Rectangle.Rectangle)
getRectangleXY_impl this resource x y = do
    javaCatchReturn $ do
        pointFactory <- (PointFactory.getInstance)
        list <- (FeaturedResourceFactory.getList this)
        let scale = (jio (GameConfiguration.getValue ((jget ((jio (GameConfigurationCentral.getInstance))).sCALE))))
        size <- (BasicArrayList.size ((jio (FeaturedResourceFactory.getList this))))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let featureInterface = (javaCast (jindex ((jget (list).objectArray)) (index)) :: FeatureResourceAnimationInterfaceFactoryInterface.FeatureResourceAnimationInterfaceFactoryInterface)
            when (jio (FeatureResourceAnimationInterfaceFactoryInterface.isFeature featureInterface)) $ do
                rectangle <- (FeatureResourceAnimationInterfaceFactoryInterface.getRectangle featureInterface resource)
                when (rectangle /= RectangleFactory.sINGLETON) $ do
                    javaReturn =<< (Rectangle.new_3 (jio (PointFactory.createXY pointFactory x y)) (((((jio (Rectangle.getWidth rectangle)) * scale)) `Data.Bits.shiftR` 1)) (((((jio (Rectangle.getHeight rectangle)) * scale)) `Data.Bits.shiftR` 1)))
        javaThrow ((JavaException "Exception" (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "No rectangle available for current feature selection or Resource: "))) resource)))))))


-- throws Exception
getProcedural :: (JavaObjectClass this_) => this_ -> String -> IO (ProceduralAnimationInterfaceFactoryInterface.ProceduralAnimationInterfaceFactoryInterface)
getProcedural object_ a1 = jmethod object_ "getProcedural" (\() -> (getProcedural_impl (javaCast object_ :: FeaturedAnimationInterfaceFactoryInterfaceFactory))) () a1

getProcedural_super :: (JavaObjectClass this_) => this_ -> String -> IO (ProceduralAnimationInterfaceFactoryInterface.ProceduralAnimationInterfaceFactoryInterface)
getProcedural_super object_ a1 = (getProcedural_impl (javaCast object_ :: FeaturedAnimationInterfaceFactoryInterfaceFactory)) a1

getProcedural_impl :: FeaturedAnimationInterfaceFactoryInterfaceFactory -> String -> IO (ProceduralAnimationInterfaceFactoryInterface.ProceduralAnimationInterfaceFactoryInterface)
getProcedural_impl this resource = do
        pure ((javaCast (jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.getBasicAnimationInterfaceFactoryInstance this resource)) :: ProceduralAnimationInterfaceFactoryInterface.ProceduralAnimationInterfaceFactoryInterface))


-- throws Exception
get :: (JavaObjectClass this_) => this_ -> String -> IO (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: FeaturedAnimationInterfaceFactoryInterfaceFactory))) () a1

get_super :: (JavaObjectClass this_) => this_ -> String -> IO (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface)
get_super object_ a1 = (get_impl (javaCast object_ :: FeaturedAnimationInterfaceFactoryInterfaceFactory)) a1

get_impl :: FeaturedAnimationInterfaceFactoryInterfaceFactory -> String -> IO (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface)
get_impl this resource = do
        pure ((javaCast (jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.getBasicAnimationInterfaceFactoryInstance this resource)) :: AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface))


-- throws Exception
getBasicAnimationInterfaceFactoryInstance :: (JavaObjectClass this_) => this_ -> String -> IO (BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface)
getBasicAnimationInterfaceFactoryInstance object_ a1 = jmethod object_ "getBasicAnimationInterfaceFactoryInstance" (\() -> (getBasicAnimationInterfaceFactoryInstance_impl (javaCast object_ :: FeaturedAnimationInterfaceFactoryInterfaceFactory))) () a1

getBasicAnimationInterfaceFactoryInstance_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface)
getBasicAnimationInterfaceFactoryInstance_super object_ a1 = (getBasicAnimationInterfaceFactoryInstance_impl (javaCast object_ :: FeaturedAnimationInterfaceFactoryInterfaceFactory)) a1

getBasicAnimationInterfaceFactoryInstance_impl :: FeaturedAnimationInterfaceFactoryInterfaceFactory -> String -> IO (BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface)
getBasicAnimationInterfaceFactoryInstance_impl this resource = do
    javaCatchReturn $ do
        list <- (FeaturedResourceFactory.getList this)
        resourceTypeAvailableList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        size <- (BasicArrayList.size ((jio (FeaturedResourceFactory.getList this))))
        featureInterface <- newIORef (javaNull)
        animationInterfaceFactoryInterface <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset featureInterface ((javaCast (jindex ((jget (list).objectArray)) (index)) :: FeatureResourceAnimationInterfaceFactoryInterface.FeatureResourceAnimationInterfaceFactoryInterface))
            when (jio (FeatureResourceAnimationInterfaceFactoryInterface.isFeature ((jget featureInterface)))) $ do
                Control.Monad.void (BasicArrayList.add resourceTypeAvailableList (jget featureInterface))
                assignedValue <- (FeatureResourceAnimationInterfaceFactoryInterface.getBasicAnimationInterfaceFactoryInstance ((jget featureInterface)) resource)
                jset animationInterfaceFactoryInterface (assignedValue)
                when ((jtoObject (jget animationInterfaceFactoryInterface)) /= (jtoObject (jget NullAnimationFactory.nULL_NOT_FOR_USE_ANIMATION_FACTORY))) $ do
                    javaReturn ((jget animationInterfaceFactoryInterface))
        if ((jio (BasicArrayList.size resourceTypeAvailableList)) > 0) then do
            let nO_ANIMATION_AVAILABLE_FROM = "No animation available from: "
            let fOR_FACTORIES = " factories: "
            let fOR_RESOURCE = " for Resource: "
            let hAS_KEY = " has: "
            let rESOURCES_LABEL = " resources "
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer nO_ANIMATION_AVAILABLE_FROM)
            Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size resourceTypeAvailableList)))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).fORWARD_SLASH))
            Control.Monad.void (StringMaker.appendint stringBuffer size)
            Control.Monad.void (StringMaker.append stringBuffer fOR_FACTORIES)
            size2 <- (BasicArrayList.size resourceTypeAvailableList)
            forM_ [0 .. size2 - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (StringMaker.append stringBuffer (jio (Any.toString ((jio (BasicArrayList.get resourceTypeAvailableList index))))))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).cOMMA_SEP))
            Control.Monad.void (StringMaker.append stringBuffer fOR_RESOURCE)
            Control.Monad.void (StringMaker.append stringBuffer resource)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
                jset featureInterface ((javaCast (jindex ((jget (list).objectArray)) (index)) :: FeatureResourceAnimationInterfaceFactoryInterface.FeatureResourceAnimationInterfaceFactoryInterface))
                when (jio (FeatureResourceAnimationInterfaceFactoryInterface.isFeature ((jget featureInterface)))) $ do
                    Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jget featureInterface))))
                    Control.Monad.void (StringMaker.append stringBuffer hAS_KEY)
                    Control.Monad.void (StringMaker.appendint stringBuffer (jio (FeatureResourceAnimationInterfaceFactoryInterface.size ((jio (FeatureResourceAnimationInterfaceFactoryInterface.getHashtable ((jget featureInterface))))))))
                    Control.Monad.void (StringMaker.append stringBuffer rESOURCES_LABEL)
            javaThrow ((JavaException "Exception" (jio (StringMaker.toString stringBuffer))))
        else do
            stringBuffer <- (StringMaker.new_)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                jset featureInterface ((javaCast (jindex ((jget (list).objectArray)) (index)) :: FeatureResourceAnimationInterfaceFactoryInterface.FeatureResourceAnimationInterfaceFactoryInterface))
                Control.Monad.void (StringMaker.append stringBuffer (jio (FeatureResourceAnimationInterfaceFactoryInterface.toString ((jget featureInterface)))))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
            result <- (StringMaker.toString stringBuffer)
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            javaThrow ((JavaException "Exception" (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer "No feature resource type available for Resource: "))) resource))) " Resource Factories Available: "))) result)))))))


