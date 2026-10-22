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
module OpenGLCapabilities where

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
import qualified OpenGLFeatureFactory -- same package or java.lang
import qualified OpenGLFeature -- same package or java.lang
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified GL11 -- javax.microedition.khronos.opengles.GL11
import qualified AndroidUtil -- org.allbinary.AndroidUtil
import qualified OpenGLESGL10ImageFactory -- org.allbinary.image.opengles.OpenGLESGL10ImageFactory
import qualified OpenGLESGL11VBOImageFactory -- org.allbinary.image.opengles.OpenGLESGL11VBOImageFactory
import qualified OpenGLImageSpecificFactory -- org.allbinary.image.opengles.OpenGLImageSpecificFactory
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Tokenizer -- org.allbinary.logic.string.tokens.Tokenizer
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data OpenGLCapabilities = OpenGLCapabilities
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , cUSTOM_GL_SURFACE_VIEW :: IORef (Bool)
    , stringUtil :: IORef (StringUtil.StringUtil)
    , initialized :: IORef (Bool)
    , glVersionString :: IORef (String)
    , glShaderVersionString :: IORef (String)
    , shaderVersion :: IORef (Int)
    , glRenderer :: IORef (String)
    , glVendor :: IORef (String)
    , glExtensions :: IORef (String)
    , possiblyAccelerated :: IORef (Bool)
    , acceleratedString :: IORef (String)
    , maxTextureSize :: IORef (Int)
    , vERSION_1_0 :: IORef (String)
    , vERSION_1_1 :: IORef (String)
    , vERSION_2_0 :: IORef (String)
    , vERSION_3_0 :: IORef (String)
    , vERSION_3_1 :: IORef (String)
    , vERSION_3_2 :: IORef (String)
    , vERSION_HIGHER_THAN_EXISTS :: IORef (String)
    , vERSION_UNK :: IORef (String)
    , gL_EXT_GPU_SHADER_100 :: IORef (String)
    , gL_EXT_GPU_SHADER4 :: IORef (String)
    , glVersion :: IORef (String)
    , glInstanceVersion :: IORef (String)
    , glExtensionDrawTexture :: IORef (Bool)
    , glThreedDrawTexture :: IORef (Bool)
    , glExtensionGPUShader4 :: IORef (Bool)
    , glExtensionGPUShader100 :: IORef (Bool)
    , vertexBufferObjectSupport :: IORef (Bool)
    }

instance JavaNull OpenGLCapabilities where
    javaNull = javaNullRecord "OpenGLCapabilities"

