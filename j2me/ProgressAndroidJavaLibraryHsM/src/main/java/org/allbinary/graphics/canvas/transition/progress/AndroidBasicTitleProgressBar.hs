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
-- package org.allbinary.graphics.canvas.transition.progress
module AndroidBasicTitleProgressBar (module AndroidBasicTitleProgressBar, module ProgressCanvas) where

import ProgressCanvas hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, initActivity, initActivity_super, initActivity_impl, updateCurrent, updateCurrent_super, updateCurrent_impl, onEvent, onEvent_super, onEvent_impl, onDisplayChangeEvent, onDisplayChangeEvent_super, onDisplayChangeEvent_impl, loadProgressImages, loadProgressImages_super, loadProgressImages_impl, isInitialized, isInitialized_super, isInitialized_impl, start, start_super, start_impl, end, end_super, end_impl, addEarlyPortion, addEarlyPortion_super, addEarlyPortion_impl, addPortion, addPortion_super, addPortion_impl, addNormalPortion, addNormalPortion_super, addNormalPortion_impl, setValue, setValue_super, setValue_impl, waitUntilDisplayed, waitUntilDisplayed_super, waitUntilDisplayed_impl, setImages, setImages_super, setImages_impl, initOpenGL, initOpenGL_super, initOpenGL_impl, update, update_super, update_impl, getImage, getImage_super, getImage_impl, paint2, paint2_super, paint2_impl, setBackgroundResource, setBackgroundResource_super, setBackgroundResource_impl, setBackground, setBackground_super, setBackground_impl, setPortion, setPortion_super, setPortion_impl, getPortion, getPortion_super, getPortion_impl, rESOURCE, showTitleProgressBarRunnable, dismissTitleProgressBarRunnable, titleProgressDialogPortionSetProgressRunnable, titleProgressDialogSetProgressRunnable, midletActivity, portion, iMAGE, image, animation, background)
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
import qualified ShowTitleProgressBarRunnable -- same package or java.lang
import qualified DismissTitleProgressBarRunnable -- same package or java.lang
import qualified TitleProgressBarSetProgressRunnable -- same package or java.lang
import qualified TitleProgressBarPortionSetProgressRunnable -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified SimpleProgressActivityInterface -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified CanvasStrings -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified Activity -- android.app.Activity
import qualified AndroidUtil -- org.allbinary.AndroidUtil
import qualified GameFeatureImageCacheFactory -- org.allbinary.image.GameFeatureImageCacheFactory
import qualified PreResourceImageUtil -- org.allbinary.image.PreResourceImageUtil
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified ExceptionUtil -- org.allbinary.logic.java.exception.ExceptionUtil
import qualified Animation -- org.allbinary.animation.Animation
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified MainFeatureFactory -- org.allbinary.game.configuration.feature.MainFeatureFactory
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified DisplayChangeEvent -- org.allbinary.graphics.displayable.event.DisplayChangeEvent
import qualified DisplayChangeEventHandler -- org.allbinary.graphics.displayable.event.DisplayChangeEventHandler
import qualified DisplayChangeEventListener -- org.allbinary.graphics.displayable.event.DisplayChangeEventListener
import qualified ImageCacheFactory -- org.allbinary.image.ImageCacheFactory
import qualified ImageScaleUtil -- org.allbinary.media.image.ImageScaleUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified ImageAnimation -- org.allbinary.animation.image.ImageAnimation
import qualified ResourceUtil -- org.allbinary.data.resource.ResourceUtil
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified ARunnable -- org.allbinary.thread.ARunnable
import qualified NullRunnable -- org.allbinary.thread.NullRunnable
import qualified ProgressCanvas

-- implements DisplayChangeEventListener
data AndroidBasicTitleProgressBar = AndroidBasicTitleProgressBar
    { header_ :: JavaHeader
    , base :: ProgressCanvas.ProgressCanvas
    , showTitleProgressBarRunnable :: IORef (ARunnable.ARunnable)
    , dismissTitleProgressBarRunnable :: IORef (ARunnable.ARunnable)
    , titleProgressDialogPortionSetProgressRunnable :: IORef (ARunnable.ARunnable)
    , titleProgressDialogSetProgressRunnable :: IORef (ARunnable.ARunnable)
    , midletActivity :: IORef (Activity.Activity)
    , portion :: IORef (Int)
    , iMAGE :: IORef (JavaArray (Image.Image))
    , image :: IORef (Image.Image)
    , animation :: IORef (Animation.Animation)
    }

