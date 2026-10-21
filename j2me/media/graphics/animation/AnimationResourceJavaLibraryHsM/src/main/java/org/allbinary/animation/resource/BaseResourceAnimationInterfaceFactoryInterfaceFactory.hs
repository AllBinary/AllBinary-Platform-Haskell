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
-- package org.allbinary.animation.resource
module BaseResourceAnimationInterfaceFactoryInterfaceFactory where

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
import qualified Class -- same package or java.lang
import qualified ResourceLoadingLevel -- same package or java.lang
import qualified BasicAnimationInterfaceFactoryInterface -- org.allbinary.animation.BasicAnimationInterfaceFactoryInterface
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified ResourceLoadingLevelFactory -- org.allbinary.game.resource.ResourceLoadingLevelFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified RectangleFactory -- org.allbinary.graphics.RectangleFactory
import qualified ImageCache -- org.allbinary.image.ImageCache
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified FeatureResourceAnimationInterfaceFactoryInterface

-- implements FeatureResourceAnimationInterfaceFactoryInterface
data BaseResourceAnimationInterfaceFactoryInterfaceFactory = BaseResourceAnimationInterfaceFactoryInterfaceFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , hashtable :: IORef (ABHashtable.ABHashtable)
    , rectangleHashtable :: IORef (ABHashtable.ABHashtable)
    , rectangleArrayOfArraysHashtable :: IORef (ABHashtable.ABHashtable)
    , name :: IORef (String)
    , initialized :: IORef (Bool)
    }

instance JavaNull BaseResourceAnimationInterfaceFactoryInterfaceFactory where
    javaNull = javaNullRecord "BaseResourceAnimationInterfaceFactoryInterfaceFactory"

instance JavaEquals BaseResourceAnimationInterfaceFactoryInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BaseResourceAnimationInterfaceFactoryInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass BaseResourceAnimationInterfaceFactoryInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BaseResourceAnimationInterfaceFactoryInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    hashtable <- newIORef javaNull
    rectangleHashtable <- newIORef javaNull
    rectangleArrayOfArraysHashtable <- newIORef javaNull
    name <- newIORef ""
    initialized <- newIORef False
    let this = BaseResourceAnimationInterfaceFactoryInterfaceFactory header_ logUtil commonStrings hashtable rectangleHashtable rectangleArrayOfArraysHashtable name initialized
    jregisterLevel header_ this
    FeatureResourceAnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "initImageCache" (\() -> initImageCache_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "getBasicAnimationInterfaceFactoryInstance" (\() -> getBasicAnimationInterfaceFactoryInstance_impl this)
    jregisterMethod header_ "getRectangle" (\() -> getRectangle_impl this)
    jregisterMethod header_ "addRectangle" (\() -> addRectangle_impl this)
    jregisterMethod header_ "getRectangleArrayOfArrays" (\() -> getRectangleArrayOfArrays_impl this)
    jregisterMethod header_ "addRectangleArrayOfArrays" (\() -> addRectangleArrayOfArrays_impl this)
    jregisterMethod header_ "isFeature" (\() -> isFeature_impl this)
    jregisterMethod header_ "isLoadingLevel" (\() -> isLoadingLevel_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getHashtable" (\() -> getHashtable_impl this)
    jregisterMethod header_ "getRectangleHashtable" (\() -> getRectangleHashtable_impl this)
    jregisterMethod header_ "getRectangleArrayOfArraysHashtable" (\() -> getRectangleArrayOfArraysHashtable_impl this)
    jregisterMethod header_ "setInitialized" (\() -> setInitialized_impl this)
    jregisterMethod header_ "isInitialized" (\() -> isInitialized_impl this)
    pure this

initFields_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.hashtable (javaNull)
    jset this.rectangleHashtable (javaNull)
    jset this.rectangleArrayOfArraysHashtable (javaNull)
    jset this.name (javaNull)
    jset this.initialized (False)
    pure ()

new_4 :: String -> ABHashtable.ABHashtable -> ABHashtable.ABHashtable -> ABHashtable.ABHashtable -> IO BaseResourceAnimationInterfaceFactoryInterfaceFactory
new_4 name hashtable rectangleHashtable rectangleArrayHashtable = do
    this <- newRecord_
    init_4 this name hashtable rectangleHashtable rectangleArrayHashtable
    pure this

init_4 :: BaseResourceAnimationInterfaceFactoryInterfaceFactory -> String -> ABHashtable.ABHashtable -> ABHashtable.ABHashtable -> ABHashtable.ABHashtable -> IO ()
init_4 this name hashtable rectangleHashtable rectangleArrayHashtable = do
        initFields_ this
        jset (this).hashtable (hashtable)
        jset (this).rectangleHashtable (rectangleHashtable)
        jset (this).rectangleArrayOfArraysHashtable (rectangleArrayHashtable)
        jset (this).name (name)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))

