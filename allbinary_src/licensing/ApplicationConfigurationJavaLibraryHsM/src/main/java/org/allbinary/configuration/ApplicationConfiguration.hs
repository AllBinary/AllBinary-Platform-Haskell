{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.configuration
module ApplicationConfiguration where

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
import qualified Closeable -- java.io.Closeable
import qualified InputStream -- java.io.InputStream
import qualified OutputStream -- java.io.OutputStream
import qualified Feature -- org.allbinary.game.configuration.feature.Feature
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified MainFeatureFactory -- org.allbinary.game.configuration.feature.MainFeatureFactory
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbDataInputStream -- org.allbinary.logic.io.AbDataInputStream
import qualified AbDataOutputStream -- org.allbinary.logic.io.AbDataOutputStream
import qualified FileStreamFactory -- org.allbinary.logic.io.FileStreamFactory
import qualified NullCloseable -- org.allbinary.logic.io.NullCloseable
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified FileFactory -- org.allbinary.logic.io.file.FileFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ApplicationConfiguration = ApplicationConfiguration
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , fullscreen :: IORef (Bool)
    , showTitleBar :: IORef (Bool)
    , progressBarView :: IORef (Bool)
    , fILE :: IORef (String)
    }

instance JavaNull ApplicationConfiguration where
    javaNull = javaNullRecord "ApplicationConfiguration"

instance JavaEquals ApplicationConfiguration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ApplicationConfiguration where
    (==) = jrecordEquals

instance JavaObjectClass ApplicationConfiguration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

newRecord_ :: IO ApplicationConfiguration
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    fullscreen <- newIORef False
    showTitleBar <- newIORef False
    progressBarView <- newIORef False
    fILE <- newIORef ""
    let this = ApplicationConfiguration header_ logUtil fullscreen showTitleBar progressBarView fILE
    jregisterLevel header_ this
    jregisterMethod header_ "read" (\() -> read_impl this)
    jregisterMethod header_ "write" (\() -> write_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "setFullscreen" (\() -> setFullscreen_impl this)
    jregisterMethod header_ "isFullscreen" (\() -> isFullscreen_impl this)
    jregisterMethod header_ "setShowTitleBar" (\() -> setShowTitleBar_impl this)
    jregisterMethod header_ "isShowTitleBar" (\() -> isShowTitleBar_impl this)
    jregisterMethod header_ "setProgressBarView" (\() -> setProgressBarView_impl this)
    jregisterMethod header_ "isProgressBarView" (\() -> isProgressBarView_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: ApplicationConfiguration -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.fullscreen (True)
    jset this.showTitleBar (False)
    jset this.progressBarView (False)
    jset this.fILE ("ReloadConfiguration.dat")
    pure ()


getInstance :: IO (ApplicationConfiguration)
getInstance = do
        when ((jget ApplicationConfiguration.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset ApplicationConfiguration.instance_ (assignedValue)
        pure ((javaCast (jget ApplicationConfiguration.instance_) :: ApplicationConfiguration))

new_ :: IO ApplicationConfiguration
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ApplicationConfiguration -> IO ()
init_ this = do
        initFields_ this
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).cONSTRUCTOR) e)
            ) $ do
            if (jio (FileFactory.isFile ((jio (FileFactory.getInstance))) (jget (this).fILE))) then do
                Control.Monad.void (ApplicationConfiguration.read this)
            else do
                Control.Monad.void (ApplicationConfiguration.write this)
        pure ()


-- throws Exception
read :: (JavaObjectClass this_) => this_ -> IO (())
read object_ = jmethod object_ "read" (\() -> (read_impl (javaCast object_ :: ApplicationConfiguration))) ()

read_super :: (JavaObjectClass this_) => this_ -> IO (())
read_super object_ = (read_impl (javaCast object_ :: ApplicationConfiguration))