instance JavaEquals OpenGLCapabilities where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLCapabilities where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLCapabilities where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO OpenGLCapabilities
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    cUSTOM_GL_SURFACE_VIEW <- newIORef False
    stringUtil <- newIORef javaNull
    initialized <- newIORef False
    glVersionString <- newIORef ""
    glShaderVersionString <- newIORef ""
    shaderVersion <- newIORef 0
    glRenderer <- newIORef ""
    glVendor <- newIORef ""
    glExtensions <- newIORef ""
    possiblyAccelerated <- newIORef False
    acceleratedString <- newIORef ""
    maxTextureSize <- newIORef 0
    vERSION_1_0 <- newIORef ""
    vERSION_1_1 <- newIORef ""
    vERSION_2_0 <- newIORef ""
    vERSION_3_0 <- newIORef ""
    vERSION_3_1 <- newIORef ""
    vERSION_3_2 <- newIORef ""
    vERSION_HIGHER_THAN_EXISTS <- newIORef ""
    vERSION_UNK <- newIORef ""
    gL_EXT_GPU_SHADER_100 <- newIORef ""
    gL_EXT_GPU_SHADER4 <- newIORef ""
    glVersion <- newIORef ""
    glInstanceVersion <- newIORef ""
    glExtensionDrawTexture <- newIORef False
    glThreedDrawTexture <- newIORef False
    glExtensionGPUShader4 <- newIORef False
    glExtensionGPUShader100 <- newIORef False
    vertexBufferObjectSupport <- newIORef False
    let this = OpenGLCapabilities header_ logUtil cUSTOM_GL_SURFACE_VIEW stringUtil initialized glVersionString glShaderVersionString shaderVersion glRenderer glVendor glExtensions possiblyAccelerated acceleratedString maxTextureSize vERSION_1_0 vERSION_1_1 vERSION_2_0 vERSION_3_0 vERSION_3_1 vERSION_3_2 vERSION_HIGHER_THAN_EXISTS vERSION_UNK gL_EXT_GPU_SHADER_100 gL_EXT_GPU_SHADER4 glVersion glInstanceVersion glExtensionDrawTexture glThreedDrawTexture glExtensionGPUShader4 glExtensionGPUShader100 vertexBufferObjectSupport
    jregisterLevel header_ this
    jregisterMethod header_ "isInitialized" (\() -> isInitialized_impl this)
    jregisterMethod header_ "requireInitialization" (\() -> requireInitialization_impl this)
    jregisterMethod header_ "initCapabilities" (\() -> initCapabilities_impl this)
    jregisterMethod header_ "isExtension" (\() -> isExtension_impl this)
    jregisterMethod header_ "isGlExtensionDrawTexture" (\() -> isGlExtensionDrawTexture_impl this)
    jregisterMethod header_ "isGlExtensionGPUShader100" (\() -> isGlExtensionGPUShader100_impl this)
    jregisterMethod header_ "isGlExtensionGPUShader4" (\() -> isGlExtensionGPUShader4_impl this)
    jregisterMethod header_ "getGlVersion" (\() -> getGlVersion_impl this)
    jregisterMethod header_ "getGlVersionString" (\() -> getGlVersionString_impl this)
    jregisterMethod header_ "getGlShaderVersion" (\() -> getGlShaderVersion_impl this)
    jregisterMethod header_ "isGlThreedDrawTexture" (\() -> isGlThreedDrawTexture_impl this)
    jregisterMethod header_ "getGlRenderer" (\() -> getGlRenderer_impl this)
    jregisterMethod header_ "isVertexBufferObjectSupport" (\() -> isVertexBufferObjectSupport_impl this)
    jregisterMethod header_ "isTextureSizeValid" (\() -> isTextureSizeValid_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: OpenGLCapabilities -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.cUSTOM_GL_SURFACE_VIEW (True)
    jset this.stringUtil =<< (StringUtil.getInstance)
    jset this.initialized (False)
    jset this.glVersionString ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.glShaderVersionString ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.shaderVersion (0)
    jset this.glRenderer ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.glVendor ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.glExtensions ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.possiblyAccelerated (False)
    jset this.acceleratedString ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.maxTextureSize (64)
    jset this.vERSION_1_0 ("1.0")
    jset this.vERSION_1_1 ("1.1")
    jset this.vERSION_2_0 ("2.0")
    jset this.vERSION_3_0 ("3.0")
    jset this.vERSION_3_1 ("3.1")
    jset this.vERSION_3_2 ("3.2")
    jset this.vERSION_HIGHER_THAN_EXISTS ("999.999")
    jset this.vERSION_UNK ("Unk")
    jset this.gL_EXT_GPU_SHADER_100 ("GL_ARB_shading_language_100")
    jset this.gL_EXT_GPU_SHADER4 ("GL_EXT_gpu_shader4")
    jset this.glVersion ((jget (this).glVersionString))
    jset this.glInstanceVersion ((jget (this).vERSION_UNK))
    jset this.glExtensionDrawTexture (False)
    jset this.glThreedDrawTexture (False)
    jset this.glExtensionGPUShader4 (False)
    jset this.glExtensionGPUShader100 (False)
    jset this.vertexBufferObjectSupport (False)
    pure ()


getInstance :: IO (OpenGLCapabilities)
getInstance = do
        pure (OpenGLCapabilities.instance_)

new_ :: IO OpenGLCapabilities
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLCapabilities -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


isInitialized :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized object_ = jmethod object_ "isInitialized" (\() -> (isInitialized_impl (javaCast object_ :: OpenGLCapabilities))) ()

isInitialized_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized_super object_ = (isInitialized_impl (javaCast object_ :: OpenGLCapabilities))

isInitialized_impl :: OpenGLCapabilities -> IO (Bool)
isInitialized_impl this = do
        pure ((jget (this).initialized))


requireInitialization :: (JavaObjectClass this_) => this_ -> IO (())
requireInitialization object_ = jmethod object_ "requireInitialization" (\() -> (requireInitialization_impl (javaCast object_ :: OpenGLCapabilities))) ()

requireInitialization_super :: (JavaObjectClass this_) => this_ -> IO (())
requireInitialization_super object_ = (requireInitialization_impl (javaCast object_ :: OpenGLCapabilities))

requireInitialization_impl :: OpenGLCapabilities -> IO (())
requireInitialization_impl this = do
        pure ()


initCapabilities :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
initCapabilities object_ a1 = jmethod object_ "initCapabilities" (\() -> (initCapabilities_impl (javaCast object_ :: OpenGLCapabilities))) () a1

initCapabilities_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
initCapabilities_super object_ a1 = (initCapabilities_impl (javaCast object_ :: OpenGLCapabilities)) a1

initCapabilities_impl :: OpenGLCapabilities -> GL10.GL10 -> IO (())
initCapabilities_impl this gl = do
        let mETHOD_NAME = "initGLCapabilities"
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this mETHOD_NAME e)
            ) $ do
            features <- (Features.getInstance)
            openGLFeatureFactory <- (OpenGLFeatureFactory.getInstance)
            openGLImageSpecificFactory <- (OpenGLImageSpecificFactory.getInstance)
            stringBuffer <- (StringMaker.new_)
            assignedValue <- (GL10.glGetString gl (GL10.gL_VERSION))
            jset (this).glVersionString (assignedValue)
            let gL_SHADING_LANGUAGE_VERSION = 0x8b8c
            assignedValue <- (GL10.glGetString gl gL_SHADING_LANGUAGE_VERSION)
            jset (this).glShaderVersionString (assignedValue)
            when ((jget (this).glShaderVersionString) == javaNull) $ do
                jset (this).glShaderVersionString ((jget ((jget (this).stringUtil)).eMPTY_STRING))
            handle (\(e :: JavaException) -> do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this mETHOD_NAME e)
                ) $ do
                when (((jget (this).glShaderVersionString) /= javaNull) && ((jstringIndexOf (jget (this).glShaderVersionString) '.' 0) >= 0)) $ do
                    let startIndex = (jstringLastIndexOf (jget (this).glShaderVersionString) ' ')
                    when (startIndex >= 0) $ do
                        jset (this).glShaderVersionString ((Prelude.drop (startIndex + 1) (jget (this).glShaderVersionString)))
                    jset (this).shaderVersion ((Prelude.read (jstringReplace (jget (this).glShaderVersionString) (jget ((jio (CommonSeps.getInstance))).pERIOD) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))))
            assignedValue <- (GL10.glGetString gl (GL10.gL_RENDERER))
            jset (this).glRenderer (assignedValue)
            assignedValue <- (GL10.glGetString gl (GL10.gL_VENDOR))
            jset (this).glVendor (assignedValue)
            assignedValue <- (GL10.glGetString gl (GL10.gL_EXTENSIONS))
            jset (this).glExtensions (assignedValue)
            if ((jstringIndexOf (jget (this).glExtensions) (jget (this).gL_EXT_GPU_SHADER_100) 0) >= 0) then do
                jset (this).glExtensionGPUShader100 (True)
            else do
                jset (this).glExtensionGPUShader100 (False)
            if ((jstringIndexOf (jget (this).glExtensions) (jget (this).gL_EXT_GPU_SHADER4) 0) >= 0) then do
                jset (this).glExtensionGPUShader4 (True)
            else do
                jset (this).glExtensionGPUShader4 (False)
            when ((jget (this).glRenderer) == javaNull) $ do
                jset (this).glRenderer ((jget ((jget (this).stringUtil)).eMPTY_STRING))
            if ((jstringIndexOf (Prelude.map Data.Char.toLower (jget (this).glRenderer)) "pixelflinger" 0) >= 0) then do
                jset (this).acceleratedString (("Probably Not for " ++ (jget (this).glRenderer)))
                jset (this).possiblyAccelerated (False)
            else do
                jset (this).acceleratedString (("Probably for " ++ (jget (this).glRenderer)))
                jset (this).possiblyAccelerated (True)
            jset (this).glExtensionDrawTexture (False)
            if ((jget (this).glVersionString) == javaNull) then do
                jset (this).glVersionString ((jget ((jget (this).stringUtil)).eMPTY_STRING))
                jset (this).glVersion ((jget (this).vERSION_UNK))
            else if ((jstringIndexOf (jget (this).glVersionString) " 1.0" 0) >= 0) then do
                jset (this).glVersion ((jget (this).vERSION_1_0))
            else if ((jstringIndexOf (jget (this).glVersionString) " 1.1" 0) >= 0) then do
                jset (this).glVersion ((jget (this).vERSION_1_1))
            else do
                jset (this).glVersion ((jget (this).vERSION_UNK))
            if (javaInstanceOf gl "GL11") then do
                jset (this).glInstanceVersion ((jget (this).vERSION_1_1))
            else when (javaInstanceOf gl "GL10") $ do
                jset (this).glInstanceVersion ((jget (this).vERSION_1_0))
            when ((jget (this).glVendor) == javaNull) $ do
                jset (this).glVendor ((jget ((jget (this).stringUtil)).eMPTY_STRING))
            when ((jget (this).glExtensions) == javaNull) $ do
                jset (this).glExtensions ((jget ((jget (this).stringUtil)).eMPTY_STRING))
            when (jget (this).possiblyAccelerated) $ do
                Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.appendboolean ((jio (StringMaker.append ((jio (StringMaker.appendboolean ((jio (StringMaker.append ((jio (StringMaker.new_))) "VBO:?"))) (((jget (this).glInstanceVersion) == (jget (this).vERSION_1_1)))))) "||"))) (jio (OpenGLCapabilities.isExtension this (jget (openGLFeatureFactory).oPENGL_VERTEX_BUFFER_OBJECT)))))))) this mETHOD_NAME)
                when ((((jget (this).glInstanceVersion) == (jget (this).vERSION_1_1)) || (jio (OpenGLCapabilities.isExtension this (jget (openGLFeatureFactory).oPENGL_VERTEX_BUFFER_OBJECT))))) $ do
                    if (jio (AndroidUtil.isAndroid)) then do
                        Control.Monad.void (PreLogUtil.put "VBO implementation was detected, but disabled by default for Android" this mETHOD_NAME)
                    else do
                        Control.Monad.void (PreLogUtil.put "VBO implementation was detected, but disabled for now" this mETHOD_NAME)
            stringUtil <- (StringUtil.getInstance)
            if (jio (Features.isDefault features (javaCast (jget (openGLFeatureFactory).oPENGL_AUTO_SELECT)))) then do
                if (jget (this).vertexBufferObjectSupport) then do
                    Control.Monad.void (OpenGLImageSpecificFactory.setImageFactory openGLImageSpecificFactory (javaCast (jio (OpenGLESGL11VBOImageFactory.new_))))
                else do
                    Control.Monad.void (StringMaker.append stringBuffer "OpenGL is on but ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil (jget (openGLFeatureFactory).oPENGL_DRAW_TEXTURE))))
                    Control.Monad.void (StringMaker.append stringBuffer " was not available")
                    Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString stringBuffer)) this mETHOD_NAME)
                    Control.Monad.void (OpenGLImageSpecificFactory.setImageFactory openGLImageSpecificFactory (javaCast (jio (OpenGLESGL10ImageFactory.new_))))
            else do
                Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil (jget (openGLFeatureFactory).oPENGL_AUTO_SELECT))))
                Control.Monad.void (StringMaker.append stringBuffer " is not on")
                Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString stringBuffer)) this mETHOD_NAME)
                Control.Monad.void (OpenGLImageSpecificFactory.setImageFactory openGLImageSpecificFactory (javaCast (jio (OpenGLESGL10ImageFactory.new_))))
            let maxTextureSizeArray = (jnewArray (1) 0)
            Control.Monad.void (GL10.glGetIntegerv gl (GL10.gL_MAX_TEXTURE_SIZE) maxTextureSizeArray 0)
            jset (this).maxTextureSize ((jindex maxTextureSizeArray (0)))
            jset (this).initialized (True)
        pure ()