getName_impl :: BaseResourceAnimationInterfaceFactoryInterfaceFactory -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))) () a1

init_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory)) a1

init_impl :: BaseResourceAnimationInterfaceFactoryInterfaceFactory -> Int -> IO (())
init_impl this level = do
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Available List of Animations: "))) (jio (ABHashtable.toString ((jget (this).hashtable))))))))) this (jget (commonStrings).iNIT))
        Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.setInitialized this True)
        pure ()


-- throws Exception
initImageCache :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> Int -> IO (())
initImageCache object_ a1 a2 = jmethod object_ "initImageCache" (\() -> (initImageCache_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))) () a1 a2

initImageCache_super :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> Int -> IO (())
initImageCache_super object_ a1 a2 = (initImageCache_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory)) a1 a2

initImageCache_impl :: BaseResourceAnimationInterfaceFactoryInterfaceFactory -> ImageCache.ImageCache -> Int -> IO (())
initImageCache_impl this imageCache level = do
        pure ()


-- throws Exception
add :: (JavaObjectClass this_) => this_ -> String -> BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface -> IO (())
add object_ a1 a2 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))) () a1 a2

add_super :: (JavaObjectClass this_) => this_ -> String -> BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface -> IO (())
add_super object_ a1 a2 = (add_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory)) a1 a2

add_impl :: BaseResourceAnimationInterfaceFactoryInterfaceFactory -> String -> BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface -> IO (())
add_impl this resource animationInterfaceFactoryInterface = do
        when (jio (ABHashtable.containsKey ((jget (this).hashtable)) (javaCast resource :: Any.Any))) $ do
            javaThrow ((JavaException "Exception" (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Resource Already Created: "))) resource)))))))
        Control.Monad.void (ABHashtable.put ((jget (this).hashtable)) resource animationInterfaceFactoryInterface)
        pure ()


-- throws Exception
getBasicAnimationInterfaceFactoryInstance :: (JavaObjectClass this_) => this_ -> String -> IO (BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface)
getBasicAnimationInterfaceFactoryInstance object_ a1 = jmethod object_ "getBasicAnimationInterfaceFactoryInstance" (\() -> (getBasicAnimationInterfaceFactoryInstance_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))) () a1

getBasicAnimationInterfaceFactoryInstance_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface)
getBasicAnimationInterfaceFactoryInstance_super object_ a1 = (getBasicAnimationInterfaceFactoryInstance_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory)) a1

getBasicAnimationInterfaceFactoryInstance_impl :: BaseResourceAnimationInterfaceFactoryInterfaceFactory -> String -> IO (BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface)
getBasicAnimationInterfaceFactoryInstance_impl this resource = do
    javaCatchReturn $ do
        basicAnimationInterfaceFactoryInterfaceCanBeNull <- (ABHashtable.get ((jget (this).hashtable)) resource)
        when (basicAnimationInterfaceFactoryInterfaceCanBeNull == javaNull) $ do
            javaReturn ((javaCast (jget NullAnimationFactory.nULL_NOT_FOR_USE_ANIMATION_FACTORY) :: BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface))
        pure ((javaCast basicAnimationInterfaceFactoryInterfaceCanBeNull :: BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface))


