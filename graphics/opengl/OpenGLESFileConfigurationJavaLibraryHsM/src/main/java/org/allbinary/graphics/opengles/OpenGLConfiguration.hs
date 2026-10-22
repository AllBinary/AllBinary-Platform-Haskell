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
-- package org.allbinary.graphics.opengles
module OpenGLConfiguration where

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
import qualified OpenGLFeatureFactory -- same package or java.lang
import qualified OpenGLFeature -- same package or java.lang
import qualified Closeable -- java.io.Closeable
import qualified DataInputStream -- java.io.DataInputStream
import qualified InputStream -- java.io.InputStream
import qualified OutputStream -- java.io.OutputStream
import qualified TsUtil -- org.allbinary.TsUtil
import qualified AbDataOutputStream -- org.allbinary.logic.io.AbDataOutputStream
import qualified FileStreamFactory -- org.allbinary.logic.io.FileStreamFactory
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified FileFactory -- org.allbinary.logic.io.file.FileFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified ChangedGameFeatureListener -- org.allbinary.game.configuration.event.ChangedGameFeatureListener
import qualified Feature -- org.allbinary.game.configuration.feature.Feature
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified MainFeatureFactory -- org.allbinary.game.configuration.feature.MainFeatureFactory
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified NullCloseable -- org.allbinary.logic.io.NullCloseable

data OpenGLConfiguration = OpenGLConfiguration
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , fILE :: IORef (String)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , tsUtil :: IORef (TsUtil.TsUtil)
    , opengl :: IORef (Bool)
    , type_ :: IORef (OpenGLFeature.OpenGLFeature)
    , imageColor :: IORef (OpenGLFeature.OpenGLFeature)
    , color :: IORef (OpenGLFeature.OpenGLFeature)
    , versionSelector :: IORef (OpenGLFeature.OpenGLFeature)
    }

instance JavaNull OpenGLConfiguration where
    javaNull = javaNullRecord "OpenGLConfiguration"

instance JavaEquals OpenGLConfiguration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLConfiguration where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLConfiguration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

newRecord_ :: IO OpenGLConfiguration
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    fILE <- newIORef ""
    commonStrings <- newIORef javaNull
    tsUtil <- newIORef javaNull
    opengl <- newIORef False
    type_ <- newIORef javaNull
    imageColor <- newIORef javaNull
    color <- newIORef javaNull
    versionSelector <- newIORef javaNull
    let this = OpenGLConfiguration header_ logUtil fILE commonStrings tsUtil opengl type_ imageColor color versionSelector
    jregisterLevel header_ this
    jregisterMethod header_ "read" (\() -> read_impl this)
    jregisterMethod header_ "write" (\() -> write_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "setOpenGL" (\() -> setOpenGL_impl this)
    jregisterMethod header_ "isOpenGL" (\() -> isOpenGL_impl this)
    jregisterMethod header_ "setImageColor" (\() -> setImageColor_impl this)
    jregisterMethod header_ "getImageColor" (\() -> getImageColor_impl this)
    jregisterMethod header_ "setColor" (\() -> setColor_impl this)
    jregisterMethod header_ "getColor" (\() -> getColor_impl this)
    jregisterMethod header_ "setVersionSelector" (\() -> setVersionSelector_impl this)
    jregisterMethod header_ "getVersionSelector" (\() -> getVersionSelector_impl this)
    jregisterMethod header_ "setType" (\() -> setType_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: OpenGLConfiguration -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.fILE ("OpenGLConfiguration.dat")
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.tsUtil =<< (TsUtil.getInstance)
    jset this.opengl (False)
    jset this.type_ ((jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL_AS_GAME_THREAD))
    jset this.imageColor ((jget ((jio (OpenGLFeatureFactory.getInstance))).iMAGE_COLOR_DEPTH_4444))
    jset this.color ((jget ((jio (OpenGLFeatureFactory.getInstance))).iMAGE_COLOR_DEPTH_4444))
    jset this.versionSelector ((jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL_AUTO_SELECT))
    pure ()


getInstance :: IO (OpenGLConfiguration)
getInstance = do
        when ((jget OpenGLConfiguration.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset OpenGLConfiguration.instance_ (assignedValue)
        pure ((javaCast (jget OpenGLConfiguration.instance_) :: OpenGLConfiguration))

new_ :: IO OpenGLConfiguration
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLConfiguration -> IO ()
init_ this = do
        initFields_ this
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).cONSTRUCTOR) e)
            ) $ do
            if (jio (FileFactory.isFile ((jio (FileFactory.getInstance))) (jget (this).fILE))) then do
                Control.Monad.void (OpenGLConfiguration.read this)
            else do
                Control.Monad.void (OpenGLConfiguration.write this)
        pure ()