isExtension :: (JavaObjectClass this_) => this_ -> OpenGLFeature.OpenGLFeature -> IO (Bool)
isExtension object_ a1 = jmethod object_ "isExtension" (\() -> (isExtension_impl (javaCast object_ :: OpenGLCapabilities))) () a1

isExtension_super :: (JavaObjectClass this_) => this_ -> OpenGLFeature.OpenGLFeature -> IO (Bool)
isExtension_super object_ a1 = (isExtension_impl (javaCast object_ :: OpenGLCapabilities)) a1

isExtension_impl :: OpenGLCapabilities -> OpenGLFeature.OpenGLFeature -> IO (Bool)
isExtension_impl this gameFeature = do
    javaCatchReturn $ do
        let index = (jstringIndexOf (jget (this).glExtensions) (jio (OpenGLFeature.getName gameFeature)) 0)
        if (index >= 0) then do
            javaReturn (True)
        else do
            javaReturn (False)


isGlExtensionDrawTexture :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGlExtensionDrawTexture object_ = jmethod object_ "isGlExtensionDrawTexture" (\() -> (isGlExtensionDrawTexture_impl (javaCast object_ :: OpenGLCapabilities))) ()

isGlExtensionDrawTexture_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGlExtensionDrawTexture_super object_ = (isGlExtensionDrawTexture_impl (javaCast object_ :: OpenGLCapabilities))

