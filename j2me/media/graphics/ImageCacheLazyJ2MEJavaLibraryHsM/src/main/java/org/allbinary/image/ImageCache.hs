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
-- package org.allbinary.image
module ImageCache (module ImageCache, module ImageCacheBase) where

import ImageCacheBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, firstProcess, firstProcess_super, firstProcess_impl, addListener, addListener_super, addListener_impl, waitForLoadNow, waitForLoadNow_super, waitForLoadNow_impl, loadImageForAnimation, loadImageForAnimation_super, loadImageForAnimation_impl, loadImages, loadImages_super, loadImages_impl, loadImageForAnimations, loadImageForAnimations_super, loadImageForAnimations_impl, loadRemainingAnimations, loadRemainingAnimations_super, loadRemainingAnimations_impl, loadImageForLazyAnimation, loadImageForLazyAnimation_super, loadImageForLazyAnimation_impl, loadNextImage, loadNextImage_super, loadNextImage_impl, loadImage, loadImage_super, loadImage_impl, init, init_super, init_impl, creatImage, creatImage_super, creatImage_impl, get, get_super, get_impl, getWithKey, getWithKey_super, getWithKey_impl, getIndex, getIndex_super, getIndex_impl, createImageFromInputStream, createImageFromInputStream_super, createImageFromInputStream_impl, createImageLater, createImageLater_super, createImageLater_impl, getAssociated, getAssociated_super, getAssociated_impl, add, add_super, add_impl, insertFirst, insertFirst_super, insertFirst_impl, progressEnded, progressEnded_super, progressEnded_impl, runTask, runTask_super, runTask_impl, initProgress, initProgress_super, initProgress_impl, isLazy, isLazy_super, isLazy_impl, nULL_IMAGE_CACHE, tsUtil, concurrentImageLoadingProcessor, commonStrings, commonSeps, resourceUtil, gameGlobalsFactory, gdResources, loadNowList, loadSoonList, loadList, loadAfterList, lock, firstTime, totalLoaded, progressEnded, hasAnyLazyAnimationFactories, processor, endProcessor, lOAD_IMAGE_FOR_ANIMATION)
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
import qualified Thread -- same package or java.lang
import qualified ImageFactory -- same package or java.lang
import qualified ABHashtable -- same package or java.lang
import qualified BaseImageAnimationFactory -- same package or java.lang
import qualified InputStream -- java.io.InputStream
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified TsUtil -- org.allbinary.TsUtil
import qualified LazyImageRotationAnimation -- org.allbinary.animation.image.LazyImageRotationAnimation
import qualified GameGlobalsFactory -- org.allbinary.canvas.GameGlobalsFactory
import qualified Processor -- org.allbinary.canvas.Processor
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified ResourceUtil -- org.allbinary.data.resource.ResourceUtil
import qualified ABToGBUtil -- org.allbinary.game.canvas.ABToGBUtil
import qualified AllBinaryGameCanvas -- org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
import qualified GDLazyResources -- org.allbinary.game.gd.resource.GDLazyResources
import qualified GDResources -- org.allbinary.game.gd.resource.GDResources
import qualified ProgressCanvas -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
import qualified ProgressCanvasFactory -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Memory -- org.allbinary.system.Memory
import qualified BaseImageLoadingProcessor -- org.allbinary.thread.BaseImageLoadingProcessor
import qualified ConcurrentImageLoadingProcessor -- org.allbinary.thread.ConcurrentImageLoadingProcessor
import qualified SynchObject -- org.allbinary.thread.SynchObject
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified ABSystemWrapper -- org.allbinary.logic.ABSystemWrapper
import qualified ImageCacheBase

data ImageCache = ImageCache
    { header_ :: JavaHeader
    , base :: ImageCacheBase.ImageCacheBase
    , tsUtil :: IORef (TsUtil.TsUtil)
    , concurrentImageLoadingProcessor :: IORef (BaseImageLoadingProcessor.BaseImageLoadingProcessor)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , resourceUtil :: IORef (ResourceUtil.ResourceUtil)
    , gameGlobalsFactory :: IORef (GameGlobalsFactory.GameGlobalsFactory)
    , gdResources :: IORef (GDResources.GDResources)
    , loadNowList :: IORef (BasicArrayList.BasicArrayList)
    , loadSoonList :: IORef (BasicArrayList.BasicArrayList)
    , loadList :: IORef (BasicArrayList.BasicArrayList)
    , loadAfterList :: IORef (BasicArrayList.BasicArrayList)
    , lock :: IORef (SynchObject.SynchObject)
    , firstTime :: IORef (Bool)
    , totalLoaded :: IORef (Int)
    , progressEnded :: IORef (Bool)
    , hasAnyLazyAnimationFactories :: IORef (Bool)
    , processor :: IORef (Processor.Processor)
    , endProcessor :: IORef (Processor.Processor)
    , lOAD_IMAGE_FOR_ANIMATION :: IORef (String)
    }