-- throws Exception
getRectangle :: (JavaObjectClass this_) => this_ -> String -> IO (Rectangle.Rectangle)
getRectangle object_ a1 = jmethod object_ "getRectangle" (\() -> (getRectangle_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))) () a1

getRectangle_super :: (JavaObjectClass this_) => this_ -> String -> IO (Rectangle.Rectangle)
getRectangle_super object_ a1 = (getRectangle_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory)) a1

getRectangle_impl :: BaseResourceAnimationInterfaceFactoryInterfaceFactory -> String -> IO (Rectangle.Rectangle)
getRectangle_impl this resource = do
    javaCatchReturn $ do
        rectangleCanBeNull <- (ABHashtable.get ((jget (this).rectangleHashtable)) resource)
        when (rectangleCanBeNull == javaNull) $ do
            javaReturn (RectangleFactory.sINGLETON)
        pure ((javaCast rectangleCanBeNull :: Rectangle.Rectangle))


-- throws Exception
addRectangle :: (JavaObjectClass this_) => this_ -> String -> Rectangle.Rectangle -> IO (())
addRectangle object_ a1 a2 = jmethod object_ "addRectangle" (\() -> (addRectangle_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))) () a1 a2

addRectangle_super :: (JavaObjectClass this_) => this_ -> String -> Rectangle.Rectangle -> IO (())
addRectangle_super object_ a1 a2 = (addRectangle_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory)) a1 a2

addRectangle_impl :: BaseResourceAnimationInterfaceFactoryInterfaceFactory -> String -> Rectangle.Rectangle -> IO (())
addRectangle_impl this resource rectangle = do
        Control.Monad.void (ABHashtable.put ((jget (this).rectangleHashtable)) resource rectangle)
        pure ()


-- throws Exception
getRectangleArrayOfArrays :: (JavaObjectClass this_) => this_ -> String -> IO (JavaArray (JavaArray (Rectangle.Rectangle)))
getRectangleArrayOfArrays object_ a1 = jmethod object_ "getRectangleArrayOfArrays" (\() -> (getRectangleArrayOfArrays_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))) () a1

getRectangleArrayOfArrays_super :: (JavaObjectClass this_) => this_ -> String -> IO (JavaArray (JavaArray (Rectangle.Rectangle)))
getRectangleArrayOfArrays_super object_ a1 = (getRectangleArrayOfArrays_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory)) a1

getRectangleArrayOfArrays_impl :: BaseResourceAnimationInterfaceFactoryInterfaceFactory -> String -> IO (JavaArray (JavaArray (Rectangle.Rectangle)))
getRectangleArrayOfArrays_impl this resource = do
    javaCatchReturn $ do
        valueCanBeNull <- (ABHashtable.get ((jget (this).rectangleArrayOfArraysHashtable)) resource)
        if (valueCanBeNull /= javaNull) then do
            let rectangleArrayOfArrays = (javaCast valueCanBeNull :: JavaArray (JavaArray (Rectangle.Rectangle)))
            javaReturn (rectangleArrayOfArrays)
        else do
            javaReturn (RectangleFactory.aRRAY_OF_ARRAYS)


-- throws Exception
addRectangleArrayOfArrays :: (JavaObjectClass this_) => this_ -> String -> JavaArray (JavaArray (Rectangle.Rectangle)) -> IO (())
addRectangleArrayOfArrays object_ a1 a2 = jmethod object_ "addRectangleArrayOfArrays" (\() -> (addRectangleArrayOfArrays_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))) () a1 a2

addRectangleArrayOfArrays_super :: (JavaObjectClass this_) => this_ -> String -> JavaArray (JavaArray (Rectangle.Rectangle)) -> IO (())
addRectangleArrayOfArrays_super object_ a1 a2 = (addRectangleArrayOfArrays_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory)) a1 a2

addRectangleArrayOfArrays_impl :: BaseResourceAnimationInterfaceFactoryInterfaceFactory -> String -> JavaArray (JavaArray (Rectangle.Rectangle)) -> IO (())
addRectangleArrayOfArrays_impl this resource rectangleArrayOfArrays = do
        Control.Monad.void (ABHashtable.put ((jget (this).rectangleArrayOfArraysHashtable)) resource rectangleArrayOfArrays)
        pure ()