-- throws Exception
read :: (JavaObjectClass this_) => this_ -> IO (())
read object_ = jmethod object_ "read" (\() -> (read_impl (javaCast object_ :: OpenGLConfiguration))) ()

read_super :: (JavaObjectClass this_) => this_ -> IO (())
read_super object_ = (read_impl (javaCast object_ :: OpenGLConfiguration))

read_impl :: OpenGLConfiguration -> IO (())
read_impl this = do
        openGLFeatureFactory <- (OpenGLFeatureFactory.getInstance)
        fileInputStreamFactory <- (FileStreamFactory.getInstance)
        fileInputStream <- (fmap (\value_ -> javaCast value_ :: InputStream.InputStream) (FileStreamFactory.getFileInputStreamInstance fileInputStreamFactory (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jget (this).fILE)))
        dataInputStream <- (DataInputStream.new_1 fileInputStream)
        openGLValue <- (DataInputStream.readInt dataInputStream)
        if (openGLValue == 0) then do
            Control.Monad.void (OpenGLConfiguration.setOpenGL this False)
        else if (openGLValue == 1) then do
            Control.Monad.void (OpenGLConfiguration.setOpenGL this True)
        else do
            javaThrow ((JavaException "Exception" "Invalid OpenGL Setting"))
        version <- (DataInputStream.readUTF dataInputStream)
        if ((jio (TsUtil.compareTo ((jget (this).tsUtil)) version (jio (OpenGLFeature.getName ((jget (openGLFeatureFactory).oPENGL_AUTO_SELECT)))))) == 0) then do
            Control.Monad.void (OpenGLConfiguration.setVersionSelector this (jget (openGLFeatureFactory).oPENGL_AUTO_SELECT))
        else if ((jio (TsUtil.compareTo ((jget (this).tsUtil)) version (jio (OpenGLFeature.getName ((jget (openGLFeatureFactory).oPENGL_MINIMUM)))))) == 0) then do
            Control.Monad.void (OpenGLConfiguration.setVersionSelector this (jget (openGLFeatureFactory).oPENGL_MINIMUM))
        else do
            javaThrow ((JavaException "Exception" ("OpenGLConfiguration: Error reading version selector: " ++ version)))
        type_ <- (DataInputStream.readUTF dataInputStream)
        if ((jio (TsUtil.compareTo ((jget (this).tsUtil)) type_ (jio (OpenGLFeature.getName ((jget (openGLFeatureFactory).oPENGL_AS_GAME_THREAD)))))) == 0) then do
            Control.Monad.void (OpenGLConfiguration.setType this (jget (openGLFeatureFactory).oPENGL_AS_GAME_THREAD))
        else if ((jio (TsUtil.compareTo ((jget (this).tsUtil)) type_ (jio (OpenGLFeature.getName ((jget (openGLFeatureFactory).oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)))))) == 0) then do
            Control.Monad.void (OpenGLConfiguration.setType this (jget (openGLFeatureFactory).oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS))
        else do
            javaThrow ((JavaException "Exception" "OpenGLConfiguration: Error reading image color"))
        imageColor <- (DataInputStream.readUTF dataInputStream)
        if ((jio (TsUtil.compareTo ((jget (this).tsUtil)) imageColor (jio (OpenGLFeature.getName ((jget (openGLFeatureFactory).iMAGE_COLOR_DEPTH_4444)))))) == 0) then do
            Control.Monad.void (OpenGLConfiguration.setImageColor this (jget (openGLFeatureFactory).iMAGE_COLOR_DEPTH_4444))
        else if ((jio (TsUtil.compareTo ((jget (this).tsUtil)) imageColor (jio (OpenGLFeature.getName ((jget (openGLFeatureFactory).iMAGE_COLOR_DEPTH_4444)))))) == 0) then do
            Control.Monad.void (OpenGLConfiguration.setImageColor this (jget (openGLFeatureFactory).iMAGE_COLOR_DEPTH_4444))
        else if ((jio (TsUtil.compareTo ((jget (this).tsUtil)) imageColor (jio (OpenGLFeature.getName ((jget (openGLFeatureFactory).iMAGE_COLOR_DEPTH_4444)))))) == 0) then do
            Control.Monad.void (OpenGLConfiguration.setImageColor this (jget (openGLFeatureFactory).iMAGE_COLOR_DEPTH_4444))
        else do
            javaThrow ((JavaException "Exception" ("OpenGLConfiguration: Error reading image color: " ++ imageColor)))
        color <- (DataInputStream.readUTF dataInputStream)
        if ((jio (TsUtil.compareTo ((jget (this).tsUtil)) color (jio (OpenGLFeature.getName ((jget (openGLFeatureFactory).oPENGL_COLOR_DEPTH_4444)))))) == 0) then do
            Control.Monad.void (OpenGLConfiguration.setColor this (jget (openGLFeatureFactory).oPENGL_COLOR_DEPTH_4444))
        else if ((jio (TsUtil.compareTo ((jget (this).tsUtil)) color (jio (OpenGLFeature.getName ((jget (openGLFeatureFactory).oPENGL_COLOR_DEPTH_565)))))) == 0) then do
            Control.Monad.void (OpenGLConfiguration.setColor this (jget (openGLFeatureFactory).oPENGL_COLOR_DEPTH_565))
        else if ((jio (TsUtil.compareTo ((jget (this).tsUtil)) color (jio (OpenGLFeature.getName ((jget (openGLFeatureFactory).oPENGL_COLOR_DEPTH_8888)))))) == 0) then do
            Control.Monad.void (OpenGLConfiguration.setColor this (jget (openGLFeatureFactory).oPENGL_COLOR_DEPTH_8888))
        else do
            javaThrow ((JavaException "Exception" ("OpenGLConfiguration: Error reading color: " ++ color)))
        Control.Monad.void (PreLogUtil.put ("Read Configuration: " ++ (jio (OpenGLConfiguration.toString this))) this "read")
        pure ()


