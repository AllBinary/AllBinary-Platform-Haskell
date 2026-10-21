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
-- package org.allbinary.opengles
module JOGL10 where

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
import qualified GL2 -- same package or java.lang
import qualified GL -- same package or java.lang
import qualified Buffer -- same package or java.lang
import qualified IntBuffer -- same package or java.lang
import qualified FloatBuffer -- same package or java.lang
import qualified GLU -- com.jogamp.opengl.glu.GLU
import qualified GL10

-- implements GL10
data JOGL10 = JOGL10
    { header_ :: JavaHeader
    , rED :: IORef (String)
    , gREEN :: IORef (String)
    , bLUE :: IORef (String)
    , aLPHA :: IORef (String)
    , pNAME :: IORef (String)
    , _PNAME :: IORef (String)
    , pARAM :: IORef (String)
    , pARAMS :: IORef (String)
    , lIGHT :: IORef (String)
    , fACE :: IORef (String)
    , tARGET :: IORef (String)
    , gl10 :: IORef (GL2.GL2)
    , glu :: IORef (GLU.GLU)
    , gL_LINE :: IORef (Int)
    , gL_QUAD_STRIP :: IORef (Int)
    }

instance JavaNull JOGL10 where
    javaNull = javaNullRecord "JOGL10"

instance JavaEquals JOGL10 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq JOGL10 where
    (==) = jrecordEquals

instance JavaObjectClass JOGL10 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO JOGL10
newRecord_ = do
    header_ <- newJavaHeader
    rED <- newIORef ""
    gREEN <- newIORef ""
    bLUE <- newIORef ""
    aLPHA <- newIORef ""
    pNAME <- newIORef ""
    _PNAME <- newIORef ""
    pARAM <- newIORef ""
    pARAMS <- newIORef ""
    lIGHT <- newIORef ""
    fACE <- newIORef ""
    tARGET <- newIORef ""
    gl10 <- newIORef javaNull
    glu <- newIORef javaNull
    gL_LINE <- newIORef 0
    gL_QUAD_STRIP <- newIORef 0
    let this = JOGL10 header_ rED gREEN bLUE aLPHA pNAME _PNAME pARAM pARAMS lIGHT fACE tARGET gl10 glu gL_LINE gL_QUAD_STRIP
    jregisterLevel header_ this
    GL10.registerInterface_ header_
    jregisterMethod header_ "getJOGLGL" (\() -> getJOGLGL_impl this)
    jregisterMethod header_ "glActiveTexture" (\() -> glActiveTexture_impl this)
    jregisterMethod header_ "glAlphaFunc" (\() -> glAlphaFunc_impl this)
    jregisterMethod header_ "glBindTexture" (\() -> glBindTexture_impl this)
    jregisterMethod header_ "glBlendFunc" (\() -> glBlendFunc_impl this)
    jregisterMethod header_ "glClear" (\() -> glClear_impl this)
    jregisterMethod header_ "glClearColor" (\() -> glClearColor_impl this)
    jregisterMethod header_ "glClearDepthf" (\() -> glClearDepthf_impl this)
    jregisterMethod header_ "glClearStencil" (\() -> glClearStencil_impl this)
    jregisterMethod header_ "glClientActiveTexture" (\() -> glClientActiveTexture_impl this)
    jregisterMethod header_ "glColor4f" (\() -> glColor4f_impl this)
    jregisterMethod header_ "glColorMask" (\() -> glColorMask_impl this)
    jregisterMethod header_ "glColorPointer" (\() -> glColorPointer_impl this)
    jregisterMethod header_ "glCompressedTexImage2D" (\() -> glCompressedTexImage2D_impl this)
    jregisterMethod header_ "glCompressedTexSubImage2D" (\() -> glCompressedTexSubImage2D_impl this)
    jregisterMethod header_ "glCopyTexImage2D" (\() -> glCopyTexImage2D_impl this)
    jregisterMethod header_ "glCopyTexSubImage2D" (\() -> glCopyTexSubImage2D_impl this)
    jregisterMethod header_ "glCullFace" (\() -> glCullFace_impl this)
    jregisterMethod header_ "glDeleteTextures" (\() -> glDeleteTextures_impl this)
    jregisterMethod header_ "glDeleteTextures" (\() -> glDeleteTextures_impl this)
    jregisterMethod header_ "glDepthFunc" (\() -> glDepthFunc_impl this)
    jregisterMethod header_ "glDepthMask" (\() -> glDepthMask_impl this)
    jregisterMethod header_ "glDepthRangef" (\() -> glDepthRangef_impl this)
    jregisterMethod header_ "glDisable" (\() -> glDisable_impl this)
    jregisterMethod header_ "glDisableClientState" (\() -> glDisableClientState_impl this)
    jregisterMethod header_ "glDrawArrays" (\() -> glDrawArrays_impl this)
    jregisterMethod header_ "glDrawElements" (\() -> glDrawElements_impl this)
    jregisterMethod header_ "glEnable" (\() -> glEnable_impl this)
    jregisterMethod header_ "glEnableClientState" (\() -> glEnableClientState_impl this)
    jregisterMethod header_ "glFinish" (\() -> glFinish_impl this)
    jregisterMethod header_ "glFlush" (\() -> glFlush_impl this)
    jregisterMethod header_ "glFogf" (\() -> glFogf_impl this)
    jregisterMethod header_ "glFogfv" (\() -> glFogfv_impl this)
    jregisterMethod header_ "glFogfv" (\() -> glFogfv_impl this)
    jregisterMethod header_ "glFrontFace" (\() -> glFrontFace_impl this)
    jregisterMethod header_ "glFrustumf" (\() -> glFrustumf_impl this)
    jregisterMethod header_ "glGenTextures" (\() -> glGenTextures_impl this)
    jregisterMethod header_ "glGenTextures" (\() -> glGenTextures_impl this)
    jregisterMethod header_ "glGetError" (\() -> glGetError_impl this)
    jregisterMethod header_ "glGetIntegerv" (\() -> glGetIntegerv_impl this)
    jregisterMethod header_ "glGetIntegerv" (\() -> glGetIntegerv_impl this)
    jregisterMethod header_ "glGetString" (\() -> glGetString_impl this)
    jregisterMethod header_ "glHint" (\() -> glHint_impl this)
    jregisterMethod header_ "glLightModelf" (\() -> glLightModelf_impl this)
    jregisterMethod header_ "glLightModelfv" (\() -> glLightModelfv_impl this)
    jregisterMethod header_ "glLightModelfv" (\() -> glLightModelfv_impl this)
    jregisterMethod header_ "glLightf" (\() -> glLightf_impl this)
    jregisterMethod header_ "glLightfv" (\() -> glLightfv_impl this)
    jregisterMethod header_ "glLightfv" (\() -> glLightfv_impl this)
    jregisterMethod header_ "glLineWidth" (\() -> glLineWidth_impl this)
    jregisterMethod header_ "glLoadIdentity" (\() -> glLoadIdentity_impl this)
    jregisterMethod header_ "glLoadMatrixf" (\() -> glLoadMatrixf_impl this)
    jregisterMethod header_ "glLoadMatrixf" (\() -> glLoadMatrixf_impl this)
    jregisterMethod header_ "glLogicOp" (\() -> glLogicOp_impl this)
    jregisterMethod header_ "glMaterialf" (\() -> glMaterialf_impl this)
    jregisterMethod header_ "glMaterialfv" (\() -> glMaterialfv_impl this)
    jregisterMethod header_ "glMaterialfv" (\() -> glMaterialfv_impl this)
    jregisterMethod header_ "glMatrixMode" (\() -> glMatrixMode_impl this)
    jregisterMethod header_ "glMultMatrixf" (\() -> glMultMatrixf_impl this)
    jregisterMethod header_ "glMultMatrixf" (\() -> glMultMatrixf_impl this)
    jregisterMethod header_ "glMultiTexCoord4f" (\() -> glMultiTexCoord4f_impl this)
    jregisterMethod header_ "glNormal3f" (\() -> glNormal3f_impl this)
    jregisterMethod header_ "glNormalPointer" (\() -> glNormalPointer_impl this)
    jregisterMethod header_ "glOrthof" (\() -> glOrthof_impl this)
    jregisterMethod header_ "glPixelStorei" (\() -> glPixelStorei_impl this)
    jregisterMethod header_ "glPointSize" (\() -> glPointSize_impl this)
    jregisterMethod header_ "glPolygonOffset" (\() -> glPolygonOffset_impl this)
    jregisterMethod header_ "glPopMatrix" (\() -> glPopMatrix_impl this)
    jregisterMethod header_ "glPushMatrix" (\() -> glPushMatrix_impl this)
    jregisterMethod header_ "glReadPixels" (\() -> glReadPixels_impl this)
    jregisterMethod header_ "glRotatef" (\() -> glRotatef_impl this)
    jregisterMethod header_ "glRotatex" (\() -> glRotatex_impl this)
    jregisterMethod header_ "glSampleCoverage" (\() -> glSampleCoverage_impl this)
    jregisterMethod header_ "glScalef" (\() -> glScalef_impl this)
    jregisterMethod header_ "glScalex" (\() -> glScalex_impl this)
    jregisterMethod header_ "glScissor" (\() -> glScissor_impl this)
    jregisterMethod header_ "glShadeModel" (\() -> glShadeModel_impl this)
    jregisterMethod header_ "glStencilFunc" (\() -> glStencilFunc_impl this)
    jregisterMethod header_ "glStencilMask" (\() -> glStencilMask_impl this)
    jregisterMethod header_ "glStencilOp" (\() -> glStencilOp_impl this)
    jregisterMethod header_ "glTexCoordPointer" (\() -> glTexCoordPointer_impl this)
    jregisterMethod header_ "glTexEnvf" (\() -> glTexEnvf_impl this)
    jregisterMethod header_ "glTexEnvfv" (\() -> glTexEnvfv_impl this)
    jregisterMethod header_ "glTexEnvfv" (\() -> glTexEnvfv_impl this)
    jregisterMethod header_ "glTexImage2D" (\() -> glTexImage2D_impl this)
    jregisterMethod header_ "glTexParameterf" (\() -> glTexParameterf_impl this)
    jregisterMethod header_ "glTexParameteri" (\() -> glTexParameteri_impl this)
    jregisterMethod header_ "glTexSubImage2D" (\() -> glTexSubImage2D_impl this)
    jregisterMethod header_ "glTranslatef" (\() -> glTranslatef_impl this)
    jregisterMethod header_ "glVertexPointer" (\() -> glVertexPointer_impl this)
    jregisterMethod header_ "glViewport" (\() -> glViewport_impl this)
    jregisterMethod header_ "glBegin" (\() -> glBegin_impl this)
    jregisterMethod header_ "glEnd" (\() -> glEnd_impl this)
    jregisterMethod header_ "glVertex3f" (\() -> glVertex3f_impl this)
    jregisterMethod header_ "glPolygonMode" (\() -> glPolygonMode_impl this)
    pure this