isGlExtensionDrawTexture_impl :: OpenGLCapabilities -> IO (Bool)
isGlExtensionDrawTexture_impl this = do
        Control.Monad.void (OpenGLCapabilities.requireInitialization this)
        pure ((jget (this).glExtensionDrawTexture))


isGlExtensionGPUShader100 :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGlExtensionGPUShader100 object_ = jmethod object_ "isGlExtensionGPUShader100" (\() -> (isGlExtensionGPUShader100_impl (javaCast object_ :: OpenGLCapabilities))) ()

isGlExtensionGPUShader100_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGlExtensionGPUShader100_super object_ = (isGlExtensionGPUShader100_impl (javaCast object_ :: OpenGLCapabilities))

isGlExtensionGPUShader100_impl :: OpenGLCapabilities -> IO (Bool)
isGlExtensionGPUShader100_impl this = do
        pure ((jget (this).glExtensionGPUShader100))


isGlExtensionGPUShader4 :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGlExtensionGPUShader4 object_ = jmethod object_ "isGlExtensionGPUShader4" (\() -> (isGlExtensionGPUShader4_impl (javaCast object_ :: OpenGLCapabilities))) ()

isGlExtensionGPUShader4_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGlExtensionGPUShader4_super object_ = (isGlExtensionGPUShader4_impl (javaCast object_ :: OpenGLCapabilities))

