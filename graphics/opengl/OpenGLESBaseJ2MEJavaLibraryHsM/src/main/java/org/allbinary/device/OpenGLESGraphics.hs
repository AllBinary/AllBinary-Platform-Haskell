{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.device
module OpenGLESGraphics where

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
import qualified NullGL10 -- same package or java.lang
import qualified GL -- javax.microedition.khronos.opengles.GL
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified Font -- javax.microedition.lcdui.Font
import qualified FontDebugBase -- org.allbinary.graphics.font.FontDebugBase
import qualified OpenGLSurfaceChangedInterface -- org.allbinary.image.opengles.OpenGLSurfaceChangedInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified GraphicsInterface

-- implements OpenGLSurfaceChangedInterface
-- implements GraphicsInterface
data OpenGLESGraphics = OpenGLESGraphics
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , gl :: IORef (GL10.GL10)
    }

instance JavaNull OpenGLESGraphics where
    javaNull = javaNullRecord "OpenGLESGraphics"

instance JavaEquals OpenGLESGraphics where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLESGraphics where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLESGraphics where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLESGraphics
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    gl <- newIORef javaNull
    let this = OpenGLESGraphics header_ commonStrings gl
    jregisterLevel header_ this
    OpenGLSurfaceChangedInterface.registerInterface_ header_
    GraphicsInterface.registerInterface_ header_
    jregisterMethod header_ "updateGL" (\() -> updateGL_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "setOrthoginalMode" (\() -> setOrthoginalMode_impl this)
    jregisterMethod header_ "setCameraMode" (\() -> setCameraMode_impl this)
    jregisterMethod header_ "getGlP" (\() -> getGlP_impl this)
    jregisterMethod header_ "setFontDebug" (\() -> setFontDebug_impl this)
    pure this

initFields_ :: OpenGLESGraphics -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.gl ((javaCast NullGL10.nULL_GL10 :: GL10.GL10))
    pure ()

new_ :: IO OpenGLESGraphics
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLESGraphics -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


updateGL :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
updateGL object_ a1 = jmethod object_ "updateGL" (\() -> (updateGL_impl (javaCast object_ :: OpenGLESGraphics))) () a1

updateGL_super :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
updateGL_super object_ a1 = (updateGL_impl (javaCast object_ :: OpenGLESGraphics)) a1

updateGL_impl :: OpenGLESGraphics -> GL.GL -> IO (())
updateGL_impl this gl = do
        pure ()


set :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: OpenGLESGraphics))) () a1

set_super :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: OpenGLESGraphics)) a1

set_impl :: OpenGLESGraphics -> GL.GL -> IO (())
set_impl this gl = do
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: OpenGLESGraphics))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: OpenGLESGraphics))

init_impl :: OpenGLESGraphics -> IO (())
init_impl this = do
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: OpenGLESGraphics))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: OpenGLESGraphics))

update_impl :: OpenGLESGraphics -> IO (())
update_impl this = do
        pure ()


setOrthoginalMode :: (JavaObjectClass this_) => this_ -> IO (())
setOrthoginalMode object_ = jmethod object_ "setOrthoginalMode" (\() -> (setOrthoginalMode_impl (javaCast object_ :: OpenGLESGraphics))) ()

setOrthoginalMode_super :: (JavaObjectClass this_) => this_ -> IO (())
setOrthoginalMode_super object_ = (setOrthoginalMode_impl (javaCast object_ :: OpenGLESGraphics))

setOrthoginalMode_impl :: OpenGLESGraphics -> IO (())
setOrthoginalMode_impl this = do
        pure ()


setCameraMode :: (JavaObjectClass this_) => this_ -> IO (())
setCameraMode object_ = jmethod object_ "setCameraMode" (\() -> (setCameraMode_impl (javaCast object_ :: OpenGLESGraphics))) ()

setCameraMode_super :: (JavaObjectClass this_) => this_ -> IO (())
setCameraMode_super object_ = (setCameraMode_impl (javaCast object_ :: OpenGLESGraphics))

setCameraMode_impl :: OpenGLESGraphics -> IO (())
setCameraMode_impl this = do
        pure ()


getGlP :: (JavaObjectClass this_) => this_ -> IO (GL10.GL10)
getGlP object_ = jmethod object_ "getGlP" (\() -> (getGlP_impl (javaCast object_ :: OpenGLESGraphics))) ()

getGlP_super :: (JavaObjectClass this_) => this_ -> IO (GL10.GL10)
getGlP_super object_ = (getGlP_impl (javaCast object_ :: OpenGLESGraphics))

getGlP_impl :: OpenGLESGraphics -> IO (GL10.GL10)
getGlP_impl this = do
        pure ((jget (this).gl))


setFontDebug :: (JavaObjectClass this_) => this_ -> Font.Font -> FontDebugBase.FontDebugBase -> IO (())
setFontDebug object_ a1 a2 = jmethod object_ "setFontDebug" (\() -> (setFontDebug_impl (javaCast object_ :: OpenGLESGraphics))) () a1 a2

setFontDebug_super :: (JavaObjectClass this_) => this_ -> Font.Font -> FontDebugBase.FontDebugBase -> IO (())
setFontDebug_super object_ a1 a2 = (setFontDebug_impl (javaCast object_ :: OpenGLESGraphics)) a1 a2

setFontDebug_impl :: OpenGLESGraphics -> Font.Font -> FontDebugBase.FontDebugBase -> IO (())
setFontDebug_impl this font fontDebug = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