instance JavaNull ImageCache where
    javaNull = javaNullRecord "ImageCache"

instance JavaEquals ImageCache where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageCache where
    (==) = jrecordEquals

instance JavaObjectClass ImageCache where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_IMAGE_CACHE #-}
nULL_IMAGE_CACHE = unsafePerformIO ((new_))

newRecord_ :: IO ImageCache
newRecord_ = do
    base <- ImageCacheBase.newRecord_
    let header_ = base.header_
    tsUtil <- newIORef javaNull
    concurrentImageLoadingProcessor <- newIORef javaNull
    commonStrings <- newIORef javaNull
    commonSeps <- newIORef javaNull
    resourceUtil <- newIORef javaNull
    gameGlobalsFactory <- newIORef javaNull
    gdResources <- newIORef javaNull
    loadNowList <- newIORef javaNull
    loadSoonList <- newIORef javaNull
    loadList <- newIORef javaNull
    loadAfterList <- newIORef javaNull
    lock <- newIORef javaNull
    firstTime <- newIORef False
    totalLoaded <- newIORef 0
    progressEnded <- newIORef False
    hasAnyLazyAnimationFactories <- newIORef False
    processor <- newIORef javaNull
    endProcessor <- newIORef javaNull
    lOAD_IMAGE_FOR_ANIMATION <- newIORef ""
    let this = ImageCache header_ base tsUtil concurrentImageLoadingProcessor commonStrings commonSeps resourceUtil gameGlobalsFactory gdResources loadNowList loadSoonList loadList loadAfterList lock firstTime totalLoaded progressEnded hasAnyLazyAnimationFactories processor endProcessor lOAD_IMAGE_FOR_ANIMATION
    jregisterLevel header_ this
    jregisterMethod header_ "firstProcess" (\() -> firstProcess_impl this)
    jregisterMethod header_ "addListener" (\() -> addListener_impl this)
    jregisterMethod header_ "waitForLoadNow" (\() -> waitForLoadNow_impl this)
    jregisterMethod header_ "loadImageForAnimation" (\() -> loadImageForAnimation_impl this)
    jregisterMethod header_ "loadImages" (\() -> loadImages_impl this)
    jregisterMethod header_ "loadImageForAnimations" (\() -> loadImageForAnimations_impl this)
    jregisterMethod header_ "loadRemainingAnimations" (\() -> loadRemainingAnimations_impl this)
    jregisterMethod header_ "loadImageForLazyAnimation" (\() -> loadImageForLazyAnimation_impl this)
    jregisterMethod header_ "loadNextImage" (\() -> loadNextImage_impl this)
    jregisterMethod header_ "loadImage" (\() -> loadImage_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "creatImage" (\() -> creatImage_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getWithKey" (\() -> getWithKey_impl this)
    jregisterMethod header_ "getIndex" (\() -> getIndex_impl this)
    jregisterMethod header_ "createImageFromInputStream" (\() -> createImageFromInputStream_impl this)
    jregisterMethod header_ "createImageLater" (\() -> createImageLater_impl this)
    jregisterMethod header_ "getAssociated" (\() -> getAssociated_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "insertFirst" (\() -> insertFirst_impl this)
    jregisterMethod header_ "progressEnded" (\() -> progressEnded_impl this)
    jregisterMethod header_ "runTask" (\() -> runTask_impl this)
    jregisterMethod header_ "initProgress" (\() -> initProgress_impl this)
    jregisterMethod header_ "isLazy" (\() -> isLazy_impl this)
    pure this

initFields_ :: ImageCache -> IO ()
initFields_ this = do
    jset this.tsUtil =<< (TsUtil.getInstance)
    jset this.concurrentImageLoadingProcessor =<< (fmap (\value_ -> javaCast value_ :: BaseImageLoadingProcessor.BaseImageLoadingProcessor) (ConcurrentImageLoadingProcessor.new_1 this))
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.resourceUtil =<< (ResourceUtil.getInstance)
    jset this.gameGlobalsFactory =<< (GameGlobalsFactory.getInstance)
    jset this.gdResources =<< (GDResources.getInstance)
    jset this.loadNowList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.loadSoonList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.loadList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.loadAfterList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.lock =<< (SynchObject.new_)
    jset this.firstTime (True)
    jset this.totalLoaded (0)
    jset this.progressEnded (False)
    jset this.hasAnyLazyAnimationFactories (False)
    jset this.processor =<< (fmap (\value_ -> javaCast value_ :: Processor.Processor) (FirstProcessor.new_))
    jset this.endProcessor =<< (Processor.getInstance)
    jset this.lOAD_IMAGE_FOR_ANIMATION ("Load Image Animation")
    pure ()

new_ :: IO ImageCache
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageCache -> IO ()
init_ this = do
        ImageCacheBase.init_ this.base
        initFields_ this
        pure ()
        pure ()


firstProcess :: (JavaObjectClass this_) => this_ -> IO (())
firstProcess object_ = jmethod object_ "firstProcess" (\() -> (firstProcess_impl (javaCast object_ :: ImageCache))) ()

firstProcess_super :: (JavaObjectClass this_) => this_ -> IO (())
firstProcess_super object_ = (firstProcess_impl (javaCast object_ :: ImageCache))

firstProcess_impl :: ImageCache -> IO (())
firstProcess_impl this = do
        logUtil <- (LogUtil.getInstance)
        isHTML <- (J2MEUtil.isHTML)
        if isHTML then do
            assignedValue <- (Processor.getInstance)
            jset (this).processor (assignedValue)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: Processor.Processor) (HTMLEndProcessor.new_))
            jset (this).endProcessor (assignedValue)
        else do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: Processor.Processor) (NotHTMLProcessor.new_))
            jset (this).processor (assignedValue)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: Processor.Processor) (NotHTMLEndProcessor.new_))
            jset (this).endProcessor (assignedValue)
            handle (\(e :: JavaException) -> do
                Control.Monad.void (LogUtil.putF logUtil (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).eND_METHOD_NAME))
                ) $ do
                Control.Monad.void (ImageCache.runTask this)
        pure ()