instance JavaNull AndroidBasicTitleProgressBar where
    javaNull = javaNullRecord "AndroidBasicTitleProgressBar"

instance JavaEquals AndroidBasicTitleProgressBar where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidBasicTitleProgressBar where
    (==) = jrecordEquals

instance JavaObjectClass AndroidBasicTitleProgressBar where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

rESOURCE = "ProgressImage"

{-# NOINLINE background #-}
background = unsafePerformIO (newIORef (0))

newRecord_ :: IO AndroidBasicTitleProgressBar
newRecord_ = do
    base <- ProgressCanvas.newRecord_
    let header_ = base.header_
    showTitleProgressBarRunnable <- newIORef javaNull
    dismissTitleProgressBarRunnable <- newIORef javaNull
    titleProgressDialogPortionSetProgressRunnable <- newIORef javaNull
    titleProgressDialogSetProgressRunnable <- newIORef javaNull
    midletActivity <- newIORef javaNull
    portion <- newIORef 0
    iMAGE <- newIORef javaNull
    image <- newIORef javaNull
    animation <- newIORef javaNull
    let this = AndroidBasicTitleProgressBar header_ base showTitleProgressBarRunnable dismissTitleProgressBarRunnable titleProgressDialogPortionSetProgressRunnable titleProgressDialogSetProgressRunnable midletActivity portion iMAGE image animation
    jregisterLevel header_ this
    DisplayChangeEventListener.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "initActivity" (\() -> initActivity_impl this)
    jregisterMethod header_ "updateCurrent" (\() -> updateCurrent_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onDisplayChangeEvent" (\() -> onDisplayChangeEvent_impl this)
    jregisterMethod header_ "loadProgressImages" (\() -> loadProgressImages_impl this)
    jregisterMethod header_ "isInitialized" (\() -> isInitialized_impl this)
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "end" (\() -> end_impl this)
    jregisterMethod header_ "addEarlyPortion" (\() -> addEarlyPortion_impl this)
    jregisterMethod header_ "addPortion" (\() -> addPortion_impl this)
    jregisterMethod header_ "addNormalPortion" (\() -> addNormalPortion_impl this)
    jregisterMethod header_ "setValue" (\() -> setValue_impl this)
    jregisterMethod header_ "waitUntilDisplayed" (\() -> waitUntilDisplayed_impl this)
    jregisterMethod header_ "setImages" (\() -> setImages_impl this)
    jregisterMethod header_ "initOpenGL" (\() -> initOpenGL_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getImage" (\() -> getImage_impl this)
    jregisterMethod header_ "paint2" (\() -> paint2_impl this)
    jregisterMethod header_ "setBackground" (\() -> setBackground_impl this)
    jregisterMethod header_ "setPortion" (\() -> setPortion_impl this)
    jregisterMethod header_ "getPortion" (\() -> getPortion_impl this)
    pure this

initFields_ :: AndroidBasicTitleProgressBar -> IO ()
initFields_ this = do
    jset this.showTitleProgressBarRunnable =<< (fmap (\value_ -> javaCast value_ :: ARunnable.ARunnable) (NullRunnable.getInstance))
    jset this.dismissTitleProgressBarRunnable =<< (fmap (\value_ -> javaCast value_ :: ARunnable.ARunnable) (NullRunnable.getInstance))
    jset this.titleProgressDialogPortionSetProgressRunnable =<< (fmap (\value_ -> javaCast value_ :: ARunnable.ARunnable) (NullRunnable.getInstance))
    jset this.titleProgressDialogSetProgressRunnable =<< (fmap (\value_ -> javaCast value_ :: ARunnable.ARunnable) (NullRunnable.getInstance))
    jset this.midletActivity (AndroidUtil.nULL_ACTIVITY)
    jset this.portion (0)
    jset this.iMAGE ((jnewArray (4) javaNull))
    jset this.image (NullImage.nULL_IMAGE)
    jset this.animation =<< (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)
    pure ()

new_3 :: String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO AndroidBasicTitleProgressBar
new_3 title backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_3 this title backgroundBasicColor foregroundBasicColor
    pure this

init_3 :: AndroidBasicTitleProgressBar -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_3 this title backgroundBasicColor foregroundBasicColor = do
        ProgressCanvas.init_3 this.base (title) (backgroundBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AndroidBasicTitleProgressBar.init this)
        Control.Monad.void (DisplayChangeEventHandler.addListenerInterface ((jio (DisplayChangeEventHandler.getInstance))) this)
        let size = (jlength (jget (this).iMAGE))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).iMAGE)) (index) (NullImage.nULL_IMAGE)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: AndroidBasicTitleProgressBar))