-- throws Exception
write :: (JavaObjectClass this_) => this_ -> IO (())
write object_ = jmethod object_ "write" (\() -> (write_impl (javaCast object_ :: OpenGLConfiguration))) ()

write_super :: (JavaObjectClass this_) => this_ -> IO (())
write_super object_ = (write_impl (javaCast object_ :: OpenGLConfiguration))

write_impl :: OpenGLConfiguration -> IO (())
write_impl this = do
        closeable <- newIORef ((javaCast NullCloseable.nULL_CLOSEABLE :: Closeable.Closeable))
        flip finally (do
            Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) (jget closeable))
            ) $ handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            Control.Monad.void (PreLogUtil.put ("Write Configuration: " ++ (jio (OpenGLConfiguration.toString this))) this "write")
            fileInputStreamFactory <- (FileStreamFactory.getInstance)
            fileOutputStream <- (fmap (\value_ -> javaCast value_ :: OutputStream.OutputStream) (FileStreamFactory.getFileOutputStreamInstance fileInputStreamFactory (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jget (this).fILE)))
            dataOutputStream <- (AbDataOutputStream.new_1 fileOutputStream)
            jset closeable (dataOutputStream)
            if (jio (OpenGLConfiguration.isOpenGL this)) then do
                Control.Monad.void (AbDataOutputStream.writeInt dataOutputStream 1)
            else do
                Control.Monad.void (AbDataOutputStream.writeInt dataOutputStream 0)
            Control.Monad.void (AbDataOutputStream.writeUTF dataOutputStream (jio (OpenGLFeature.getName ((jio (OpenGLConfiguration.getVersionSelector this))))))
            Control.Monad.void (AbDataOutputStream.writeUTF dataOutputStream (jio (OpenGLFeature.getName ((jio (OpenGLConfiguration.getType this))))))
            Control.Monad.void (AbDataOutputStream.writeUTF dataOutputStream (jio (OpenGLFeature.getName ((jio (OpenGLConfiguration.getImageColor this))))))
            Control.Monad.void (AbDataOutputStream.writeUTF dataOutputStream (jio (OpenGLFeature.getName ((jio (OpenGLConfiguration.getColor this))))))
            Control.Monad.void (AbDataOutputStream.flush dataOutputStream)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: OpenGLConfiguration))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: OpenGLConfiguration))