addListener :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
addListener object_ a1 = jmethod object_ "addListener" (\() -> (addListener_impl (javaCast object_ :: ImageCache))) () (jtoObject a1)

addListener_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
addListener_super object_ a1 = (addListener_impl (javaCast object_ :: ImageCache)) (jtoObject a1)

addListener_impl :: ImageCache -> JavaObject -> IO (())
addListener_impl this rendererObject_ = do
        let renderer = jtoObject rendererObject_
        pure ()


-- throws Exception
waitForLoadNow :: (JavaObjectClass this_) => this_ -> IO (())
waitForLoadNow object_ = jmethod object_ "waitForLoadNow" (\() -> (waitForLoadNow_impl (javaCast object_ :: ImageCache))) ()

waitForLoadNow_super :: (JavaObjectClass this_) => this_ -> IO (())
waitForLoadNow_super object_ = (waitForLoadNow_impl (javaCast object_ :: ImageCache))

waitForLoadNow_impl :: ImageCache -> IO (())
waitForLoadNow_impl this = do
        when (jget (this).firstTime) $ do
            abToGBUtil <- (ABToGBUtil.getInstance)
            let abCanvas = (javaCast (jget (abToGBUtil).abCanvas) :: AllBinaryGameCanvas.AllBinaryGameCanvas)
            fix $ \loop -> when (((jio (BasicArrayList.isEmpty ((jget (this).loadNowList)))) && (((Prelude.not (jio (AllBinaryGameCanvas.isInitialized abCanvas))) || (((jio (AllBinaryGameCanvas.isInitialized abCanvas)) && (jget (this).hasAnyLazyAnimationFactories)))))) && (Prelude.not (jget (this).progressEnded))) $ javaIteration (loop) $ do
                Control.Monad.void (threadDelay (Prelude.fromIntegral 120 * 1000))
            jset (this).firstTime (False)
        pure ()


-- throws Exception
loadImageForAnimation :: (JavaObjectClass this_) => this_ -> IO (())
loadImageForAnimation object_ = jmethod object_ "loadImageForAnimation" (\() -> (loadImageForAnimation_impl (javaCast object_ :: ImageCache))) ()

loadImageForAnimation_super :: (JavaObjectClass this_) => this_ -> IO (())
loadImageForAnimation_super object_ = (loadImageForAnimation_impl (javaCast object_ :: ImageCache))