init_impl :: AndroidBasicTitleProgressBar -> IO (())
init_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.base.commonStrings)).iNIT) e)
            ) $ do
            when ((jget AndroidBasicTitleProgressBar.background) /= 0) $ do
                Control.Monad.void (ResourceUtil.addResource ((jio (ResourceUtil.getInstance))) (AndroidBasicTitleProgressBar.rESOURCE) (Prelude.fromIntegral ((jget AndroidBasicTitleProgressBar.background)) :: Int))
                Control.Monad.void (GameFeatureImageCacheFactory.init)
                assignedValue <- (ImageCache.getWithKey ((jio (ImageCacheFactory.getInstance))) (AndroidBasicTitleProgressBar.rESOURCE))
                jset (this).image (assignedValue)
        pure ()


initActivity :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (())
initActivity object_ a1 = jmethod object_ "initActivity" (\() -> (initActivity_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) () a1

initActivity_super :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (())
initActivity_super object_ a1 = (initActivity_impl (javaCast object_ :: AndroidBasicTitleProgressBar)) a1

initActivity_impl :: AndroidBasicTitleProgressBar -> Activity.Activity -> IO (())
initActivity_impl this activity = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.base.commonStrings)).iNIT) e)
            ) $ do
            when ((jget (this).midletActivity) /= activity) $ do
                jset (this).midletActivity (activity)
                assignedValue <- (fmap (\value_ -> javaCast value_ :: ARunnable.ARunnable) (ShowTitleProgressBarRunnable.new_2 (jget (this).midletActivity) this))
                jset (this).showTitleProgressBarRunnable (assignedValue)
                assignedValue <- (fmap (\value_ -> javaCast value_ :: ARunnable.ARunnable) (DismissTitleProgressBarRunnable.new_2 (jget (this).midletActivity) this))
                jset (this).dismissTitleProgressBarRunnable (assignedValue)
                assignedValue <- (fmap (\value_ -> javaCast value_ :: ARunnable.ARunnable) (TitleProgressBarSetProgressRunnable.new_2 (jget (this).midletActivity) this))
                jset (this).titleProgressDialogSetProgressRunnable (assignedValue)
                assignedValue <- (fmap (\value_ -> javaCast value_ :: ARunnable.ARunnable) (TitleProgressBarPortionSetProgressRunnable.new_2 (jget (this).midletActivity) this))
                jset (this).titleProgressDialogPortionSetProgressRunnable (assignedValue)
                Control.Monad.void (AndroidBasicTitleProgressBar.loadProgressImages this)
            Control.Monad.void (AndroidBasicTitleProgressBar.updateCurrent this)
        pure ()


updateCurrent :: (JavaObjectClass this_) => this_ -> IO (())
updateCurrent object_ = jmethod object_ "updateCurrent" (\() -> (updateCurrent_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) ()

updateCurrent_super :: (JavaObjectClass this_) => this_ -> IO (())
updateCurrent_super object_ = (updateCurrent_impl (javaCast object_ :: AndroidBasicTitleProgressBar))

updateCurrent_impl :: AndroidBasicTitleProgressBar -> IO (())
updateCurrent_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.base.commonStrings)).uPDATE) e)
            ) $ do
            if (Prelude.not (jio (ProgressCanvas.isBackground this))) then do
                assignedValue <- (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)
                jset (this).animation (assignedValue)
            else when ((jget AndroidBasicTitleProgressBar.background) /= 0) $ do
                displayInfo <- (DisplayInfoSingleton.getInstance)
                currentImage <- newIORef (javaNull)
                if (jio (DisplayInfoSingleton.isPortrait displayInfo)) then do
                    assignedValue <- (AndroidBasicTitleProgressBar.getImage this 0)
                    jset currentImage (assignedValue)
                else do
                    assignedValue <- (AndroidBasicTitleProgressBar.getImage this 2)
                    jset currentImage (assignedValue)
                if ((jget currentImage) == javaNull) then do
                    assignedValue <- (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)
                    jset (this).animation (assignedValue)
                else do
                    assignedValue <- (fmap (\value_ -> javaCast value_ :: Animation.Animation) (ImageAnimation.new_2 (jget currentImage) (jio (AnimationBehavior.getInstance))))
                    jset (this).animation (assignedValue)
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: AndroidBasicTitleProgressBar)) a1