init_impl :: OpenGLConfiguration -> IO (())
init_impl this = do
        features <- (Features.getInstance)
        if (jio (ChangedGameFeatureListener.isChangedFeature ((jio (ChangedGameFeatureListener.getInstance))) (jget ((jio (MainFeatureFactory.getInstance))).sTATIC))) then do
            openGLFeatureFactory <- (OpenGLFeatureFactory.getInstance)
            if (jio (OpenGLConfiguration.isOpenGL this)) then do
                if (((jio (Features.isFeature features (javaCast (jget (openGLFeatureFactory).oPENGL_2D)))) || (jio (Features.isFeature features (javaCast (jget (openGLFeatureFactory).oPENGL_3D))))) || (jio (Features.isFeature features (javaCast (jget (openGLFeatureFactory).oPENGL_2D_AND_3D))))) then do
                    when (Prelude.not (jio (Features.isDefault features (javaCast (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL))))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Turning on OpenGL as Default" this (jget ((jget (this).commonStrings)).iNIT))
                        Control.Monad.void (Features.addDefault features (javaCast (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL)))
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Using OpenGL Type Feature: " ++ javaToString (jio (OpenGLConfiguration.getType this))) this (jget ((jget (this).commonStrings)).iNIT))
                        Control.Monad.void (Features.addDefault features (javaCast (jio (OpenGLConfiguration.getType this))))
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Using OpenGL ImageColor Feature: " ++ javaToString (jio (OpenGLConfiguration.getImageColor this))) this (jget ((jget (this).commonStrings)).iNIT))
                        Control.Monad.void (Features.addDefault features (javaCast (jio (OpenGLConfiguration.getImageColor this))))
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Using OpenGL Color Feature: " ++ javaToString (jio (OpenGLConfiguration.getColor this))) this (jget ((jget (this).commonStrings)).iNIT))
                        Control.Monad.void (Features.addDefault features (javaCast (jio (OpenGLConfiguration.getColor this))))
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Using OpenGL Version Selector Feature: " ++ javaToString (jio (OpenGLConfiguration.getVersionSelector this))) this (jget ((jget (this).commonStrings)).iNIT))
                        Control.Monad.void (Features.addDefault features (javaCast (jio (OpenGLConfiguration.getVersionSelector this))))
                else do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "OpenGL is enabled, but this game does not support OpenGL (Probably from installing with the same package name from a game that had OpenGL available)" this (jget ((jget (this).commonStrings)).iNIT))
            else do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "OpenGL is Off" this (jget ((jget (this).commonStrings)).iNIT))
        else do
            when ((jio (OpenGLConfiguration.isOpenGL this)) && (Prelude.not (jio (Features.isDefault features (javaCast (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL)))))) $ do
                Control.Monad.void (PreLogUtil.put "OpenGL is set but not Enabled since statics where not cleared (Reboot or Complete exit is Required)" this (jget ((jget (this).commonStrings)).iNIT))
        Control.Monad.void (PreLogUtil.put (jio (OpenGLConfiguration.toString this)) this (jget ((jget (this).commonStrings)).iNIT))
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> Feature.Feature -> Bool -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: OpenGLConfiguration))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> Feature.Feature -> Bool -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: OpenGLConfiguration)) a1 a2