isFeature :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFeature object_ = jmethod object_ "isFeature" (\() -> (isFeature_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))) ()

isFeature_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFeature_super object_ = (isFeature_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))

isFeature_impl :: BaseResourceAnimationInterfaceFactoryInterfaceFactory -> IO (Bool)
isFeature_impl this = do
        pure (False)


isLoadingLevel :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isLoadingLevel object_ a1 = jmethod object_ "isLoadingLevel" (\() -> (isLoadingLevel_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))) () a1

isLoadingLevel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isLoadingLevel_super object_ a1 = (isLoadingLevel_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory)) a1

isLoadingLevel_impl :: BaseResourceAnimationInterfaceFactoryInterfaceFactory -> Int -> IO (Bool)
isLoadingLevel_impl this level = do
    javaCatchReturn $ do
        resourceLoadingLevelFactory <- (ResourceLoadingLevelFactory.getInstance)
        if (level == (jio (ResourceLoadingLevel.getLevel ((jget (resourceLoadingLevelFactory).lOAD_ALL))))) then do
            javaReturn (True)
        else do
            javaReturn (False)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))

toString_impl :: BaseResourceAnimationInterfaceFactoryInterfaceFactory -> IO (String)
toString_impl this = do
        (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (Class.getName ((jio (jobjectGetClass this)))))))) (jget ((jio (CommonSeps.getInstance))).sEMICOLON)))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) (jget (this).name)))))


getHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getHashtable object_ = jmethod object_ "getHashtable" (\() -> (getHashtable_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))) ()

getHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getHashtable_super object_ = (getHashtable_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))

getHashtable_impl :: BaseResourceAnimationInterfaceFactoryInterfaceFactory -> IO (ABHashtable.ABHashtable)
getHashtable_impl this = do
        pure ((jget (this).hashtable))


getRectangleHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getRectangleHashtable object_ = jmethod object_ "getRectangleHashtable" (\() -> (getRectangleHashtable_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))) ()

getRectangleHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getRectangleHashtable_super object_ = (getRectangleHashtable_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))

getRectangleHashtable_impl :: BaseResourceAnimationInterfaceFactoryInterfaceFactory -> IO (ABHashtable.ABHashtable)
getRectangleHashtable_impl this = do
        pure ((jget (this).rectangleHashtable))


getRectangleArrayOfArraysHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getRectangleArrayOfArraysHashtable object_ = jmethod object_ "getRectangleArrayOfArraysHashtable" (\() -> (getRectangleArrayOfArraysHashtable_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))) ()

getRectangleArrayOfArraysHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getRectangleArrayOfArraysHashtable_super object_ = (getRectangleArrayOfArraysHashtable_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))

getRectangleArrayOfArraysHashtable_impl :: BaseResourceAnimationInterfaceFactoryInterfaceFactory -> IO (ABHashtable.ABHashtable)
getRectangleArrayOfArraysHashtable_impl this = do
        pure ((jget (this).rectangleArrayOfArraysHashtable))


setInitialized :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setInitialized object_ a1 = jmethod object_ "setInitialized" (\() -> (setInitialized_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))) () a1

setInitialized_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setInitialized_super object_ a1 = (setInitialized_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory)) a1

setInitialized_impl :: BaseResourceAnimationInterfaceFactoryInterfaceFactory -> Bool -> IO (())
setInitialized_impl this initialized = do
        jset (this).initialized (initialized)
        pure ()


isInitialized :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized object_ = jmethod object_ "isInitialized" (\() -> (isInitialized_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))) ()

isInitialized_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized_super object_ = (isInitialized_impl (javaCast object_ :: BaseResourceAnimationInterfaceFactoryInterfaceFactory))

isInitialized_impl :: BaseResourceAnimationInterfaceFactoryInterfaceFactory -> IO (Bool)
isInitialized_impl this = do
        pure ((jget (this).initialized))