onEvent_impl :: AndroidBasicTitleProgressBar -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


onDisplayChangeEvent :: (JavaObjectClass this_) => this_ -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent object_ a1 = jmethod object_ "onDisplayChangeEvent" (\() -> (onDisplayChangeEvent_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) () a1

onDisplayChangeEvent_super :: (JavaObjectClass this_) => this_ -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_super object_ a1 = (onDisplayChangeEvent_impl (javaCast object_ :: AndroidBasicTitleProgressBar)) a1

onDisplayChangeEvent_impl :: AndroidBasicTitleProgressBar -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_impl this displayChangeEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) ((jget ((jget (this).base.base.base.commonStrings)).eXCEPTION_LABEL) + (jio (ExceptionUtil.getStackTrace ((jio (ExceptionUtil.getInstance))) e))) this (jget ((jget (this).base.base.base.canvasStrings)).oN_DISPLAY_CHANGE_EVENT))
            assignedValue <- (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)
            jset (this).animation (assignedValue)
            ) $ do
            Control.Monad.void (AndroidBasicTitleProgressBar.loadProgressImages this)
            Control.Monad.void (AndroidBasicTitleProgressBar.updateCurrent this)
        pure ()


loadProgressImages :: (JavaObjectClass this_) => this_ -> IO (())
loadProgressImages object_ = jmethod object_ "loadProgressImages" (\() -> (loadProgressImages_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) ()

loadProgressImages_super :: (JavaObjectClass this_) => this_ -> IO (())
loadProgressImages_super object_ = (loadProgressImages_impl (javaCast object_ :: AndroidBasicTitleProgressBar))

loadProgressImages_impl :: AndroidBasicTitleProgressBar -> IO (())
loadProgressImages_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) ("IllegalArgumentException " ++ javaToString (jio (ExceptionUtil.getStackTrace ((jio (ExceptionUtil.getInstance))) e))) this "loadProgressImages")
            assignedValue <- (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)
            jset (this).animation (assignedValue)
            ) $ do
            displayInfo <- (DisplayInfoSingleton.getInstance)
            lastWidth <- (DisplayInfoSingleton.getLastWidth displayInfo)
            lastHeight <- (DisplayInfoSingleton.getLastHeight displayInfo)
            if (jio (DisplayInfoSingleton.isPortraitWH displayInfo lastWidth lastHeight)) then do
                Control.Monad.void (AndroidBasicTitleProgressBar.setImages this 0 lastWidth lastHeight)
            else do
                Control.Monad.void (AndroidBasicTitleProgressBar.setImages this 2 lastWidth lastHeight)
        pure ()


isInitialized :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized object_ = jmethod object_ "isInitialized" (\() -> (isInitialized_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) ()

isInitialized_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized_super object_ = (isInitialized_impl (javaCast object_ :: AndroidBasicTitleProgressBar))

isInitialized_impl :: AndroidBasicTitleProgressBar -> IO (Bool)
isInitialized_impl this = do
    javaCatchReturn $ do
        if ((jget (this).midletActivity) /= AndroidUtil.nULL_ACTIVITY) then do
            javaReturn (True)
        else do
            javaReturn (False)


start :: (JavaObjectClass this_) => this_ -> IO (())
start object_ = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) ()

start_super :: (JavaObjectClass this_) => this_ -> IO (())
start_super object_ = (start_impl (javaCast object_ :: AndroidBasicTitleProgressBar))

start_impl :: AndroidBasicTitleProgressBar -> IO (())
start_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.base.commonStrings)).sTART_METHOD_NAME) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.base.commonStrings)).sTART_METHOD_NAME))
            Control.Monad.void (ProgressCanvas.start_super this.base)
            Control.Monad.void (Activity.runOnUiThread ((jget (this).midletActivity)) (jget (this).showTitleProgressBarRunnable))
        pure ()