loadImageForAnimation_impl :: ImageCache -> IO (())
loadImageForAnimation_impl this = do
    javaCatchReturn $ do
        lazyImageRotationAnimation <- newIORef (javaNull)
        do -- synchronized
            when (jio (BasicArrayList.isEmpty ((jget (this).loadNowList)))) $ do
                Control.Monad.void (Processor.process ((jget (this).endProcessor)))
                if (jio (BasicArrayList.isEmpty ((jget (this).loadSoonList)))) then do
                    if (jio (BasicArrayList.isEmpty ((jget (this).loadAfterList)))) then do
                        if (jget (this).firstTime) then do
                            pure ()
                        else if (jget ((jget (this).gameGlobalsFactory)).newCanvas) then do
                            pure ()
                        else do
                            Control.Monad.void (ImageCache.loadNextImage this)
                        javaReturn (())
                    else do
                        jset lazyImageRotationAnimation ((javaCast (jio (BasicArrayList.get ((jget (this).loadAfterList)) 0)) :: LazyImageRotationAnimation.LazyImageRotationAnimation))
                        when (jio (ImageCache.loadImageForLazyAnimation this (jget lazyImageRotationAnimation))) $ do
                            Control.Monad.void (BasicArrayList.remove ((jget (this).loadAfterList)) (jget lazyImageRotationAnimation))
                else do
                    jset lazyImageRotationAnimation ((javaCast (jio (BasicArrayList.get ((jget (this).loadSoonList)) 0)) :: LazyImageRotationAnimation.LazyImageRotationAnimation))
                    when (jio (ImageCache.loadImageForLazyAnimation this (jget lazyImageRotationAnimation))) $ do
                        Control.Monad.void (BasicArrayList.remove ((jget (this).loadSoonList)) (jget lazyImageRotationAnimation))
                javaReturn (())
            jset lazyImageRotationAnimation ((javaCast (jio (BasicArrayList.get ((jget (this).loadNowList)) 0)) :: LazyImageRotationAnimation.LazyImageRotationAnimation))
        when (jio (ImageCache.loadImageForLazyAnimation this (jget lazyImageRotationAnimation))) $ do
            do -- synchronized
                Control.Monad.void (BasicArrayList.remove ((jget (this).loadNowList)) (jget lazyImageRotationAnimation))
            when ((jget ((jget lazyImageRotationAnimation)).layoutIndex) /= 0) $ do
                list <- (ImageCache.getAssociated this (jget lazyImageRotationAnimation))
                do -- synchronized
                    size <- (BasicArrayList.size list)
                    when (size > 0) $ do
                        Control.Monad.void (BasicArrayList.addAllList ((jget (this).loadSoonList)) list)
            progressCanvas <- (ProgressCanvasFactory.getInstance)
            isHTML <- (J2MEUtil.isHTML)
            if ((jio (BasicArrayList.isEmpty ((jget (this).loadNowList)))) && (((Prelude.not isHTML) || (jget (this).firstTime)))) then do
                Control.Monad.void (ProgressCanvas.endFromInitialLazyLoadingComplete progressCanvas)
            else do
                when (((jget (this).totalLoaded) `rem` 10) == 0) $ do
                    Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas 1 (jget (this).lOAD_IMAGE_FOR_ANIMATION))
    pure ()


-- throws Exception
loadImages :: (JavaObjectClass this_) => this_ -> IO (())
loadImages object_ = jmethod object_ "loadImages" (\() -> (loadImages_impl (javaCast object_ :: ImageCache))) ()

loadImages_super :: (JavaObjectClass this_) => this_ -> IO (())
loadImages_super object_ = (loadImages_impl (javaCast object_ :: ImageCache))

loadImages_impl :: ImageCache -> IO (())
loadImages_impl this = do
        fix $ \loop -> when ((Prelude.not (jio (BasicArrayList.isEmpty ((jget (this).loadList))))) || (Prelude.not (jio (BasicArrayList.isEmpty ((jget (this).loadNowList)))))) $ javaIteration (loop) $ do
            Control.Monad.void (ImageCache.loadImageForAnimations this)
            Control.Monad.void (ImageCache.loadNextImage this)
        pure ()


-- throws Exception
loadImageForAnimations :: (JavaObjectClass this_) => this_ -> IO (())
loadImageForAnimations object_ = jmethod object_ "loadImageForAnimations" (\() -> (loadImageForAnimations_impl (javaCast object_ :: ImageCache))) ()

loadImageForAnimations_super :: (JavaObjectClass this_) => this_ -> IO (())
loadImageForAnimations_super object_ = (loadImageForAnimations_impl (javaCast object_ :: ImageCache))

loadImageForAnimations_impl :: ImageCache -> IO (())
loadImageForAnimations_impl this = do
        fix $ \loop -> when (Prelude.not (jio (BasicArrayList.isEmpty ((jget (this).loadNowList))))) $ javaIteration (loop) $ do
            Control.Monad.void (ImageCache.loadImageForAnimation this)
        pure ()