read_impl :: ApplicationConfiguration -> IO (())
read_impl this = do
        fileInputStreamFactory <- (FileStreamFactory.getInstance)
        fileInputStream <- (FileStreamFactory.getFileInputStreamInstance fileInputStreamFactory (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jget (this).fILE))
        dataInputStream <- (AbDataInputStream.new_1 fileInputStream)
        fullScreen <- (AbDataInputStream.readInt dataInputStream)
        if (fullScreen == 0) then do
            Control.Monad.void (ApplicationConfiguration.setFullscreen this False)
        else if (fullScreen == 1) then do
            Control.Monad.void (ApplicationConfiguration.setFullscreen this True)
        else do
            javaThrow ((JavaException "Exception" "Invalid FullScreen ActivityConfiguration"))
        progressBarView <- (AbDataInputStream.readInt dataInputStream)
        if (progressBarView == 0) then do
            Control.Monad.void (ApplicationConfiguration.setProgressBarView this False)
        else if (progressBarView == 1) then do
            Control.Monad.void (ApplicationConfiguration.setProgressBarView this True)
        else do
            javaThrow ((JavaException "Exception" "Invalid ProgressBarView ActivityConfiguration"))
        showTitleBar <- (AbDataInputStream.readInt dataInputStream)
        if (showTitleBar == 0) then do
            Control.Monad.void (ApplicationConfiguration.setShowTitleBar this False)
        else if (showTitleBar == 1) then do
            Control.Monad.void (ApplicationConfiguration.setShowTitleBar this True)
        else do
            javaThrow ((JavaException "Exception" "Invalid ShowTitleBar ActivityConfiguration"))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Read Configuration: " ++ (jio (ApplicationConfiguration.toString this))) this "read")
        pure ()


-- throws Exception
write :: (JavaObjectClass this_) => this_ -> IO (())
write object_ = jmethod object_ "write" (\() -> (write_impl (javaCast object_ :: ApplicationConfiguration))) ()

write_super :: (JavaObjectClass this_) => this_ -> IO (())
write_super object_ = (write_impl (javaCast object_ :: ApplicationConfiguration))

write_impl :: ApplicationConfiguration -> IO (())
write_impl this = do
        closeable <- newIORef (NullCloseable.nULL_CLOSEABLE)
        flip finally (do
            Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) (jget closeable))
            ) $ handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Write Configuration: " ++ (jio (ApplicationConfiguration.toString this))) this "write")
            fileInputStreamFactory <- (FileStreamFactory.getInstance)
            fileOutputStream <- (FileStreamFactory.getFileOutputStreamInstance fileInputStreamFactory (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jget (this).fILE))
            dataOutputStream <- (AbDataOutputStream.new_1 fileOutputStream)
            jset closeable (dataOutputStream)
            if (jio (ApplicationConfiguration.isFullscreen this)) then do
                Control.Monad.void (AbDataOutputStream.writeInt dataOutputStream 1)
            else do
                Control.Monad.void (AbDataOutputStream.writeInt dataOutputStream 0)
            if (jio (ApplicationConfiguration.isProgressBarView this)) then do
                Control.Monad.void (AbDataOutputStream.writeInt dataOutputStream 1)
            else do
                Control.Monad.void (AbDataOutputStream.writeInt dataOutputStream 0)
            if (jio (ApplicationConfiguration.isShowTitleBar this)) then do
                Control.Monad.void (AbDataOutputStream.writeInt dataOutputStream 1)
            else do
                Control.Monad.void (AbDataOutputStream.writeInt dataOutputStream 0)
            Control.Monad.void (AbDataOutputStream.flush dataOutputStream)
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: ApplicationConfiguration))) () a1

update_super :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: ApplicationConfiguration)) a1

update_impl :: ApplicationConfiguration -> Feature.Feature -> IO (())
update_impl this gameFeature = do
        when (gameFeature == (jget ((jio (MainFeatureFactory.getInstance))).fULL_SCREEN)) $ do
            features <- (Features.getInstance)
            if (jio (Features.isFeature features gameFeature)) then do
                when (Prelude.not (jio (ApplicationConfiguration.isFullscreen this))) $ do
                    Control.Monad.void (ApplicationConfiguration.setFullscreen this True)
                    Control.Monad.void (ApplicationConfiguration.write this)
            else do
                when (jio (ApplicationConfiguration.isFullscreen this)) $ do
                    Control.Monad.void (ApplicationConfiguration.setFullscreen this False)
                    Control.Monad.void (ApplicationConfiguration.write this)
        pure ()