end :: (JavaObjectClass this_) => this_ -> IO (())
end object_ = jmethod object_ "end" (\() -> (end_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) ()

end_super :: (JavaObjectClass this_) => this_ -> IO (())
end_super object_ = (end_impl (javaCast object_ :: AndroidBasicTitleProgressBar))

end_impl :: AndroidBasicTitleProgressBar -> IO (())
end_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.base.commonStrings)).eND_METHOD_NAME) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.base.commonStrings)).eND_METHOD_NAME))
            Control.Monad.void (Activity.runOnUiThread ((jget (this).midletActivity)) (jget (this).dismissTitleProgressBarRunnable))
            Control.Monad.void (ProgressCanvas.end_super this.base)
        pure ()


addEarlyPortion :: (JavaObjectClass this_) => this_ -> Int -> String -> Int -> IO (())
addEarlyPortion object_ a1 a2 a3 = jmethod object_ "addEarlyPortion" (\() -> (addEarlyPortion_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) () a1 a2 a3

addEarlyPortion_super :: (JavaObjectClass this_) => this_ -> Int -> String -> Int -> IO (())
addEarlyPortion_super object_ a1 a2 a3 = (addEarlyPortion_impl (javaCast object_ :: AndroidBasicTitleProgressBar)) a1 a2 a3

addEarlyPortion_impl :: AndroidBasicTitleProgressBar -> Int -> String -> Int -> IO (())
addEarlyPortion_impl this value text index = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget (this).base.aDD_PORTION) e)
            ) $ do
            jset (this).portion (value)
            Control.Monad.void (ProgressCanvas.addEarlyPortion_super this.base value text index)
            when ((jget (this).midletActivity) /= AndroidUtil.nULL_ACTIVITY) $ do
                Control.Monad.void (Activity.runOnUiThread ((jget (this).midletActivity)) (jget (this).titleProgressDialogPortionSetProgressRunnable))
        pure ()


addPortion :: (JavaObjectClass this_) => this_ -> Int -> String -> Int -> IO (())
addPortion object_ a1 a2 a3 = jmethod object_ "addPortion" (\() -> (addPortion_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) () a1 a2 a3

addPortion_super :: (JavaObjectClass this_) => this_ -> Int -> String -> Int -> IO (())
addPortion_super object_ a1 a2 a3 = (addPortion_impl (javaCast object_ :: AndroidBasicTitleProgressBar)) a1 a2 a3

addPortion_impl :: AndroidBasicTitleProgressBar -> Int -> String -> Int -> IO (())
addPortion_impl this value text index = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget (this).base.aDD_PORTION) e)
            ) $ do
            jset (this).portion (value)
            Control.Monad.void (ProgressCanvas.addPortion_super this.base value text index)
            Control.Monad.void (Activity.runOnUiThread ((jget (this).midletActivity)) (jget (this).titleProgressDialogPortionSetProgressRunnable))
        pure ()


addNormalPortion :: (JavaObjectClass this_) => this_ -> Int -> String -> IO (())
addNormalPortion object_ a1 a2 = jmethod object_ "addNormalPortion" (\() -> (addNormalPortion_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) () a1 a2

addNormalPortion_super :: (JavaObjectClass this_) => this_ -> Int -> String -> IO (())
addNormalPortion_super object_ a1 a2 = (addNormalPortion_impl (javaCast object_ :: AndroidBasicTitleProgressBar)) a1 a2

addNormalPortion_impl :: AndroidBasicTitleProgressBar -> Int -> String -> IO (())
addNormalPortion_impl this value text = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget (this).base.aDD_PORTION) e)
            ) $ do
            jset (this).portion (value)
            Control.Monad.void (ProgressCanvas.addNormalPortion_super this.base value text)
            Control.Monad.void (Activity.runOnUiThread ((jget (this).midletActivity)) (jget (this).titleProgressDialogPortionSetProgressRunnable))
        pure ()