-- throws Exception
loadRemainingAnimations :: (JavaObjectClass this_) => this_ -> IO (())
loadRemainingAnimations object_ = jmethod object_ "loadRemainingAnimations" (\() -> (loadRemainingAnimations_impl (javaCast object_ :: ImageCache))) ()

loadRemainingAnimations_super :: (JavaObjectClass this_) => this_ -> IO (())
loadRemainingAnimations_super object_ = (loadRemainingAnimations_impl (javaCast object_ :: ImageCache))

loadRemainingAnimations_impl :: ImageCache -> IO (())
loadRemainingAnimations_impl this = do
        fix $ \loop -> when ((Prelude.not (jio (BasicArrayList.isEmpty ((jget (this).loadAfterList))))) || (Prelude.not (jio (BasicArrayList.isEmpty ((jget (this).loadNowList)))))) $ javaIteration (loop) $ do
            fix $ \loop -> when (Prelude.not (jio (BasicArrayList.isEmpty ((jget (this).loadNowList))))) $ javaIteration (loop) $ do
                Control.Monad.void (ImageCache.loadImageForAnimation this)
            lazyImageRotationAnimation <- newIORef (javaNull)
            do -- synchronized
                when (Prelude.not (jio (BasicArrayList.isEmpty ((jget (this).loadAfterList))))) $ do
                    jset lazyImageRotationAnimation ((javaCast (jio (BasicArrayList.removeAt ((jget (this).loadAfterList)) 0)) :: LazyImageRotationAnimation.LazyImageRotationAnimation))
            when ((jget lazyImageRotationAnimation) /= javaNull) $ do
                Control.Monad.void (ImageCache.loadImageForLazyAnimation this (jget lazyImageRotationAnimation))
        pure ()


-- throws Exception
loadImageForLazyAnimation :: (JavaObjectClass this_) => this_ -> LazyImageRotationAnimation.LazyImageRotationAnimation -> IO (Bool)
loadImageForLazyAnimation object_ a1 = jmethod object_ "loadImageForLazyAnimation" (\() -> (loadImageForLazyAnimation_impl (javaCast object_ :: ImageCache))) () a1

loadImageForLazyAnimation_super :: (JavaObjectClass this_) => this_ -> LazyImageRotationAnimation.LazyImageRotationAnimation -> IO (Bool)
loadImageForLazyAnimation_super object_ a1 = (loadImageForLazyAnimation_impl (javaCast object_ :: ImageCache)) a1

loadImageForLazyAnimation_impl :: ImageCache -> LazyImageRotationAnimation.LazyImageRotationAnimation -> IO (Bool)
loadImageForLazyAnimation_impl this lazyImageRotationAnimation = do
    javaCatchReturn $ do
        image <- (BaseImageAnimationFactory.getImage ((jget (lazyImageRotationAnimation).animationInterfaceFactoryInterface)))
        when (jio (ImageCache.loadImage this image)) $ do
            Control.Monad.void (LazyImageRotationAnimation.setRealAnimation lazyImageRotationAnimation)
            javaReturn (True)
        pure (False)


-- throws Exception
loadNextImage :: (JavaObjectClass this_) => this_ -> IO (())
loadNextImage object_ = jmethod object_ "loadNextImage" (\() -> (loadNextImage_impl (javaCast object_ :: ImageCache))) ()

loadNextImage_super :: (JavaObjectClass this_) => this_ -> IO (())
loadNextImage_super object_ = (loadNextImage_impl (javaCast object_ :: ImageCache))

loadNextImage_impl :: ImageCache -> IO (())
loadNextImage_impl this = do
    javaCatchReturn $ do
        image <- newIORef (javaNull)
        do -- synchronized
            when ((jio (BasicArrayList.size ((jget (this).loadList)))) == 0) $ do
                javaReturn (())
            jset image ((javaCast (jio (BasicArrayList.removeAt ((jget (this).loadList)) 0)) :: Image.Image))
        Control.Monad.void (ImageCache.loadImage this (jget image))
    pure ()


-- throws Exception
loadImage :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Bool)
loadImage object_ a1 = jmethod object_ "loadImage" (\() -> (loadImage_impl (javaCast object_ :: ImageCache))) () a1

loadImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Bool)
loadImage_super object_ a1 = (loadImage_impl (javaCast object_ :: ImageCache)) a1