isGlExtensionGPUShader4_impl :: OpenGLCapabilities -> IO (Bool)
isGlExtensionGPUShader4_impl this = do
        Control.Monad.void (OpenGLCapabilities.requireInitialization this)
        pure ((jget (this).glExtensionGPUShader4))


getGlVersion :: (JavaObjectClass this_) => this_ -> IO (String)
getGlVersion object_ = jmethod object_ "getGlVersion" (\() -> (getGlVersion_impl (javaCast object_ :: OpenGLCapabilities))) ()

getGlVersion_super :: (JavaObjectClass this_) => this_ -> IO (String)
getGlVersion_super object_ = (getGlVersion_impl (javaCast object_ :: OpenGLCapabilities))

getGlVersion_impl :: OpenGLCapabilities -> IO (String)
getGlVersion_impl this = do
        Control.Monad.void (OpenGLCapabilities.requireInitialization this)
        pure ((jget (this).glVersion))


getGlVersionString :: (JavaObjectClass this_) => this_ -> IO (String)
getGlVersionString object_ = jmethod object_ "getGlVersionString" (\() -> (getGlVersionString_impl (javaCast object_ :: OpenGLCapabilities))) ()

getGlVersionString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getGlVersionString_super object_ = (getGlVersionString_impl (javaCast object_ :: OpenGLCapabilities))

getGlVersionString_impl :: OpenGLCapabilities -> IO (String)
getGlVersionString_impl this = do
        Control.Monad.void (OpenGLCapabilities.requireInitialization this)
        pure ((jget (this).glVersionString))


getGlShaderVersion :: (JavaObjectClass this_) => this_ -> IO (String)
getGlShaderVersion object_ = jmethod object_ "getGlShaderVersion" (\() -> (getGlShaderVersion_impl (javaCast object_ :: OpenGLCapabilities))) ()

getGlShaderVersion_super :: (JavaObjectClass this_) => this_ -> IO (String)
getGlShaderVersion_super object_ = (getGlShaderVersion_impl (javaCast object_ :: OpenGLCapabilities))

getGlShaderVersion_impl :: OpenGLCapabilities -> IO (String)
getGlShaderVersion_impl this = do
        Control.Monad.void (OpenGLCapabilities.requireInitialization this)
        pure ((jget (this).glShaderVersionString))