setValue :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setValue object_ a1 = jmethod object_ "setValue" (\() -> (setValue_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) () a1

setValue_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setValue_super object_ a1 = (setValue_impl (javaCast object_ :: AndroidBasicTitleProgressBar)) a1

setValue_impl :: AndroidBasicTitleProgressBar -> Int -> IO (())
setValue_impl this value = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this "setValue" e)
            ) $ do
            Control.Monad.void (ProgressCanvas.setValue_super this.base value)
            Control.Monad.void (Activity.runOnUiThread ((jget (this).midletActivity)) (jget (this).titleProgressDialogSetProgressRunnable))
        pure ()


waitUntilDisplayed :: (JavaObjectClass this_) => this_ -> IO (())
waitUntilDisplayed object_ = jmethod object_ "waitUntilDisplayed" (\() -> (waitUntilDisplayed_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) ()

waitUntilDisplayed_super :: (JavaObjectClass this_) => this_ -> IO (())
waitUntilDisplayed_super object_ = (waitUntilDisplayed_impl (javaCast object_ :: AndroidBasicTitleProgressBar))

waitUntilDisplayed_impl :: AndroidBasicTitleProgressBar -> IO (())
waitUntilDisplayed_impl this = do
        pure ()


-- throws Exception
setImages :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
setImages object_ a1 a2 a3 = jmethod object_ "setImages" (\() -> (setImages_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) () a1 a2 a3

setImages_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
setImages_super object_ a1 a2 a3 = (setImages_impl (javaCast object_ :: AndroidBasicTitleProgressBar)) a1 a2 a3

setImages_impl :: AndroidBasicTitleProgressBar -> Int -> Int -> Int -> IO (())
setImages_impl this index lastWidth lastHeight = do
        let image = (jget (this).image)
        when (image /= NullImage.nULL_IMAGE) $ do
            if (jio (Features.isFeature ((jio (Features.getInstance))) (jget ((jio (MainFeatureFactory.getInstance))).fULL_SCREEN))) then do
                when ((jindex ((jget (this).iMAGE)) (index)) == NullImage.nULL_IMAGE) $ do
                    assignedValue <- (ImageScaleUtil.createImage2 ((jio (ImageScaleUtil.getInstance))) (jio (ImageCacheFactory.getInstance)) image (Prelude.fromIntegral lastWidth) (Prelude.realToFrac (jnumericDouble (jio (Image.getWidth image)))) ((Prelude.fromIntegral lastHeight) - 20.0) (Prelude.realToFrac (jnumericDouble (jio (Image.getHeight image)))) False)
                    jsetIndex ((jget (this).iMAGE)) (index) (assignedValue)
            else do
                let nextIndex = (index + 1)
                when ((jindex ((jget (this).iMAGE)) (nextIndex)) == NullImage.nULL_IMAGE) $ do
                    assignedValue <- (ImageScaleUtil.createImage2 ((jio (ImageScaleUtil.getInstance))) (jio (ImageCacheFactory.getInstance)) image (Prelude.fromIntegral lastWidth) (Prelude.realToFrac (jnumericDouble (jio (Image.getWidth image)))) ((Prelude.fromIntegral lastHeight) - 28.0) (Prelude.realToFrac (jnumericDouble (jio (Image.getHeight image)))) False)
                    jsetIndex ((jget (this).iMAGE)) (nextIndex) (assignedValue)
        pure ()


-- throws Exception
initOpenGL :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
initOpenGL object_ a1 = jmethod object_ "initOpenGL" (\() -> (initOpenGL_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) () a1

initOpenGL_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
initOpenGL_super object_ a1 = (initOpenGL_impl (javaCast object_ :: AndroidBasicTitleProgressBar)) a1

initOpenGL_impl :: AndroidBasicTitleProgressBar -> Graphics.Graphics -> IO (())
initOpenGL_impl this graphics = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.base.commonStrings)).iNIT))
        assignedValue <- (ImageCache.getWithKey ((jio (GameFeatureImageCacheFactory.getInstance))) (AndroidBasicTitleProgressBar.rESOURCE))
        jset (this).image (assignedValue)
        preResourceImageUtil <- (PreResourceImageUtil.getInstance)
        let size = (jlength (jget (this).iMAGE))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            when ((jindex ((jget (this).iMAGE)) (index)) /= NullImage.nULL_IMAGE) $ do
                assignedValue <- (PreResourceImageUtil.encapsulate preResourceImageUtil (jindex ((jget (this).iMAGE)) (index)))
                jsetIndex ((jget (this).iMAGE)) (index) (assignedValue)
        Control.Monad.void (AndroidBasicTitleProgressBar.updateCurrent this)
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) () a1