loadImage_impl :: ImageCache -> Image.Image -> IO (Bool)
loadImage_impl this image = do
    javaCatchReturn $ do
        if (jio (Image.isReady image)) then do
            javaReturn (True)
        else do
            if ((jio (Image.getImage image)) /= javaNull) then do
                when (jio (Image.setReady image)) $ do
                    when (jio (Image.isReady image)) $ do
                        jset (this).totalLoaded ((jget (this).totalLoaded) + 1)
                        javaReturn (True)
            else do
                key <- (Image.getName image)
                image2 <- (ImageCache.creatImage this key)
                if (jio (Image.isReady image2)) then do
                    Control.Monad.void (ImageCache.init this image image2)
                    javaReturn (True)
                else do
                    Control.Monad.void (Image.setImage image (jio (Image.getImage image2)))
        pure (False)


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ImageCache))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: ImageCache)) a1 a2

init_impl :: ImageCache -> Image.Image -> Image.Image -> IO (())
init_impl this image image2 = do
        Control.Monad.void (Image.init image (jio (Image.getImage image2)))
        pure ()


-- throws Exception
creatImage :: (JavaObjectClass this_) => this_ -> String -> IO (Image.Image)
creatImage object_ a1 = jmethod object_ "creatImage" (\() -> (creatImage_impl (javaCast object_ :: ImageCache))) () a1

creatImage_super :: (JavaObjectClass this_) => this_ -> String -> IO (Image.Image)
creatImage_super object_ a1 = (creatImage_impl (javaCast object_ :: ImageCache)) a1

creatImage_impl :: ImageCache -> String -> IO (Image.Image)
creatImage_impl this key = do
        inputStream <- (ResourceUtil.getResourceAsStream ((jget (this).resourceUtil)) key)
        image <- (ImageFactory.createImageFromInputStream ((jio (ImageFactory.getInstance))) inputStream)
        Control.Monad.void (Image.setName image key)
        pure (image)


-- throws Exception
get :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Image.Image)
get object_ a1 a2 a3 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: ImageCache))) () a1 a2 a3

get_super :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Image.Image)
get_super object_ a1 a2 a3 = (get_impl (javaCast object_ :: ImageCache)) a1 a2 a3

get_impl :: ImageCache -> String -> Int -> Int -> IO (Image.Image)
get_impl this caller width height = do
        foundIndex <- newIORef =<< (ImageCacheBase.getIndexWH this width height)
        image <- newIORef =<< (ImageCacheBase.getFromAvailable this (jget foundIndex) width height)
        when ((jget image) == NullImage.nULL_IMAGE) $ do
            jset (this).base.volume (((jget (this).base.volume) + (width * height)))
            when ((jget (this).base.volume) > 32000) $ do
                Control.Monad.void (TsUtil.gc ((jget (this).tsUtil)))
                jset (this).base.volume (0)
            assignedValue <- (ImageCacheBase.createImage this caller width height)
            jset image (assignedValue)
            when ((jget (this).base.nextIndex) > ((jlength (jget (this).base.widths)) - 1)) $ do
                when ((jget foundIndex) == (Prelude.negate 1)) $ do
                    jset foundIndex ((jget (this).base.nextIndex))
                    jsetIndex ((jget (this).base.widths)) ((jget (this).base.nextIndex)) (width)
                    jsetIndex ((jget (this).base.heights)) ((jget (this).base.nextIndex)) (height)
                    jset (this).base.nextIndex ((jget (this).base.nextIndex) + 1)
                Control.Monad.void (add ((jindex ((jget (this).base.listOfList)) ((jget foundIndex)))) (jget image))
        pure ((jget image))


-- throws Exception
getWithKey :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Image.Image)
getWithKey object_ a1 = jmethod object_ "getWithKey" (\() -> (getWithKey_impl (javaCast object_ :: ImageCache))) () (jtoObject a1)

getWithKey_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Image.Image)
getWithKey_super object_ a1 = (getWithKey_impl (javaCast object_ :: ImageCache)) (jtoObject a1)

getWithKey_impl :: ImageCache -> JavaObject -> IO (Image.Image)
getWithKey_impl this keyObject_ = do
        let key = jtoObject keyObject_
        image <- newIORef =<< (ImageCacheBase.getImage this key)
        when ((jget image) == NullImage.nULL_IMAGE) $ do
            let inputStream = javaNull
            handle (\(e :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) "Exception: Trying Again After GC" this (jget ((jget (this).commonStrings)).gET) e)
                Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "InputStream: "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) inputStream))))))) this (jget ((jget (this).commonStrings)).gET))
                Control.Monad.void (TsUtil.gc ((jget (this).tsUtil)))
                Control.Monad.void (TsUtil.gc ((jget (this).tsUtil)))
                Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (Memory.getInfo)) this (jget ((jget (this).commonStrings)).gET))
                Control.Monad.void (threadDelay (Prelude.fromIntegral 100 * 1000))
                assignedValue <- (ImageCache.createImageFromInputStream this key inputStream)
                jset image (assignedValue)
                ) $ do
                assignedValue <- (ImageCache.createImageFromInputStream this key inputStream)
                jset image (assignedValue)
            Control.Monad.void (ABHashtable.put ((jget (this).base.hashtable)) key (jget image))
        pure ((jget image))