update_impl :: OpenGLConfiguration -> Feature.Feature -> Bool -> IO (())
update_impl this gameFeature colorLocked = do
        features <- (Features.getInstance)
        openGLFeatureFactory <- (OpenGLFeatureFactory.getInstance)
        modified <- newIORef (False)
        when ((jtoObject gameFeature) == (jtoObject (jget (openGLFeatureFactory).oPENGL))) $ do
            if (jio (Features.isFeature features gameFeature)) then do
                when (Prelude.not (jio (OpenGLConfiguration.isOpenGL this))) $ do
                    Control.Monad.void (OpenGLConfiguration.setOpenGL this True)
                    jset modified (True)
            else do
                when (jio (OpenGLConfiguration.isOpenGL this)) $ do
                    Control.Monad.void (OpenGLConfiguration.setOpenGL this False)
                    jset modified (True)
        when (((jtoObject gameFeature) == (jtoObject (jget (openGLFeatureFactory).oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS))) || ((jtoObject gameFeature) == (jtoObject (jget (openGLFeatureFactory).oPENGL_AS_GAME_THREAD)))) $ do
            when (jio (Features.isFeature features gameFeature)) $ do
                when ((jtoObject gameFeature) /= (jtoObject (jio (OpenGLConfiguration.getType this)))) $ do
                    Control.Monad.void (OpenGLConfiguration.setType this (javaCast gameFeature :: OpenGLFeature.OpenGLFeature))
                    jset modified (True)
        when ((((jtoObject gameFeature) == (jtoObject (jget (openGLFeatureFactory).iMAGE_COLOR_DEPTH_4444))) || ((jtoObject gameFeature) == (jtoObject (jget (openGLFeatureFactory).iMAGE_COLOR_DEPTH_565)))) || ((jtoObject gameFeature) == (jtoObject (jget (openGLFeatureFactory).iMAGE_COLOR_DEPTH_8888)))) $ do
            when (jio (Features.isFeature features gameFeature)) $ do
                when ((jtoObject (jio (OpenGLConfiguration.getImageColor this))) /= (jtoObject gameFeature)) $ do
                    Control.Monad.void (OpenGLConfiguration.setImageColor this (javaCast gameFeature :: OpenGLFeature.OpenGLFeature))
                    when colorLocked $ do
                        if ((jtoObject gameFeature) == (jtoObject (jget (openGLFeatureFactory).iMAGE_COLOR_DEPTH_4444))) then do
                            Control.Monad.void (OpenGLConfiguration.setColor this (jget (openGLFeatureFactory).oPENGL_COLOR_DEPTH_4444))
                        else if ((jtoObject gameFeature) == (jtoObject (jget (openGLFeatureFactory).iMAGE_COLOR_DEPTH_565))) then do
                            Control.Monad.void (OpenGLConfiguration.setColor this (jget (openGLFeatureFactory).oPENGL_COLOR_DEPTH_565))
                        else when ((jtoObject gameFeature) == (jtoObject (jget (openGLFeatureFactory).iMAGE_COLOR_DEPTH_8888))) $ do
                            Control.Monad.void (OpenGLConfiguration.setColor this (jget (openGLFeatureFactory).oPENGL_COLOR_DEPTH_8888))
                    jset modified (True)
        when ((((jtoObject gameFeature) == (jtoObject (jget (openGLFeatureFactory).oPENGL_COLOR_DEPTH_4444))) || ((jtoObject gameFeature) == (jtoObject (jget (openGLFeatureFactory).oPENGL_COLOR_DEPTH_565)))) || ((jtoObject gameFeature) == (jtoObject (jget (openGLFeatureFactory).oPENGL_COLOR_DEPTH_8888)))) $ do
            when (jio (Features.isFeature features gameFeature)) $ do
                when ((jtoObject (jio (OpenGLConfiguration.getColor this))) /= (jtoObject gameFeature)) $ do
                    Control.Monad.void (OpenGLConfiguration.setColor this (javaCast gameFeature :: OpenGLFeature.OpenGLFeature))
                    jset modified (True)
        when (((jtoObject gameFeature) == (jtoObject (jget (openGLFeatureFactory).oPENGL_AUTO_SELECT))) || ((jtoObject gameFeature) == (jtoObject (jget (openGLFeatureFactory).oPENGL_MINIMUM)))) $ do
            when (jio (Features.isFeature features gameFeature)) $ do
                Control.Monad.void (OpenGLConfiguration.setVersionSelector this (javaCast gameFeature :: OpenGLFeature.OpenGLFeature))
            jset modified (True)
        when (jget modified) $ do
            Control.Monad.void (OpenGLConfiguration.write this)
        pure ()