initFields_ :: JOGL10 -> IO ()
initFields_ this = do
    jset this.rED ("red: ")
    jset this.gREEN (" green: ")
    jset this.bLUE (" blue: ")
    jset this.aLPHA (" alpha: ")
    jset this.pNAME ("pname: ")
    jset this._PNAME (" pname: ")
    jset this.pARAM (" param: ")
    jset this.pARAMS (" params: ")
    jset this.lIGHT ("light: ")
    jset this.fACE ("face: ")
    jset this.tARGET ("target: ")
    jset this.gl10 (javaNull)
    jset this.glu (javaNull)
    jset this.gL_LINE (0)
    jset this.gL_QUAD_STRIP (0)
    pure ()

new_2 :: GL.GL -> GL2.GL2 -> IO JOGL10
new_2 gl gl2 = do
    this <- newRecord_
    init_2 this gl gl2
    pure this

init_2 :: JOGL10 -> GL.GL -> GL2.GL2 -> IO ()
init_2 this gl gl2 = do
        initFields_ this
        jset (this).gl10 (gl2)
        assignedValue <- (GLU.createGLU (jget (this).gl10))
        jset (this).glu (assignedValue)
        jset (this).gL_LINE ((jget ((jget ((jget (com.jogamp).opengl)).gL2)).gL_LINE))
        jset (this).gL_QUAD_STRIP ((jget ((jget ((jget (com.jogamp).opengl)).gL2)).gL_QUAD_STRIP))
        pure ()


getJOGLGL :: (JavaObjectClass this_) => this_ -> IO (GL2.GL2)
getJOGLGL object_ = jmethod object_ "getJOGLGL" (\() -> (getJOGLGL_impl (javaCast object_ :: JOGL10))) ()

getJOGLGL_super :: (JavaObjectClass this_) => this_ -> IO (GL2.GL2)
getJOGLGL_super object_ = (getJOGLGL_impl (javaCast object_ :: JOGL10))

getJOGLGL_impl :: JOGL10 -> IO (GL2.GL2)
getJOGLGL_impl this = do
        pure ((jget (this).gl10))


glActiveTexture :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glActiveTexture object_ a1 = jmethod object_ "glActiveTexture" (\() -> (glActiveTexture_impl (javaCast object_ :: JOGL10))) () a1

glActiveTexture_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glActiveTexture_super object_ a1 = (glActiveTexture_impl (javaCast object_ :: JOGL10)) a1

glActiveTexture_impl :: JOGL10 -> Int -> IO (())
glActiveTexture_impl this texture = do
        Control.Monad.void (GL2.glActiveTexture ((jget (this).gl10)) texture)
        pure ()


glAlphaFunc :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glAlphaFunc object_ a1 a2 = jmethod object_ "glAlphaFunc" (\() -> (glAlphaFunc_impl (javaCast object_ :: JOGL10))) () a1 a2

glAlphaFunc_super :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glAlphaFunc_super object_ a1 a2 = (glAlphaFunc_impl (javaCast object_ :: JOGL10)) a1 a2

glAlphaFunc_impl :: JOGL10 -> Int -> Float -> IO (())
glAlphaFunc_impl this func ref = do
        Control.Monad.void (GL2.glAlphaFunc ((jget (this).gl10)) func ref)
        pure ()


glBindTexture :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glBindTexture object_ a1 a2 = jmethod object_ "glBindTexture" (\() -> (glBindTexture_impl (javaCast object_ :: JOGL10))) () a1 a2

glBindTexture_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glBindTexture_super object_ a1 a2 = (glBindTexture_impl (javaCast object_ :: JOGL10)) a1 a2

glBindTexture_impl :: JOGL10 -> Int -> Int -> IO (())
glBindTexture_impl this target texture = do
        Control.Monad.void (GL2.glBindTexture ((jget (this).gl10)) target texture)
        pure ()


glBlendFunc :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glBlendFunc object_ a1 a2 = jmethod object_ "glBlendFunc" (\() -> (glBlendFunc_impl (javaCast object_ :: JOGL10))) () a1 a2

glBlendFunc_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glBlendFunc_super object_ a1 a2 = (glBlendFunc_impl (javaCast object_ :: JOGL10)) a1 a2

glBlendFunc_impl :: JOGL10 -> Int -> Int -> IO (())
glBlendFunc_impl this sfactor dfactor = do
        Control.Monad.void (GL2.glBlendFunc ((jget (this).gl10)) sfactor dfactor)
        pure ()


glClear :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClear object_ a1 = jmethod object_ "glClear" (\() -> (glClear_impl (javaCast object_ :: JOGL10))) () a1

glClear_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClear_super object_ a1 = (glClear_impl (javaCast object_ :: JOGL10)) a1

glClear_impl :: JOGL10 -> Int -> IO (())
glClear_impl this mask = do
        Control.Monad.void (GL2.glClear ((jget (this).gl10)) mask)
        pure ()