getIndex :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
getIndex object_ a1 = jmethod object_ "getIndex" (\() -> (getIndex_impl (javaCast object_ :: ImageCache))) () (jtoObject a1)

getIndex_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
getIndex_super object_ a1 = (getIndex_impl (javaCast object_ :: ImageCache)) (jtoObject a1)

getIndex_impl :: ImageCache -> JavaObject -> IO (Int)
getIndex_impl this keyObject_ = do
    let key = jtoObject keyObject_
    javaCatchReturn $ do
        gdResources <- (GDResources.getInstance)
        let resourceStringArray = (jget (gdResources).resourceStringArray)
        let size = (jlength resourceStringArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            when ((jindex resourceStringArray (index)) == key) $ do
                javaReturn (index)
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "unable to find key: "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) key))))))) this (jget ((jget (this).commonStrings)).rUN))
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
createImageFromInputStream :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> InputStream.InputStream -> IO (Image.Image)
createImageFromInputStream object_ a1 a2 = jmethod object_ "createImageFromInputStream" (\() -> (createImageFromInputStream_impl (javaCast object_ :: ImageCache))) () (jtoObject a1) a2

createImageFromInputStream_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> InputStream.InputStream -> IO (Image.Image)
createImageFromInputStream_super object_ a1 a2 = (createImageFromInputStream_impl (javaCast object_ :: ImageCache)) (jtoObject a1) a2

createImageFromInputStream_impl :: ImageCache -> JavaObject -> InputStream.InputStream -> IO (Image.Image)
createImageFromInputStream_impl this keyObject_ inputStream = do
    let key = jtoObject keyObject_
    javaCatchReturn $ do
        gdLazyResources <- (GDLazyResources.getInstance)
        let resourceStringArray = (jget (gdLazyResources).requiredResourcesBeforeLoadingArray)
        let size = (jlength resourceStringArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            when (key == (jindex resourceStringArray (index))) $ do
                javaReturn =<< (ImageCache.creatImage this (javaCast key :: String))
        Control.Monad.void (ImageCache.runTask this)
        index <- newIORef =<< (ImageCache.getIndex this key)
        let width = (jindex ((jget (gdLazyResources).imageResourceWidthArray)) ((jget index)))
        let height = (jindex ((jget (gdLazyResources).imageResourceHeightArray)) ((jget index)))
        image <- (ImageCache.createImageLater this (javaCast key :: String) width height)
        do -- synchronized
            Control.Monad.void (BasicArrayList.add ((jget (this).loadList)) image)
        pure (image)


-- throws Exception
createImageLater :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Image.Image)
createImageLater object_ a1 a2 a3 = jmethod object_ "createImageLater" (\() -> (createImageLater_impl (javaCast object_ :: ImageCache))) () a1 a2 a3

createImageLater_super :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Image.Image)
createImageLater_super object_ a1 a2 a3 = (createImageLater_impl (javaCast object_ :: ImageCache)) a1 a2 a3

createImageLater_impl :: ImageCache -> String -> Int -> Int -> IO (Image.Image)
createImageLater_impl this key width height = do
        (Image.createImageLater key width height)


getAssociated :: (JavaObjectClass this_) => this_ -> LazyImageRotationAnimation.LazyImageRotationAnimation -> IO (BasicArrayList.BasicArrayList)
getAssociated object_ a1 = jmethod object_ "getAssociated" (\() -> (getAssociated_impl (javaCast object_ :: ImageCache))) () a1

getAssociated_super :: (JavaObjectClass this_) => this_ -> LazyImageRotationAnimation.LazyImageRotationAnimation -> IO (BasicArrayList.BasicArrayList)
getAssociated_super object_ a1 = (getAssociated_impl (javaCast object_ :: ImageCache)) a1

getAssociated_impl :: ImageCache -> LazyImageRotationAnimation.LazyImageRotationAnimation -> IO (BasicArrayList.BasicArrayList)
getAssociated_impl this lazyImageRotationAnimation = do
        list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        do -- synchronized
            lazyImageRotationAnimation2 <- newIORef (javaNull)
            size <- (BasicArrayList.size ((jget (this).loadAfterList)))
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                jset lazyImageRotationAnimation2 ((javaCast (jio (BasicArrayList.get ((jget (this).loadAfterList)) index)) :: LazyImageRotationAnimation.LazyImageRotationAnimation))
                when ((jget ((jget lazyImageRotationAnimation2)).instanceId) == (jget (lazyImageRotationAnimation).instanceId)) $ do
                    Control.Monad.void (BasicArrayList.add list (jget lazyImageRotationAnimation2))
            size2 <- (BasicArrayList.size list)
            forM_ [0 .. size2 - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (BasicArrayList.remove ((jget (this).loadAfterList)) (jio (BasicArrayList.get list index)))
        pure (list)


add :: (JavaObjectClass this_) => this_ -> LazyImageRotationAnimation.LazyImageRotationAnimation -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: ImageCache))) () a1