setFullscreen :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setFullscreen object_ a1 = jmethod object_ "setFullscreen" (\() -> (setFullscreen_impl (javaCast object_ :: ApplicationConfiguration))) () a1

setFullscreen_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setFullscreen_super object_ a1 = (setFullscreen_impl (javaCast object_ :: ApplicationConfiguration)) a1

setFullscreen_impl :: ApplicationConfiguration -> Bool -> IO (())
setFullscreen_impl this fullscreen = do
        jset (this).fullscreen (fullscreen)
        pure ()


isFullscreen :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFullscreen object_ = jmethod object_ "isFullscreen" (\() -> (isFullscreen_impl (javaCast object_ :: ApplicationConfiguration))) ()

isFullscreen_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFullscreen_super object_ = (isFullscreen_impl (javaCast object_ :: ApplicationConfiguration))

isFullscreen_impl :: ApplicationConfiguration -> IO (Bool)
isFullscreen_impl this = do
        pure ((jget (this).fullscreen))


setShowTitleBar :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setShowTitleBar object_ a1 = jmethod object_ "setShowTitleBar" (\() -> (setShowTitleBar_impl (javaCast object_ :: ApplicationConfiguration))) () a1

setShowTitleBar_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setShowTitleBar_super object_ a1 = (setShowTitleBar_impl (javaCast object_ :: ApplicationConfiguration)) a1

setShowTitleBar_impl :: ApplicationConfiguration -> Bool -> IO (())
setShowTitleBar_impl this showTitleBar = do
        jset (this).showTitleBar (showTitleBar)
        pure ()


isShowTitleBar :: (JavaObjectClass this_) => this_ -> IO (Bool)
isShowTitleBar object_ = jmethod object_ "isShowTitleBar" (\() -> (isShowTitleBar_impl (javaCast object_ :: ApplicationConfiguration))) ()

isShowTitleBar_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isShowTitleBar_super object_ = (isShowTitleBar_impl (javaCast object_ :: ApplicationConfiguration))

isShowTitleBar_impl :: ApplicationConfiguration -> IO (Bool)
isShowTitleBar_impl this = do
        pure ((jget (this).showTitleBar))


setProgressBarView :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setProgressBarView object_ a1 = jmethod object_ "setProgressBarView" (\() -> (setProgressBarView_impl (javaCast object_ :: ApplicationConfiguration))) () a1

setProgressBarView_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setProgressBarView_super object_ a1 = (setProgressBarView_impl (javaCast object_ :: ApplicationConfiguration)) a1

setProgressBarView_impl :: ApplicationConfiguration -> Bool -> IO (())
setProgressBarView_impl this progressBarView = do
        jset (this).progressBarView (progressBarView)
        pure ()


isProgressBarView :: (JavaObjectClass this_) => this_ -> IO (Bool)
isProgressBarView object_ = jmethod object_ "isProgressBarView" (\() -> (isProgressBarView_impl (javaCast object_ :: ApplicationConfiguration))) ()

isProgressBarView_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isProgressBarView_super object_ = (isProgressBarView_impl (javaCast object_ :: ApplicationConfiguration))

isProgressBarView_impl :: ApplicationConfiguration -> IO (Bool)
isProgressBarView_impl this = do
        pure ((jget (this).progressBarView))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: ApplicationConfiguration))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: ApplicationConfiguration))

toString_impl :: ApplicationConfiguration -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "isFullscreen: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (ApplicationConfiguration.isFullscreen this)))
        Control.Monad.void (StringMaker.append stringBuffer " isProgressBarView: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (ApplicationConfiguration.isProgressBarView this)))
        Control.Monad.void (StringMaker.append stringBuffer " isShowTitleBar: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (ApplicationConfiguration.isShowTitleBar this)))
        (StringMaker.toString stringBuffer)