setOpenGL :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setOpenGL object_ a1 = jmethod object_ "setOpenGL" (\() -> (setOpenGL_impl (javaCast object_ :: OpenGLConfiguration))) () a1

setOpenGL_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setOpenGL_super object_ a1 = (setOpenGL_impl (javaCast object_ :: OpenGLConfiguration)) a1

setOpenGL_impl :: OpenGLConfiguration -> Bool -> IO (())
setOpenGL_impl this opengl = do
        jset (this).opengl (opengl)
        pure ()


isOpenGL :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOpenGL object_ = jmethod object_ "isOpenGL" (\() -> (isOpenGL_impl (javaCast object_ :: OpenGLConfiguration))) ()

isOpenGL_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOpenGL_super object_ = (isOpenGL_impl (javaCast object_ :: OpenGLConfiguration))

isOpenGL_impl :: OpenGLConfiguration -> IO (Bool)
isOpenGL_impl this = do
        pure ((jget (this).opengl))


setImageColor :: (JavaObjectClass this_) => this_ -> OpenGLFeature.OpenGLFeature -> IO (())
setImageColor object_ a1 = jmethod object_ "setImageColor" (\() -> (setImageColor_impl (javaCast object_ :: OpenGLConfiguration))) () a1

setImageColor_super :: (JavaObjectClass this_) => this_ -> OpenGLFeature.OpenGLFeature -> IO (())
setImageColor_super object_ a1 = (setImageColor_impl (javaCast object_ :: OpenGLConfiguration)) a1

setImageColor_impl :: OpenGLConfiguration -> OpenGLFeature.OpenGLFeature -> IO (())
setImageColor_impl this imageColor = do
        jset (this).imageColor (imageColor)
        pure ()


getImageColor :: (JavaObjectClass this_) => this_ -> IO (OpenGLFeature.OpenGLFeature)
getImageColor object_ = jmethod object_ "getImageColor" (\() -> (getImageColor_impl (javaCast object_ :: OpenGLConfiguration))) ()

getImageColor_super :: (JavaObjectClass this_) => this_ -> IO (OpenGLFeature.OpenGLFeature)
getImageColor_super object_ = (getImageColor_impl (javaCast object_ :: OpenGLConfiguration))

getImageColor_impl :: OpenGLConfiguration -> IO (OpenGLFeature.OpenGLFeature)
getImageColor_impl this = do
        pure ((jget (this).imageColor))


setColor :: (JavaObjectClass this_) => this_ -> OpenGLFeature.OpenGLFeature -> IO (())
setColor object_ a1 = jmethod object_ "setColor" (\() -> (setColor_impl (javaCast object_ :: OpenGLConfiguration))) () a1

setColor_super :: (JavaObjectClass this_) => this_ -> OpenGLFeature.OpenGLFeature -> IO (())
setColor_super object_ a1 = (setColor_impl (javaCast object_ :: OpenGLConfiguration)) a1

setColor_impl :: OpenGLConfiguration -> OpenGLFeature.OpenGLFeature -> IO (())
setColor_impl this color = do
        jset (this).color (color)
        pure ()


getColor :: (JavaObjectClass this_) => this_ -> IO (OpenGLFeature.OpenGLFeature)
getColor object_ = jmethod object_ "getColor" (\() -> (getColor_impl (javaCast object_ :: OpenGLConfiguration))) ()