glClearColor :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (())
glClearColor object_ a1 a2 a3 a4 = jmethod object_ "glClearColor" (\() -> (glClearColor_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4

glClearColor_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (())
glClearColor_super object_ a1 a2 a3 a4 = (glClearColor_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4

glClearColor_impl :: JOGL10 -> Float -> Float -> Float -> Float -> IO (())
glClearColor_impl this red green blue alpha = do
        Control.Monad.void (GL2.glClearColor ((jget (this).gl10)) red green blue alpha)
        pure ()


glClearDepthf :: (JavaObjectClass this_) => this_ -> Float -> IO (())
glClearDepthf object_ a1 = jmethod object_ "glClearDepthf" (\() -> (glClearDepthf_impl (javaCast object_ :: JOGL10))) () a1

glClearDepthf_super :: (JavaObjectClass this_) => this_ -> Float -> IO (())
glClearDepthf_super object_ a1 = (glClearDepthf_impl (javaCast object_ :: JOGL10)) a1

glClearDepthf_impl :: JOGL10 -> Float -> IO (())
glClearDepthf_impl this depth = do
        Control.Monad.void (GL2.glClearDepthf ((jget (this).gl10)) depth)
        pure ()


glClearStencil :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClearStencil object_ a1 = jmethod object_ "glClearStencil" (\() -> (glClearStencil_impl (javaCast object_ :: JOGL10))) () a1

glClearStencil_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClearStencil_super object_ a1 = (glClearStencil_impl (javaCast object_ :: JOGL10)) a1

glClearStencil_impl :: JOGL10 -> Int -> IO (())
glClearStencil_impl this s = do
        Control.Monad.void (GL2.glClearStencil ((jget (this).gl10)) s)
        pure ()


glClientActiveTexture :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClientActiveTexture object_ a1 = jmethod object_ "glClientActiveTexture" (\() -> (glClientActiveTexture_impl (javaCast object_ :: JOGL10))) () a1

glClientActiveTexture_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClientActiveTexture_super object_ a1 = (glClientActiveTexture_impl (javaCast object_ :: JOGL10)) a1

glClientActiveTexture_impl :: JOGL10 -> Int -> IO (())
glClientActiveTexture_impl this texture = do
        Control.Monad.void (GL2.glClientActiveTexture ((jget (this).gl10)) texture)
        pure ()


glColor4f :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (())
glColor4f object_ a1 a2 a3 a4 = jmethod object_ "glColor4f" (\() -> (glColor4f_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4

glColor4f_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (())
glColor4f_super object_ a1 a2 a3 a4 = (glColor4f_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4

glColor4f_impl :: JOGL10 -> Float -> Float -> Float -> Float -> IO (())
glColor4f_impl this red green blue alpha = do
        Control.Monad.void (GL2.glColor4f ((jget (this).gl10)) red green blue alpha)
        pure ()


glColorMask :: (JavaObjectClass this_) => this_ -> Bool -> Bool -> Bool -> Bool -> IO (())
glColorMask object_ a1 a2 a3 a4 = jmethod object_ "glColorMask" (\() -> (glColorMask_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4

glColorMask_super :: (JavaObjectClass this_) => this_ -> Bool -> Bool -> Bool -> Bool -> IO (())
glColorMask_super object_ a1 a2 a3 a4 = (glColorMask_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4

glColorMask_impl :: JOGL10 -> Bool -> Bool -> Bool -> Bool -> IO (())
glColorMask_impl this red green blue alpha = do
        Control.Monad.void (GL2.glColorMask ((jget (this).gl10)) red green blue alpha)
        pure ()


glColorPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glColorPointer object_ a1 a2 a3 a4 = jmethod object_ "glColorPointer" (\() -> (glColorPointer_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4

glColorPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glColorPointer_super object_ a1 a2 a3 a4 = (glColorPointer_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4

glColorPointer_impl :: JOGL10 -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glColorPointer_impl this size type_ stride pointer = do
        Control.Monad.void (GL2.glColorPointer ((jget (this).gl10)) size type_ stride pointer)
        pure ()


glCompressedTexImage2D :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glCompressedTexImage2D object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "glCompressedTexImage2D" (\() -> (glCompressedTexImage2D_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4 a5 a6 a7 a8

glCompressedTexImage2D_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glCompressedTexImage2D_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (glCompressedTexImage2D_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4 a5 a6 a7 a8

glCompressedTexImage2D_impl :: JOGL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glCompressedTexImage2D_impl this target level internalformat width height border imageSize data_ = do
        Control.Monad.void (GL2.glCompressedTexImage2D ((jget (this).gl10)) target level internalformat width height border imageSize data_)
        pure ()


glCompressedTexSubImage2D :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glCompressedTexSubImage2D object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = jmethod object_ "glCompressedTexSubImage2D" (\() -> (glCompressedTexSubImage2D_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4 a5 a6 a7 a8 a9

glCompressedTexSubImage2D_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glCompressedTexSubImage2D_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = (glCompressedTexSubImage2D_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4 a5 a6 a7 a8 a9

glCompressedTexSubImage2D_impl :: JOGL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glCompressedTexSubImage2D_impl this target level xoffset yoffset width height format imageSize data_ = do
        Control.Monad.void (GL2.glCompressedTexSubImage2D ((jget (this).gl10)) target level xoffset yoffset width height format imageSize data_)
        pure ()


glCopyTexImage2D :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glCopyTexImage2D object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "glCopyTexImage2D" (\() -> (glCopyTexImage2D_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4 a5 a6 a7 a8

glCopyTexImage2D_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glCopyTexImage2D_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (glCopyTexImage2D_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4 a5 a6 a7 a8

glCopyTexImage2D_impl :: JOGL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glCopyTexImage2D_impl this target level internalformat x y width height border = do
        Control.Monad.void (GL2.glCopyTexImage2D ((jget (this).gl10)) target level internalformat x y width height border)
        pure ()


glCopyTexSubImage2D :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glCopyTexSubImage2D object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "glCopyTexSubImage2D" (\() -> (glCopyTexSubImage2D_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4 a5 a6 a7 a8

glCopyTexSubImage2D_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glCopyTexSubImage2D_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (glCopyTexSubImage2D_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4 a5 a6 a7 a8

glCopyTexSubImage2D_impl :: JOGL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glCopyTexSubImage2D_impl this target level xoffset yoffset x y width height = do
        Control.Monad.void (GL2.glCopyTexSubImage2D ((jget (this).gl10)) target level xoffset yoffset x y width height)
        pure ()


glCullFace :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glCullFace object_ a1 = jmethod object_ "glCullFace" (\() -> (glCullFace_impl (javaCast object_ :: JOGL10))) () a1

glCullFace_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glCullFace_super object_ a1 = (glCullFace_impl (javaCast object_ :: JOGL10)) a1

glCullFace_impl :: JOGL10 -> Int -> IO (())
glCullFace_impl this mode = do
        Control.Monad.void (GL2.glCullFace ((jget (this).gl10)) mode)
        pure ()


glDeleteTextures :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glDeleteTextures object_ a1 a2 a3 = jmethod object_ "glDeleteTextures" (\() -> (glDeleteTextures_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glDeleteTextures_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glDeleteTextures_super object_ a1 a2 a3 = (glDeleteTextures_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glDeleteTextures_impl :: JOGL10 -> Int -> JavaArray (Int) -> Int -> IO (())
glDeleteTextures_impl this n textures offset = do
        Control.Monad.void (GL2.glDeleteTextures ((jget (this).gl10)) n textures offset)
        pure ()


-- Java overload of glDeleteTextures with a different parameter count: give it a different name
glDeleteTextures :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glDeleteTextures object_ a1 a2 = jmethod object_ "glDeleteTextures" (\() -> (glDeleteTextures_impl (javaCast object_ :: JOGL10))) () a1 a2

glDeleteTextures_super :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glDeleteTextures_super object_ a1 a2 = (glDeleteTextures_impl (javaCast object_ :: JOGL10)) a1 a2

glDeleteTextures_impl :: JOGL10 -> Int -> IntBuffer.IntBuffer -> IO (())
glDeleteTextures_impl this n textures = do
        Control.Monad.void (GL2.glDeleteTextures ((jget (this).gl10)) n textures)
        pure ()


glDepthFunc :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glDepthFunc object_ a1 = jmethod object_ "glDepthFunc" (\() -> (glDepthFunc_impl (javaCast object_ :: JOGL10))) () a1

glDepthFunc_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glDepthFunc_super object_ a1 = (glDepthFunc_impl (javaCast object_ :: JOGL10)) a1

glDepthFunc_impl :: JOGL10 -> Int -> IO (())
glDepthFunc_impl this func = do
        Control.Monad.void (GL2.glDepthFunc ((jget (this).gl10)) func)
        pure ()


glDepthMask :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
glDepthMask object_ a1 = jmethod object_ "glDepthMask" (\() -> (glDepthMask_impl (javaCast object_ :: JOGL10))) () a1

glDepthMask_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
glDepthMask_super object_ a1 = (glDepthMask_impl (javaCast object_ :: JOGL10)) a1

glDepthMask_impl :: JOGL10 -> Bool -> IO (())
glDepthMask_impl this flag = do
        Control.Monad.void (GL2.glDepthMask ((jget (this).gl10)) flag)
        pure ()


glDepthRangef :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
glDepthRangef object_ a1 a2 = jmethod object_ "glDepthRangef" (\() -> (glDepthRangef_impl (javaCast object_ :: JOGL10))) () a1 a2

glDepthRangef_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
glDepthRangef_super object_ a1 a2 = (glDepthRangef_impl (javaCast object_ :: JOGL10)) a1 a2

glDepthRangef_impl :: JOGL10 -> Float -> Float -> IO (())
glDepthRangef_impl this zNear zFar = do
        Control.Monad.void (GL2.glDepthRangef ((jget (this).gl10)) zNear zFar)
        pure ()


glDisable :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glDisable object_ a1 = jmethod object_ "glDisable" (\() -> (glDisable_impl (javaCast object_ :: JOGL10))) () a1

glDisable_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glDisable_super object_ a1 = (glDisable_impl (javaCast object_ :: JOGL10)) a1

glDisable_impl :: JOGL10 -> Int -> IO (())
glDisable_impl this cap = do
        Control.Monad.void (GL2.glDisable ((jget (this).gl10)) cap)
        pure ()


glDisableClientState :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glDisableClientState object_ a1 = jmethod object_ "glDisableClientState" (\() -> (glDisableClientState_impl (javaCast object_ :: JOGL10))) () a1

glDisableClientState_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glDisableClientState_super object_ a1 = (glDisableClientState_impl (javaCast object_ :: JOGL10)) a1

glDisableClientState_impl :: JOGL10 -> Int -> IO (())
glDisableClientState_impl this array = do
        Control.Monad.void (GL2.glDisableClientState ((jget (this).gl10)) array)
        pure ()


glDrawArrays :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glDrawArrays object_ a1 a2 a3 = jmethod object_ "glDrawArrays" (\() -> (glDrawArrays_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glDrawArrays_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glDrawArrays_super object_ a1 a2 a3 = (glDrawArrays_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glDrawArrays_impl :: JOGL10 -> Int -> Int -> Int -> IO (())
glDrawArrays_impl this mode first count = do
        Control.Monad.void (GL2.glDrawArrays ((jget (this).gl10)) mode first count)
        pure ()


glDrawElements :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glDrawElements object_ a1 a2 a3 a4 = jmethod object_ "glDrawElements" (\() -> (glDrawElements_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4

glDrawElements_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glDrawElements_super object_ a1 a2 a3 a4 = (glDrawElements_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4

glDrawElements_impl :: JOGL10 -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glDrawElements_impl this mode count type_ indices = do
        Control.Monad.void (GL2.glDrawElements ((jget (this).gl10)) mode count type_ indices)
        pure ()


glEnable :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glEnable object_ a1 = jmethod object_ "glEnable" (\() -> (glEnable_impl (javaCast object_ :: JOGL10))) () a1

glEnable_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glEnable_super object_ a1 = (glEnable_impl (javaCast object_ :: JOGL10)) a1

glEnable_impl :: JOGL10 -> Int -> IO (())
glEnable_impl this cap = do
        Control.Monad.void (GL2.glEnable ((jget (this).gl10)) cap)
        pure ()


glEnableClientState :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glEnableClientState object_ a1 = jmethod object_ "glEnableClientState" (\() -> (glEnableClientState_impl (javaCast object_ :: JOGL10))) () a1

glEnableClientState_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glEnableClientState_super object_ a1 = (glEnableClientState_impl (javaCast object_ :: JOGL10)) a1

glEnableClientState_impl :: JOGL10 -> Int -> IO (())
glEnableClientState_impl this array = do
        Control.Monad.void (GL2.glEnableClientState ((jget (this).gl10)) array)
        pure ()


glFinish :: (JavaObjectClass this_) => this_ -> IO (())
glFinish object_ = jmethod object_ "glFinish" (\() -> (glFinish_impl (javaCast object_ :: JOGL10))) ()

glFinish_super :: (JavaObjectClass this_) => this_ -> IO (())
glFinish_super object_ = (glFinish_impl (javaCast object_ :: JOGL10))

glFinish_impl :: JOGL10 -> IO (())
glFinish_impl this = do
        Control.Monad.void (GL2.glFinish ((jget (this).gl10)))
        pure ()


glFlush :: (JavaObjectClass this_) => this_ -> IO (())
glFlush object_ = jmethod object_ "glFlush" (\() -> (glFlush_impl (javaCast object_ :: JOGL10))) ()

glFlush_super :: (JavaObjectClass this_) => this_ -> IO (())
glFlush_super object_ = (glFlush_impl (javaCast object_ :: JOGL10))

glFlush_impl :: JOGL10 -> IO (())
glFlush_impl this = do
        Control.Monad.void (GL2.glFlush ((jget (this).gl10)))
        pure ()


glFogf :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glFogf object_ a1 a2 = jmethod object_ "glFogf" (\() -> (glFogf_impl (javaCast object_ :: JOGL10))) () a1 a2

glFogf_super :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glFogf_super object_ a1 a2 = (glFogf_impl (javaCast object_ :: JOGL10)) a1 a2

glFogf_impl :: JOGL10 -> Int -> Float -> IO (())
glFogf_impl this pname param = do
        Control.Monad.void (GL2.glFogf ((jget (this).gl10)) pname param)
        pure ()


glFogfv :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glFogfv object_ a1 a2 a3 = jmethod object_ "glFogfv" (\() -> (glFogfv_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glFogfv_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glFogfv_super object_ a1 a2 a3 = (glFogfv_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glFogfv_impl :: JOGL10 -> Int -> JavaArray (Float) -> Int -> IO (())
glFogfv_impl this pname params offset = do
        Control.Monad.void (GL2.glFogfv ((jget (this).gl10)) pname params offset)
        pure ()


-- Java overload of glFogfv with a different parameter count: give it a different name
glFogfv :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glFogfv object_ a1 a2 = jmethod object_ "glFogfv" (\() -> (glFogfv_impl (javaCast object_ :: JOGL10))) () a1 a2

glFogfv_super :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glFogfv_super object_ a1 a2 = (glFogfv_impl (javaCast object_ :: JOGL10)) a1 a2

glFogfv_impl :: JOGL10 -> Int -> FloatBuffer.FloatBuffer -> IO (())
glFogfv_impl this pname params = do
        Control.Monad.void (GL2.glFogfv ((jget (this).gl10)) pname params)
        pure ()


glFrontFace :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glFrontFace object_ a1 = jmethod object_ "glFrontFace" (\() -> (glFrontFace_impl (javaCast object_ :: JOGL10))) () a1

glFrontFace_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glFrontFace_super object_ a1 = (glFrontFace_impl (javaCast object_ :: JOGL10)) a1

glFrontFace_impl :: JOGL10 -> Int -> IO (())
glFrontFace_impl this mode = do
        Control.Monad.void (GL2.glFrontFace ((jget (this).gl10)) mode)
        pure ()


glFrustumf :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glFrustumf object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "glFrustumf" (\() -> (glFrustumf_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4 a5 a6

glFrustumf_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glFrustumf_super object_ a1 a2 a3 a4 a5 a6 = (glFrustumf_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4 a5 a6

glFrustumf_impl :: JOGL10 -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glFrustumf_impl this left right bottom top zNear zFar = do
        Control.Monad.void (GL2.glFrustumf ((jget (this).gl10)) left right bottom top zNear zFar)
        pure ()


glGenTextures :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glGenTextures object_ a1 a2 a3 = jmethod object_ "glGenTextures" (\() -> (glGenTextures_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glGenTextures_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glGenTextures_super object_ a1 a2 a3 = (glGenTextures_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glGenTextures_impl :: JOGL10 -> Int -> JavaArray (Int) -> Int -> IO (())
glGenTextures_impl this n textures offset = do
        Control.Monad.void (GL2.glGenTextures ((jget (this).gl10)) n textures offset)
        pure ()


-- Java overload of glGenTextures with a different parameter count: give it a different name
glGenTextures :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glGenTextures object_ a1 a2 = jmethod object_ "glGenTextures" (\() -> (glGenTextures_impl (javaCast object_ :: JOGL10))) () a1 a2

glGenTextures_super :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glGenTextures_super object_ a1 a2 = (glGenTextures_impl (javaCast object_ :: JOGL10)) a1 a2

glGenTextures_impl :: JOGL10 -> Int -> IntBuffer.IntBuffer -> IO (())
glGenTextures_impl this n textures = do
        Control.Monad.void (GL2.glGenTextures ((jget (this).gl10)) n textures)
        pure ()


glGetError :: (JavaObjectClass this_) => this_ -> IO (Int)
glGetError object_ = jmethod object_ "glGetError" (\() -> (glGetError_impl (javaCast object_ :: JOGL10))) ()

glGetError_super :: (JavaObjectClass this_) => this_ -> IO (Int)
glGetError_super object_ = (glGetError_impl (javaCast object_ :: JOGL10))

glGetError_impl :: JOGL10 -> IO (Int)
glGetError_impl this = do
        (GL2.glGetError ((jget (this).gl10)))


glGetIntegerv :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glGetIntegerv object_ a1 a2 a3 = jmethod object_ "glGetIntegerv" (\() -> (glGetIntegerv_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glGetIntegerv_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glGetIntegerv_super object_ a1 a2 a3 = (glGetIntegerv_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glGetIntegerv_impl :: JOGL10 -> Int -> JavaArray (Int) -> Int -> IO (())
glGetIntegerv_impl this pname params offset = do
        Control.Monad.void (GL2.glGetIntegerv ((jget (this).gl10)) pname params offset)
        pure ()


-- Java overload of glGetIntegerv with a different parameter count: give it a different name
glGetIntegerv :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glGetIntegerv object_ a1 a2 = jmethod object_ "glGetIntegerv" (\() -> (glGetIntegerv_impl (javaCast object_ :: JOGL10))) () a1 a2

glGetIntegerv_super :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glGetIntegerv_super object_ a1 a2 = (glGetIntegerv_impl (javaCast object_ :: JOGL10)) a1 a2

glGetIntegerv_impl :: JOGL10 -> Int -> IntBuffer.IntBuffer -> IO (())
glGetIntegerv_impl this pname params = do
        Control.Monad.void (GL2.glGetIntegerv ((jget (this).gl10)) pname params)
        pure ()


glGetString :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
glGetString object_ a1 = jmethod object_ "glGetString" (\() -> (glGetString_impl (javaCast object_ :: JOGL10))) () a1

glGetString_super :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
glGetString_super object_ a1 = (glGetString_impl (javaCast object_ :: JOGL10)) a1

glGetString_impl :: JOGL10 -> Int -> IO (String)
glGetString_impl this name = do
        (GL2.glGetString ((jget (this).gl10)) name)


glHint :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glHint object_ a1 a2 = jmethod object_ "glHint" (\() -> (glHint_impl (javaCast object_ :: JOGL10))) () a1 a2

glHint_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glHint_super object_ a1 a2 = (glHint_impl (javaCast object_ :: JOGL10)) a1 a2

glHint_impl :: JOGL10 -> Int -> Int -> IO (())
glHint_impl this target mode = do
        Control.Monad.void (GL2.glHint ((jget (this).gl10)) target mode)
        pure ()


glLightModelf :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glLightModelf object_ a1 a2 = jmethod object_ "glLightModelf" (\() -> (glLightModelf_impl (javaCast object_ :: JOGL10))) () a1 a2

glLightModelf_super :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glLightModelf_super object_ a1 a2 = (glLightModelf_impl (javaCast object_ :: JOGL10)) a1 a2

glLightModelf_impl :: JOGL10 -> Int -> Float -> IO (())
glLightModelf_impl this pname param = do
        Control.Monad.void (GL2.glLightModelf ((jget (this).gl10)) pname param)
        pure ()


glLightModelfv :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glLightModelfv object_ a1 a2 a3 = jmethod object_ "glLightModelfv" (\() -> (glLightModelfv_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glLightModelfv_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glLightModelfv_super object_ a1 a2 a3 = (glLightModelfv_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glLightModelfv_impl :: JOGL10 -> Int -> JavaArray (Float) -> Int -> IO (())
glLightModelfv_impl this pname params offset = do
        Control.Monad.void (GL2.glLightModelfv ((jget (this).gl10)) pname params offset)
        pure ()


-- Java overload of glLightModelfv with a different parameter count: give it a different name
glLightModelfv :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glLightModelfv object_ a1 a2 = jmethod object_ "glLightModelfv" (\() -> (glLightModelfv_impl (javaCast object_ :: JOGL10))) () a1 a2

glLightModelfv_super :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glLightModelfv_super object_ a1 a2 = (glLightModelfv_impl (javaCast object_ :: JOGL10)) a1 a2

glLightModelfv_impl :: JOGL10 -> Int -> FloatBuffer.FloatBuffer -> IO (())
glLightModelfv_impl this pname params = do
        Control.Monad.void (GL2.glLightModelfv ((jget (this).gl10)) pname params)
        pure ()


glLightf :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glLightf object_ a1 a2 a3 = jmethod object_ "glLightf" (\() -> (glLightf_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glLightf_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glLightf_super object_ a1 a2 a3 = (glLightf_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glLightf_impl :: JOGL10 -> Int -> Int -> Float -> IO (())
glLightf_impl this light pname param = do
        Control.Monad.void (GL2.glLightf ((jget (this).gl10)) light pname param)
        pure ()


glLightfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glLightfv object_ a1 a2 a3 a4 = jmethod object_ "glLightfv" (\() -> (glLightfv_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4

glLightfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glLightfv_super object_ a1 a2 a3 a4 = (glLightfv_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4

glLightfv_impl :: JOGL10 -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glLightfv_impl this light pname params offset = do
        Control.Monad.void (GL2.glLightfv ((jget (this).gl10)) light pname params offset)
        pure ()


-- Java overload of glLightfv with a different parameter count: give it a different name
glLightfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glLightfv object_ a1 a2 a3 = jmethod object_ "glLightfv" (\() -> (glLightfv_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glLightfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glLightfv_super object_ a1 a2 a3 = (glLightfv_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glLightfv_impl :: JOGL10 -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glLightfv_impl this light pname params = do
        Control.Monad.void (GL2.glLightfv ((jget (this).gl10)) light pname params)
        pure ()


glLineWidth :: (JavaObjectClass this_) => this_ -> Float -> IO (())
glLineWidth object_ a1 = jmethod object_ "glLineWidth" (\() -> (glLineWidth_impl (javaCast object_ :: JOGL10))) () a1

glLineWidth_super :: (JavaObjectClass this_) => this_ -> Float -> IO (())
glLineWidth_super object_ a1 = (glLineWidth_impl (javaCast object_ :: JOGL10)) a1

glLineWidth_impl :: JOGL10 -> Float -> IO (())
glLineWidth_impl this width = do
        Control.Monad.void (GL2.glLineWidth ((jget (this).gl10)) width)
        pure ()


glLoadIdentity :: (JavaObjectClass this_) => this_ -> IO (())
glLoadIdentity object_ = jmethod object_ "glLoadIdentity" (\() -> (glLoadIdentity_impl (javaCast object_ :: JOGL10))) ()

glLoadIdentity_super :: (JavaObjectClass this_) => this_ -> IO (())
glLoadIdentity_super object_ = (glLoadIdentity_impl (javaCast object_ :: JOGL10))

glLoadIdentity_impl :: JOGL10 -> IO (())
glLoadIdentity_impl this = do
        Control.Monad.void (GL2.glLoadIdentity ((jget (this).gl10)))
        pure ()


glLoadMatrixf :: (JavaObjectClass this_) => this_ -> JavaArray (Float) -> Int -> IO (())
glLoadMatrixf object_ a1 a2 = jmethod object_ "glLoadMatrixf" (\() -> (glLoadMatrixf_impl (javaCast object_ :: JOGL10))) () a1 a2

glLoadMatrixf_super :: (JavaObjectClass this_) => this_ -> JavaArray (Float) -> Int -> IO (())
glLoadMatrixf_super object_ a1 a2 = (glLoadMatrixf_impl (javaCast object_ :: JOGL10)) a1 a2

glLoadMatrixf_impl :: JOGL10 -> JavaArray (Float) -> Int -> IO (())
glLoadMatrixf_impl this m offset = do
        Control.Monad.void (GL2.glLoadMatrixf ((jget (this).gl10)) m offset)
        pure ()


-- Java overload of glLoadMatrixf with a different parameter count: give it a different name
glLoadMatrixf :: (JavaObjectClass this_) => this_ -> FloatBuffer.FloatBuffer -> IO (())
glLoadMatrixf object_ a1 = jmethod object_ "glLoadMatrixf" (\() -> (glLoadMatrixf_impl (javaCast object_ :: JOGL10))) () a1

glLoadMatrixf_super :: (JavaObjectClass this_) => this_ -> FloatBuffer.FloatBuffer -> IO (())
glLoadMatrixf_super object_ a1 = (glLoadMatrixf_impl (javaCast object_ :: JOGL10)) a1

glLoadMatrixf_impl :: JOGL10 -> FloatBuffer.FloatBuffer -> IO (())
glLoadMatrixf_impl this m = do
        Control.Monad.void (GL2.glLoadMatrixf ((jget (this).gl10)) m)
        pure ()


glLogicOp :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glLogicOp object_ a1 = jmethod object_ "glLogicOp" (\() -> (glLogicOp_impl (javaCast object_ :: JOGL10))) () a1

glLogicOp_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glLogicOp_super object_ a1 = (glLogicOp_impl (javaCast object_ :: JOGL10)) a1

glLogicOp_impl :: JOGL10 -> Int -> IO (())
glLogicOp_impl this opcode = do
        Control.Monad.void (GL2.glLogicOp ((jget (this).gl10)) opcode)
        pure ()


glMaterialf :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glMaterialf object_ a1 a2 a3 = jmethod object_ "glMaterialf" (\() -> (glMaterialf_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glMaterialf_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glMaterialf_super object_ a1 a2 a3 = (glMaterialf_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glMaterialf_impl :: JOGL10 -> Int -> Int -> Float -> IO (())
glMaterialf_impl this face pname param = do
        Control.Monad.void (GL2.glMaterialf ((jget (this).gl10)) face pname param)
        pure ()


glMaterialfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glMaterialfv object_ a1 a2 a3 a4 = jmethod object_ "glMaterialfv" (\() -> (glMaterialfv_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4

glMaterialfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glMaterialfv_super object_ a1 a2 a3 a4 = (glMaterialfv_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4

glMaterialfv_impl :: JOGL10 -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glMaterialfv_impl this face pname params offset = do
        Control.Monad.void (GL2.glMaterialfv ((jget (this).gl10)) face pname params offset)
        pure ()


-- Java overload of glMaterialfv with a different parameter count: give it a different name
glMaterialfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glMaterialfv object_ a1 a2 a3 = jmethod object_ "glMaterialfv" (\() -> (glMaterialfv_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glMaterialfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glMaterialfv_super object_ a1 a2 a3 = (glMaterialfv_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glMaterialfv_impl :: JOGL10 -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glMaterialfv_impl this face pname params = do
        Control.Monad.void (GL2.glMaterialfv ((jget (this).gl10)) face pname params)
        pure ()


glMatrixMode :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glMatrixMode object_ a1 = jmethod object_ "glMatrixMode" (\() -> (glMatrixMode_impl (javaCast object_ :: JOGL10))) () a1

glMatrixMode_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glMatrixMode_super object_ a1 = (glMatrixMode_impl (javaCast object_ :: JOGL10)) a1

glMatrixMode_impl :: JOGL10 -> Int -> IO (())
glMatrixMode_impl this mode = do
        Control.Monad.void (GL2.glMatrixMode ((jget (this).gl10)) mode)
        pure ()


glMultMatrixf :: (JavaObjectClass this_) => this_ -> JavaArray (Float) -> Int -> IO (())
glMultMatrixf object_ a1 a2 = jmethod object_ "glMultMatrixf" (\() -> (glMultMatrixf_impl (javaCast object_ :: JOGL10))) () a1 a2

glMultMatrixf_super :: (JavaObjectClass this_) => this_ -> JavaArray (Float) -> Int -> IO (())
glMultMatrixf_super object_ a1 a2 = (glMultMatrixf_impl (javaCast object_ :: JOGL10)) a1 a2

glMultMatrixf_impl :: JOGL10 -> JavaArray (Float) -> Int -> IO (())
glMultMatrixf_impl this m offset = do
        Control.Monad.void (GL2.glMultMatrixf ((jget (this).gl10)) m offset)
        pure ()


-- Java overload of glMultMatrixf with a different parameter count: give it a different name
glMultMatrixf :: (JavaObjectClass this_) => this_ -> FloatBuffer.FloatBuffer -> IO (())
glMultMatrixf object_ a1 = jmethod object_ "glMultMatrixf" (\() -> (glMultMatrixf_impl (javaCast object_ :: JOGL10))) () a1

glMultMatrixf_super :: (JavaObjectClass this_) => this_ -> FloatBuffer.FloatBuffer -> IO (())
glMultMatrixf_super object_ a1 = (glMultMatrixf_impl (javaCast object_ :: JOGL10)) a1

glMultMatrixf_impl :: JOGL10 -> FloatBuffer.FloatBuffer -> IO (())
glMultMatrixf_impl this m = do
        Control.Monad.void (GL2.glMultMatrixf ((jget (this).gl10)) m)
        pure ()


glMultiTexCoord4f :: (JavaObjectClass this_) => this_ -> Int -> Float -> Float -> Float -> Float -> IO (())
glMultiTexCoord4f object_ a1 a2 a3 a4 a5 = jmethod object_ "glMultiTexCoord4f" (\() -> (glMultiTexCoord4f_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4 a5

glMultiTexCoord4f_super :: (JavaObjectClass this_) => this_ -> Int -> Float -> Float -> Float -> Float -> IO (())
glMultiTexCoord4f_super object_ a1 a2 a3 a4 a5 = (glMultiTexCoord4f_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4 a5

glMultiTexCoord4f_impl :: JOGL10 -> Int -> Float -> Float -> Float -> Float -> IO (())
glMultiTexCoord4f_impl this target s t r q = do
        Control.Monad.void (GL2.glMultiTexCoord4f ((jget (this).gl10)) target s t r q)
        pure ()


glNormal3f :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glNormal3f object_ a1 a2 a3 = jmethod object_ "glNormal3f" (\() -> (glNormal3f_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glNormal3f_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glNormal3f_super object_ a1 a2 a3 = (glNormal3f_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glNormal3f_impl :: JOGL10 -> Float -> Float -> Float -> IO (())
glNormal3f_impl this nx ny nz = do
        Control.Monad.void (GL2.glNormal3f ((jget (this).gl10)) nx ny nz)
        pure ()


glNormalPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Buffer.Buffer -> IO (())
glNormalPointer object_ a1 a2 a3 = jmethod object_ "glNormalPointer" (\() -> (glNormalPointer_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glNormalPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Buffer.Buffer -> IO (())
glNormalPointer_super object_ a1 a2 a3 = (glNormalPointer_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glNormalPointer_impl :: JOGL10 -> Int -> Int -> Buffer.Buffer -> IO (())
glNormalPointer_impl this type_ stride pointer = do
        Control.Monad.void (GL2.glNormalPointer ((jget (this).gl10)) type_ stride pointer)
        pure ()


glOrthof :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glOrthof object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "glOrthof" (\() -> (glOrthof_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4 a5 a6

glOrthof_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glOrthof_super object_ a1 a2 a3 a4 a5 a6 = (glOrthof_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4 a5 a6

glOrthof_impl :: JOGL10 -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glOrthof_impl this left right bottom top zNear zFar = do
        Control.Monad.void (GL2.glOrthof ((jget (this).gl10)) left right bottom top zNear zFar)
        pure ()


glPixelStorei :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glPixelStorei object_ a1 a2 = jmethod object_ "glPixelStorei" (\() -> (glPixelStorei_impl (javaCast object_ :: JOGL10))) () a1 a2

glPixelStorei_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glPixelStorei_super object_ a1 a2 = (glPixelStorei_impl (javaCast object_ :: JOGL10)) a1 a2

glPixelStorei_impl :: JOGL10 -> Int -> Int -> IO (())
glPixelStorei_impl this pname param = do
        Control.Monad.void (GL2.glPixelStorei ((jget (this).gl10)) pname param)
        pure ()


glPointSize :: (JavaObjectClass this_) => this_ -> Float -> IO (())
glPointSize object_ a1 = jmethod object_ "glPointSize" (\() -> (glPointSize_impl (javaCast object_ :: JOGL10))) () a1

glPointSize_super :: (JavaObjectClass this_) => this_ -> Float -> IO (())
glPointSize_super object_ a1 = (glPointSize_impl (javaCast object_ :: JOGL10)) a1

glPointSize_impl :: JOGL10 -> Float -> IO (())
glPointSize_impl this size = do
        Control.Monad.void (GL2.glPointSize ((jget (this).gl10)) size)
        pure ()


glPolygonOffset :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
glPolygonOffset object_ a1 a2 = jmethod object_ "glPolygonOffset" (\() -> (glPolygonOffset_impl (javaCast object_ :: JOGL10))) () a1 a2

glPolygonOffset_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
glPolygonOffset_super object_ a1 a2 = (glPolygonOffset_impl (javaCast object_ :: JOGL10)) a1 a2

glPolygonOffset_impl :: JOGL10 -> Float -> Float -> IO (())
glPolygonOffset_impl this factor units = do
        Control.Monad.void (GL2.glPolygonOffset ((jget (this).gl10)) factor units)
        pure ()


glPopMatrix :: (JavaObjectClass this_) => this_ -> IO (())
glPopMatrix object_ = jmethod object_ "glPopMatrix" (\() -> (glPopMatrix_impl (javaCast object_ :: JOGL10))) ()

glPopMatrix_super :: (JavaObjectClass this_) => this_ -> IO (())
glPopMatrix_super object_ = (glPopMatrix_impl (javaCast object_ :: JOGL10))

glPopMatrix_impl :: JOGL10 -> IO (())
glPopMatrix_impl this = do
        Control.Monad.void (GL2.glPopMatrix ((jget (this).gl10)))
        pure ()


glPushMatrix :: (JavaObjectClass this_) => this_ -> IO (())
glPushMatrix object_ = jmethod object_ "glPushMatrix" (\() -> (glPushMatrix_impl (javaCast object_ :: JOGL10))) ()

glPushMatrix_super :: (JavaObjectClass this_) => this_ -> IO (())
glPushMatrix_super object_ = (glPushMatrix_impl (javaCast object_ :: JOGL10))

glPushMatrix_impl :: JOGL10 -> IO (())
glPushMatrix_impl this = do
        Control.Monad.void (GL2.glPushMatrix ((jget (this).gl10)))
        pure ()


glReadPixels :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glReadPixels object_ a1 a2 a3 a4 a5 a6 a7 = jmethod object_ "glReadPixels" (\() -> (glReadPixels_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4 a5 a6 a7

glReadPixels_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glReadPixels_super object_ a1 a2 a3 a4 a5 a6 a7 = (glReadPixels_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4 a5 a6 a7

glReadPixels_impl :: JOGL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glReadPixels_impl this x y width height format type_ pixels = do
        Control.Monad.void (GL2.glReadPixels ((jget (this).gl10)) x y width height format type_ pixels)
        pure ()


glRotatef :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (())
glRotatef object_ a1 a2 a3 a4 = jmethod object_ "glRotatef" (\() -> (glRotatef_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4

glRotatef_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (())
glRotatef_super object_ a1 a2 a3 a4 = (glRotatef_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4

glRotatef_impl :: JOGL10 -> Float -> Float -> Float -> Float -> IO (())
glRotatef_impl this angle x y z = do
        Control.Monad.void (GL2.glRotatef ((jget (this).gl10)) angle x y z)
        pure ()


glRotatex :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glRotatex object_ a1 a2 a3 a4 = jmethod object_ "glRotatex" (\() -> (glRotatex_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4

glRotatex_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glRotatex_super object_ a1 a2 a3 a4 = (glRotatex_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4

glRotatex_impl :: JOGL10 -> Int -> Int -> Int -> Int -> IO (())
glRotatex_impl this angle x y z = do
        Control.Monad.void (GL2.glRotatef ((jget (this).gl10)) angle x y z)
        pure ()


glSampleCoverage :: (JavaObjectClass this_) => this_ -> Float -> Bool -> IO (())
glSampleCoverage object_ a1 a2 = jmethod object_ "glSampleCoverage" (\() -> (glSampleCoverage_impl (javaCast object_ :: JOGL10))) () a1 a2

glSampleCoverage_super :: (JavaObjectClass this_) => this_ -> Float -> Bool -> IO (())
glSampleCoverage_super object_ a1 a2 = (glSampleCoverage_impl (javaCast object_ :: JOGL10)) a1 a2

glSampleCoverage_impl :: JOGL10 -> Float -> Bool -> IO (())
glSampleCoverage_impl this value invert = do
        Control.Monad.void (GL2.glSampleCoverage ((jget (this).gl10)) value invert)
        pure ()


glScalef :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glScalef object_ a1 a2 a3 = jmethod object_ "glScalef" (\() -> (glScalef_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glScalef_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glScalef_super object_ a1 a2 a3 = (glScalef_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glScalef_impl :: JOGL10 -> Float -> Float -> Float -> IO (())
glScalef_impl this x y z = do
        Control.Monad.void (GL2.glScalef ((jget (this).gl10)) x y z)
        pure ()


glScalex :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glScalex object_ a1 a2 a3 = jmethod object_ "glScalex" (\() -> (glScalex_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glScalex_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glScalex_super object_ a1 a2 a3 = (glScalex_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glScalex_impl :: JOGL10 -> Int -> Int -> Int -> IO (())
glScalex_impl this x y z = do
        Control.Monad.void (GL2.glScalef ((jget (this).gl10)) x y z)
        pure ()


glScissor :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glScissor object_ a1 a2 a3 a4 = jmethod object_ "glScissor" (\() -> (glScissor_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4

glScissor_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glScissor_super object_ a1 a2 a3 a4 = (glScissor_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4

glScissor_impl :: JOGL10 -> Int -> Int -> Int -> Int -> IO (())
glScissor_impl this x y width height = do
        Control.Monad.void (GL2.glScissor ((jget (this).gl10)) x y width height)
        pure ()


glShadeModel :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glShadeModel object_ a1 = jmethod object_ "glShadeModel" (\() -> (glShadeModel_impl (javaCast object_ :: JOGL10))) () a1

glShadeModel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glShadeModel_super object_ a1 = (glShadeModel_impl (javaCast object_ :: JOGL10)) a1

glShadeModel_impl :: JOGL10 -> Int -> IO (())
glShadeModel_impl this mode = do
        Control.Monad.void (GL2.glShadeModel ((jget (this).gl10)) mode)
        pure ()


glStencilFunc :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glStencilFunc object_ a1 a2 a3 = jmethod object_ "glStencilFunc" (\() -> (glStencilFunc_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glStencilFunc_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glStencilFunc_super object_ a1 a2 a3 = (glStencilFunc_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glStencilFunc_impl :: JOGL10 -> Int -> Int -> Int -> IO (())
glStencilFunc_impl this func ref mask = do
        Control.Monad.void (GL2.glStencilFunc ((jget (this).gl10)) func ref mask)
        pure ()


glStencilMask :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glStencilMask object_ a1 = jmethod object_ "glStencilMask" (\() -> (glStencilMask_impl (javaCast object_ :: JOGL10))) () a1

glStencilMask_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glStencilMask_super object_ a1 = (glStencilMask_impl (javaCast object_ :: JOGL10)) a1

glStencilMask_impl :: JOGL10 -> Int -> IO (())
glStencilMask_impl this mask = do
        Control.Monad.void (GL2.glStencilMask ((jget (this).gl10)) mask)
        pure ()


glStencilOp :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glStencilOp object_ a1 a2 a3 = jmethod object_ "glStencilOp" (\() -> (glStencilOp_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glStencilOp_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glStencilOp_super object_ a1 a2 a3 = (glStencilOp_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glStencilOp_impl :: JOGL10 -> Int -> Int -> Int -> IO (())
glStencilOp_impl this fail zfail zpass = do
        Control.Monad.void (GL2.glStencilOp ((jget (this).gl10)) fail zfail zpass)
        pure ()


glTexCoordPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexCoordPointer object_ a1 a2 a3 a4 = jmethod object_ "glTexCoordPointer" (\() -> (glTexCoordPointer_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4

glTexCoordPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexCoordPointer_super object_ a1 a2 a3 a4 = (glTexCoordPointer_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4

glTexCoordPointer_impl :: JOGL10 -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexCoordPointer_impl this size type_ stride pointer = do
        Control.Monad.void (GL2.glTexCoordPointer ((jget (this).gl10)) size type_ stride pointer)
        pure ()


glTexEnvf :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glTexEnvf object_ a1 a2 a3 = jmethod object_ "glTexEnvf" (\() -> (glTexEnvf_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glTexEnvf_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glTexEnvf_super object_ a1 a2 a3 = (glTexEnvf_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glTexEnvf_impl :: JOGL10 -> Int -> Int -> Float -> IO (())
glTexEnvf_impl this target pname param = do
        Control.Monad.void (GL2.glTexEnvf ((jget (this).gl10)) target pname param)
        pure ()


glTexEnvfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glTexEnvfv object_ a1 a2 a3 a4 = jmethod object_ "glTexEnvfv" (\() -> (glTexEnvfv_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4

glTexEnvfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glTexEnvfv_super object_ a1 a2 a3 a4 = (glTexEnvfv_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4

glTexEnvfv_impl :: JOGL10 -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glTexEnvfv_impl this target pname params offset = do
        Control.Monad.void (GL2.glTexEnvfv ((jget (this).gl10)) target pname params offset)
        pure ()


-- Java overload of glTexEnvfv with a different parameter count: give it a different name
glTexEnvfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glTexEnvfv object_ a1 a2 a3 = jmethod object_ "glTexEnvfv" (\() -> (glTexEnvfv_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glTexEnvfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glTexEnvfv_super object_ a1 a2 a3 = (glTexEnvfv_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glTexEnvfv_impl :: JOGL10 -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glTexEnvfv_impl this target pname params = do
        Control.Monad.void (GL2.glTexEnvfv ((jget (this).gl10)) target pname params)
        pure ()


glTexImage2D :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexImage2D object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = jmethod object_ "glTexImage2D" (\() -> (glTexImage2D_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4 a5 a6 a7 a8 a9

glTexImage2D_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexImage2D_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = (glTexImage2D_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4 a5 a6 a7 a8 a9

glTexImage2D_impl :: JOGL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexImage2D_impl this target level internalformat width height border format type_ pixels = do
        Control.Monad.void (GL2.glTexImage2D ((jget (this).gl10)) target level internalformat width height border format type_ pixels)
        pure ()


glTexParameterf :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glTexParameterf object_ a1 a2 a3 = jmethod object_ "glTexParameterf" (\() -> (glTexParameterf_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glTexParameterf_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glTexParameterf_super object_ a1 a2 a3 = (glTexParameterf_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glTexParameterf_impl :: JOGL10 -> Int -> Int -> Float -> IO (())
glTexParameterf_impl this target pname param = do
        Control.Monad.void (GL2.glTexParameterf ((jget (this).gl10)) target pname param)
        pure ()


glTexParameteri :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glTexParameteri object_ a1 a2 a3 = jmethod object_ "glTexParameteri" (\() -> (glTexParameteri_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glTexParameteri_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glTexParameteri_super object_ a1 a2 a3 = (glTexParameteri_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glTexParameteri_impl :: JOGL10 -> Int -> Int -> Int -> IO (())
glTexParameteri_impl this target pname param = do
        Control.Monad.void (GL2.glTexParameteri ((jget (this).gl10)) target pname param)
        pure ()


glTexSubImage2D :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexSubImage2D object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = jmethod object_ "glTexSubImage2D" (\() -> (glTexSubImage2D_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4 a5 a6 a7 a8 a9

glTexSubImage2D_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexSubImage2D_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = (glTexSubImage2D_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4 a5 a6 a7 a8 a9

glTexSubImage2D_impl :: JOGL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexSubImage2D_impl this target level xoffset yoffset width height format type_ pixels = do
        Control.Monad.void (GL2.glTexSubImage2D ((jget (this).gl10)) target level xoffset yoffset width height format type_ pixels)
        pure ()


glTranslatef :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glTranslatef object_ a1 a2 a3 = jmethod object_ "glTranslatef" (\() -> (glTranslatef_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glTranslatef_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glTranslatef_super object_ a1 a2 a3 = (glTranslatef_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glTranslatef_impl :: JOGL10 -> Float -> Float -> Float -> IO (())
glTranslatef_impl this x y z = do
        Control.Monad.void (GL2.glTranslatef ((jget (this).gl10)) x y z)
        pure ()


glVertexPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glVertexPointer object_ a1 a2 a3 a4 = jmethod object_ "glVertexPointer" (\() -> (glVertexPointer_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4

glVertexPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glVertexPointer_super object_ a1 a2 a3 a4 = (glVertexPointer_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4

glVertexPointer_impl :: JOGL10 -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glVertexPointer_impl this size type_ stride pointer = do
        Control.Monad.void (GL2.glVertexPointer ((jget (this).gl10)) size type_ stride pointer)
        pure ()


glViewport :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glViewport object_ a1 a2 a3 a4 = jmethod object_ "glViewport" (\() -> (glViewport_impl (javaCast object_ :: JOGL10))) () a1 a2 a3 a4

glViewport_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glViewport_super object_ a1 a2 a3 a4 = (glViewport_impl (javaCast object_ :: JOGL10)) a1 a2 a3 a4

glViewport_impl :: JOGL10 -> Int -> Int -> Int -> Int -> IO (())
glViewport_impl this x y width height = do
        Control.Monad.void (GL2.glViewport ((jget (this).gl10)) x y width height)
        pure ()


glBegin :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glBegin object_ a1 = jmethod object_ "glBegin" (\() -> (glBegin_impl (javaCast object_ :: JOGL10))) () a1

glBegin_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glBegin_super object_ a1 = (glBegin_impl (javaCast object_ :: JOGL10)) a1

glBegin_impl :: JOGL10 -> Int -> IO (())
glBegin_impl this i = do
        Control.Monad.void (GL2.glBegin ((jget (this).gl10)) i)
        pure ()


glEnd :: (JavaObjectClass this_) => this_ -> IO (())
glEnd object_ = jmethod object_ "glEnd" (\() -> (glEnd_impl (javaCast object_ :: JOGL10))) ()

glEnd_super :: (JavaObjectClass this_) => this_ -> IO (())
glEnd_super object_ = (glEnd_impl (javaCast object_ :: JOGL10))

glEnd_impl :: JOGL10 -> IO (())
glEnd_impl this = do
        Control.Monad.void (GL2.glEnd ((jget (this).gl10)))
        pure ()


glVertex3f :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glVertex3f object_ a1 a2 a3 = jmethod object_ "glVertex3f" (\() -> (glVertex3f_impl (javaCast object_ :: JOGL10))) () a1 a2 a3

glVertex3f_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glVertex3f_super object_ a1 a2 a3 = (glVertex3f_impl (javaCast object_ :: JOGL10)) a1 a2 a3

glVertex3f_impl :: JOGL10 -> Float -> Float -> Float -> IO (())
glVertex3f_impl this f f2 f3 = do
        Control.Monad.void (GL2.glVertex3f ((jget (this).gl10)) f f2 f3)
        pure ()


glPolygonMode :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glPolygonMode object_ a1 a2 = jmethod object_ "glPolygonMode" (\() -> (glPolygonMode_impl (javaCast object_ :: JOGL10))) () a1 a2

glPolygonMode_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glPolygonMode_super object_ a1 a2 = (glPolygonMode_impl (javaCast object_ :: JOGL10)) a1 a2

glPolygonMode_impl :: JOGL10 -> Int -> Int -> IO (())
glPolygonMode_impl this i i1 = do
        Control.Monad.void (GL2.glPolygonMode ((jget (this).gl10)) i i1)
        pure ()