add_super :: (JavaObjectClass this_) => this_ -> LazyImageRotationAnimation.LazyImageRotationAnimation -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: ImageCache)) a1

add_impl :: ImageCache -> LazyImageRotationAnimation.LazyImageRotationAnimation -> IO (())
add_impl this lazyImageRotationAnimation = do
        do -- synchronized
            Control.Monad.void (BasicArrayList.add ((jget (this).loadAfterList)) lazyImageRotationAnimation)
        pure ()


-- throws Exception
insertFirst :: (JavaObjectClass this_) => this_ -> LazyImageRotationAnimation.LazyImageRotationAnimation -> IO (())
insertFirst object_ a1 = jmethod object_ "insertFirst" (\() -> (insertFirst_impl (javaCast object_ :: ImageCache))) () a1

insertFirst_super :: (JavaObjectClass this_) => this_ -> LazyImageRotationAnimation.LazyImageRotationAnimation -> IO (())
insertFirst_super object_ a1 = (insertFirst_impl (javaCast object_ :: ImageCache)) a1

insertFirst_impl :: ImageCache -> LazyImageRotationAnimation.LazyImageRotationAnimation -> IO (())
insertFirst_impl this lazyImageRotationAnimation = do
        if (jio (BasicArrayList.contains ((jget (this).loadNowList)) lazyImageRotationAnimation)) then do
            pure ()
        else do
            do -- synchronized
                Control.Monad.void (BasicArrayList.add ((jget (this).loadNowList)) lazyImageRotationAnimation)
                Control.Monad.void (BasicArrayList.remove ((jget (this).loadAfterList)) lazyImageRotationAnimation)
        Control.Monad.void (ImageCache.runTask this)
        pure ()


progressEnded :: (JavaObjectClass this_) => this_ -> IO (())
progressEnded object_ = jmethod object_ "progressEnded" (\() -> (progressEnded_impl (javaCast object_ :: ImageCache))) ()

progressEnded_super :: (JavaObjectClass this_) => this_ -> IO (())
progressEnded_super object_ = (progressEnded_impl (javaCast object_ :: ImageCache))

progressEnded_impl :: ImageCache -> IO (())
progressEnded_impl this = do
        jset (this).progressEnded (True)
        pure ()


-- throws Exception
runTask :: (JavaObjectClass this_) => this_ -> IO (())
runTask object_ = jmethod object_ "runTask" (\() -> (runTask_impl (javaCast object_ :: ImageCache))) ()

runTask_super :: (JavaObjectClass this_) => this_ -> IO (())
runTask_super object_ = (runTask_impl (javaCast object_ :: ImageCache))

runTask_impl :: ImageCache -> IO (())
runTask_impl this = do
        Control.Monad.void (Processor.process ((jget (this).processor)))
        pure ()


initProgress :: (JavaObjectClass this_) => this_ -> IO (())
initProgress object_ = jmethod object_ "initProgress" (\() -> (initProgress_impl (javaCast object_ :: ImageCache))) ()

initProgress_super :: (JavaObjectClass this_) => this_ -> IO (())
initProgress_super object_ = (initProgress_impl (javaCast object_ :: ImageCache))

initProgress_impl :: ImageCache -> IO (())
initProgress_impl this = do
        when (jget (this).firstTime) $ do
            jset (this).firstTime (False)
        pure ()


isLazy :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLazy object_ = jmethod object_ "isLazy" (\() -> (isLazy_impl (javaCast object_ :: ImageCache))) ()

isLazy_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLazy_super object_ = (isLazy_impl (javaCast object_ :: ImageCache))

isLazy_impl :: ImageCache -> IO (Bool)
isLazy_impl this = do
        pure (True)

-- Java nested class NotHTMLProcessor: move it to its own module NotHTMLProcessor
-- Java nested class NotHTMLEndProcessor: move it to its own module NotHTMLEndProcessor
-- Java nested class HTMLEndProcessor: move it to its own module HTMLEndProcessor
-- Java nested class FirstProcessor: move it to its own module FirstProcessor