update_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: AndroidBasicTitleProgressBar)) a1

update_impl :: AndroidBasicTitleProgressBar -> Graphics.Graphics -> IO (())
update_impl this graphics = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.base.commonStrings)).uPDATE))
        Control.Monad.void (AndroidBasicTitleProgressBar.initOpenGL this graphics)
        assignedValue <- (ImageCache.getWithKey ((jio (GameFeatureImageCacheFactory.getInstance))) (AndroidBasicTitleProgressBar.rESOURCE))
        jset (this).image (assignedValue)
        preResourceImageUtil <- (PreResourceImageUtil.getInstance)
        let size = (jlength (jget (this).iMAGE))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            when ((jindex ((jget (this).iMAGE)) (index)) /= NullImage.nULL_IMAGE) $ do
                Control.Monad.void (PreResourceImageUtil.update preResourceImageUtil graphics (jindex ((jget (this).iMAGE)) (index)))
        pure ()


-- throws Exception
getImage :: (JavaObjectClass this_) => this_ -> Int -> IO (Image.Image)
getImage object_ a1 = jmethod object_ "getImage" (\() -> (getImage_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) () a1

getImage_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Image.Image)
getImage_super object_ a1 = (getImage_impl (javaCast object_ :: AndroidBasicTitleProgressBar)) a1

getImage_impl :: AndroidBasicTitleProgressBar -> Int -> IO (Image.Image)
getImage_impl this index = do
        image <- newIORef (NullImage.nULL_IMAGE)
        if (jio (Features.isFeature ((jio (Features.getInstance))) (jget ((jio (MainFeatureFactory.getInstance))).fULL_SCREEN))) then do
            jset image ((jindex ((jget (this).iMAGE)) (index)))
        else do
            jset image ((jindex ((jget (this).iMAGE)) ((index + 1))))
        pure ((jget image))


paint2 :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint2 object_ a1 = jmethod object_ "paint2" (\() -> (paint2_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) () a1

paint2_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint2_super object_ a1 = (paint2_impl (javaCast object_ :: AndroidBasicTitleProgressBar)) a1

paint2_impl :: AndroidBasicTitleProgressBar -> Graphics.Graphics -> IO (())
paint2_impl this graphics = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.base.canvasStrings)).pAINT) e)
            ) $ do
            Control.Monad.void (Animation.paintXY ((jget (this).animation)) graphics 0 20)
            Control.Monad.void (ProgressCanvas.paint2_super this.base graphics)
        pure ()


setBackgroundResource :: Int -> IO (())
setBackgroundResource background = do
        jset AndroidBasicTitleProgressBar.background (background)
        pure ()


setBackground :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setBackground object_ a1 = jmethod object_ "setBackground" (\() -> (setBackground_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) () a1

setBackground_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setBackground_super object_ a1 = (setBackground_impl (javaCast object_ :: AndroidBasicTitleProgressBar)) a1

setBackground_impl :: AndroidBasicTitleProgressBar -> Bool -> IO (())
setBackground_impl this background = do
        Control.Monad.void (ProgressCanvas.setBackground_super this.base background)
        Control.Monad.void (AndroidBasicTitleProgressBar.updateCurrent this)
        pure ()


setPortion :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setPortion object_ a1 = jmethod object_ "setPortion" (\() -> (setPortion_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) () a1

setPortion_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setPortion_super object_ a1 = (setPortion_impl (javaCast object_ :: AndroidBasicTitleProgressBar)) a1

setPortion_impl :: AndroidBasicTitleProgressBar -> Int -> IO (())
setPortion_impl this portion = do
        jset (this).portion (portion)
        pure ()


getPortion :: (JavaObjectClass this_) => this_ -> IO (Int)
getPortion object_ = jmethod object_ "getPortion" (\() -> (getPortion_impl (javaCast object_ :: AndroidBasicTitleProgressBar))) ()

getPortion_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getPortion_super object_ = (getPortion_impl (javaCast object_ :: AndroidBasicTitleProgressBar))

getPortion_impl :: AndroidBasicTitleProgressBar -> IO (Int)
getPortion_impl this = do
        pure ((jget (this).portion))