isGlThreedDrawTexture :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGlThreedDrawTexture object_ = jmethod object_ "isGlThreedDrawTexture" (\() -> (isGlThreedDrawTexture_impl (javaCast object_ :: OpenGLCapabilities))) ()

isGlThreedDrawTexture_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGlThreedDrawTexture_super object_ = (isGlThreedDrawTexture_impl (javaCast object_ :: OpenGLCapabilities))

isGlThreedDrawTexture_impl :: OpenGLCapabilities -> IO (Bool)
isGlThreedDrawTexture_impl this = do
        Control.Monad.void (OpenGLCapabilities.requireInitialization this)
        pure ((jget (this).glThreedDrawTexture))


getGlRenderer :: (JavaObjectClass this_) => this_ -> IO (String)
getGlRenderer object_ = jmethod object_ "getGlRenderer" (\() -> (getGlRenderer_impl (javaCast object_ :: OpenGLCapabilities))) ()

getGlRenderer_super :: (JavaObjectClass this_) => this_ -> IO (String)
getGlRenderer_super object_ = (getGlRenderer_impl (javaCast object_ :: OpenGLCapabilities))

getGlRenderer_impl :: OpenGLCapabilities -> IO (String)
getGlRenderer_impl this = do
        Control.Monad.void (OpenGLCapabilities.requireInitialization this)
        pure ((jget (this).glRenderer))


isVertexBufferObjectSupport :: (JavaObjectClass this_) => this_ -> IO (Bool)
isVertexBufferObjectSupport object_ = jmethod object_ "isVertexBufferObjectSupport" (\() -> (isVertexBufferObjectSupport_impl (javaCast object_ :: OpenGLCapabilities))) ()

isVertexBufferObjectSupport_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isVertexBufferObjectSupport_super object_ = (isVertexBufferObjectSupport_impl (javaCast object_ :: OpenGLCapabilities))

isVertexBufferObjectSupport_impl :: OpenGLCapabilities -> IO (Bool)
isVertexBufferObjectSupport_impl this = do
        Control.Monad.void (OpenGLCapabilities.requireInitialization this)
        pure ((jget (this).vertexBufferObjectSupport))


isTextureSizeValid :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isTextureSizeValid object_ a1 = jmethod object_ "isTextureSizeValid" (\() -> (isTextureSizeValid_impl (javaCast object_ :: OpenGLCapabilities))) () a1

isTextureSizeValid_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isTextureSizeValid_super object_ a1 = (isTextureSizeValid_impl (javaCast object_ :: OpenGLCapabilities)) a1

isTextureSizeValid_impl :: OpenGLCapabilities -> Int -> IO (Bool)
isTextureSizeValid_impl this widthAndHeight = do
    javaCatchReturn $ do
        Control.Monad.void (OpenGLCapabilities.requireInitialization this)
        when ((jget (this).maxTextureSize) >= widthAndHeight) $ do
            javaReturn (True)
        pure (False)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: OpenGLCapabilities))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: OpenGLCapabilities))

toString_impl :: OpenGLCapabilities -> IO (String)
toString_impl this = do
        commonSeps <- (CommonSeps.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "GL_VERSION: ")
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).glVersionString))
        Control.Monad.void (StringMaker.append stringBuffer " GL_SHADING_LANGUAGE_VERSION: ")
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).glShaderVersionString))
        Control.Monad.void (StringMaker.append stringBuffer " GL_RENDERER: ")
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).glRenderer))
        Control.Monad.void (StringMaker.append stringBuffer " GL_VENDOR: ")
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).glVendor))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer " Is Accelerated: ")
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).acceleratedString))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer " VBO Support: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (OpenGLCapabilities.isVertexBufferObjectSupport this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer " Max Texture Size: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).maxTextureSize))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer " GL_EXTENSIONS: ")
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (PreLogUtil.putOE (jget (commonStrings).eXCEPTION) this (jget (commonStrings).tOSTRING) e)
            ) $ do
            tokenizer <- (Tokenizer.new_1 (jget (commonSeps).sPACE))
            list <- (Tokenizer.getTokensFromString tokenizer (jget (this).glExtensions) (javaCast (jio (BasicArrayListD.new_))))
            size <- (BasicArrayList.size list)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
                Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jget (this).stringUtil)) (jindex ((jget (list).objectArray)) (index)))))
        (StringMaker.toString stringBuffer)