getColor_super :: (JavaObjectClass this_) => this_ -> IO (OpenGLFeature.OpenGLFeature)
getColor_super object_ = (getColor_impl (javaCast object_ :: OpenGLConfiguration))

getColor_impl :: OpenGLConfiguration -> IO (OpenGLFeature.OpenGLFeature)
getColor_impl this = do
        pure ((jget (this).color))


setVersionSelector :: (JavaObjectClass this_) => this_ -> OpenGLFeature.OpenGLFeature -> IO (())
setVersionSelector object_ a1 = jmethod object_ "setVersionSelector" (\() -> (setVersionSelector_impl (javaCast object_ :: OpenGLConfiguration))) () a1

setVersionSelector_super :: (JavaObjectClass this_) => this_ -> OpenGLFeature.OpenGLFeature -> IO (())
setVersionSelector_super object_ a1 = (setVersionSelector_impl (javaCast object_ :: OpenGLConfiguration)) a1

setVersionSelector_impl :: OpenGLConfiguration -> OpenGLFeature.OpenGLFeature -> IO (())
setVersionSelector_impl this versionSelector = do
        jset (this).versionSelector (versionSelector)
        pure ()


getVersionSelector :: (JavaObjectClass this_) => this_ -> IO (OpenGLFeature.OpenGLFeature)
getVersionSelector object_ = jmethod object_ "getVersionSelector" (\() -> (getVersionSelector_impl (javaCast object_ :: OpenGLConfiguration))) ()

getVersionSelector_super :: (JavaObjectClass this_) => this_ -> IO (OpenGLFeature.OpenGLFeature)
getVersionSelector_super object_ = (getVersionSelector_impl (javaCast object_ :: OpenGLConfiguration))

getVersionSelector_impl :: OpenGLConfiguration -> IO (OpenGLFeature.OpenGLFeature)
getVersionSelector_impl this = do
        pure ((jget (this).versionSelector))


setType :: (JavaObjectClass this_) => this_ -> OpenGLFeature.OpenGLFeature -> IO (())
setType object_ a1 = jmethod object_ "setType" (\() -> (setType_impl (javaCast object_ :: OpenGLConfiguration))) () a1

setType_super :: (JavaObjectClass this_) => this_ -> OpenGLFeature.OpenGLFeature -> IO (())
setType_super object_ a1 = (setType_impl (javaCast object_ :: OpenGLConfiguration)) a1

setType_impl :: OpenGLConfiguration -> OpenGLFeature.OpenGLFeature -> IO (())
setType_impl this type_ = do
        jset (this).type_ (type_)
        pure ()


getType :: (JavaObjectClass this_) => this_ -> IO (OpenGLFeature.OpenGLFeature)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: OpenGLConfiguration))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (OpenGLFeature.OpenGLFeature)
getType_super object_ = (getType_impl (javaCast object_ :: OpenGLConfiguration))

getType_impl :: OpenGLConfiguration -> IO (OpenGLFeature.OpenGLFeature)
getType_impl this = do
        pure ((jget (this).type_))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: OpenGLConfiguration))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: OpenGLConfiguration))

toString_impl :: OpenGLConfiguration -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        stringUtil <- (StringUtil.getInstance)
        Control.Monad.void (StringMaker.append stringBuffer " isOpenGL: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (OpenGLConfiguration.isOpenGL this)))
        Control.Monad.void (StringMaker.append stringBuffer " VersionSelector: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil (jio (OpenGLConfiguration.getVersionSelector this)))))
        Control.Monad.void (StringMaker.append stringBuffer " Type: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil (jio (OpenGLConfiguration.getType this)))))
        Control.Monad.void (StringMaker.append stringBuffer " Image Color: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil (jio (OpenGLConfiguration.getImageColor this)))))
        Control.Monad.void (StringMaker.append stringBuffer " Color: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil (jio (OpenGLConfiguration.getColor this)))))
        (StringMaker.toString stringBuffer)


