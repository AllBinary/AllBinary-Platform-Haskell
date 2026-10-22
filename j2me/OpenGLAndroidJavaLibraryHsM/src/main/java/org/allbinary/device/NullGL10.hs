{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.device
module NullGL10 where

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
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified Buffer -- java.nio.Buffer
import qualified FloatBuffer -- java.nio.FloatBuffer
import qualified IntBuffer -- java.nio.IntBuffer
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

-- implements GL10
data NullGL10 = NullGL10
    { header_ :: JavaHeader
    }

instance JavaNull NullGL10 where
    javaNull = javaNullRecord "NullGL10"

instance JavaEquals NullGL10 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullGL10 where
    (==) = jrecordEquals

instance JavaObjectClass NullGL10 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_GL10 #-}
nULL_GL10 = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullGL10
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullGL10 header_
    jregisterLevel header_ this
    GL10.registerInterface_ header_
    jregisterMethod header_ "glActiveTexture" (\() -> glActiveTexture_impl this)
    jregisterMethod header_ "glAlphaFunc" (\() -> glAlphaFunc_impl this)
    jregisterMethod header_ "glAlphaFuncx" (\() -> glAlphaFuncx_impl this)
    jregisterMethod header_ "glBindTexture" (\() -> glBindTexture_impl this)
    jregisterMethod header_ "glBlendFunc" (\() -> glBlendFunc_impl this)
    jregisterMethod header_ "glClear" (\() -> glClear_impl this)
    jregisterMethod header_ "glClearColor" (\() -> glClearColor_impl this)
    jregisterMethod header_ "glClearColorx" (\() -> glClearColorx_impl this)
    jregisterMethod header_ "glClearDepthf" (\() -> glClearDepthf_impl this)
    jregisterMethod header_ "glClearDepthx" (\() -> glClearDepthx_impl this)
    jregisterMethod header_ "glClearStencil" (\() -> glClearStencil_impl this)
    jregisterMethod header_ "glClientActiveTexture" (\() -> glClientActiveTexture_impl this)
    jregisterMethod header_ "glColor4f" (\() -> glColor4f_impl this)
    jregisterMethod header_ "glColor4x" (\() -> glColor4x_impl this)
    jregisterMethod header_ "glColorMask" (\() -> glColorMask_impl this)
    jregisterMethod header_ "glColorPointer" (\() -> glColorPointer_impl this)
    jregisterMethod header_ "glCompressedTexImage2D" (\() -> glCompressedTexImage2D_impl this)
    jregisterMethod header_ "glCompressedTexSubImage2D" (\() -> glCompressedTexSubImage2D_impl this)
    jregisterMethod header_ "glCopyTexImage2D" (\() -> glCopyTexImage2D_impl this)
    jregisterMethod header_ "glCopyTexSubImage2D" (\() -> glCopyTexSubImage2D_impl this)
    jregisterMethod header_ "glCullFace" (\() -> glCullFace_impl this)
    jregisterMethod header_ "glDeleteTextures" (\() -> glDeleteTextures_impl this)
    jregisterMethod header_ "glDeleteTextures_2" (\() -> glDeleteTextures_2_impl this)
    jregisterMethod header_ "glDepthFunc" (\() -> glDepthFunc_impl this)
    jregisterMethod header_ "glDepthMask" (\() -> glDepthMask_impl this)
    jregisterMethod header_ "glDepthRangef" (\() -> glDepthRangef_impl this)
    jregisterMethod header_ "glDepthRangex" (\() -> glDepthRangex_impl this)
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
    jregisterMethod header_ "glFogfv_2" (\() -> glFogfv_2_impl this)
    jregisterMethod header_ "glFogx" (\() -> glFogx_impl this)
    jregisterMethod header_ "glFogxv" (\() -> glFogxv_impl this)
    jregisterMethod header_ "glFogxv_2" (\() -> glFogxv_2_impl this)
    jregisterMethod header_ "glFrontFace" (\() -> glFrontFace_impl this)
    jregisterMethod header_ "glFrustumf" (\() -> glFrustumf_impl this)
    jregisterMethod header_ "glFrustumx" (\() -> glFrustumx_impl this)
    jregisterMethod header_ "glGenTextures" (\() -> glGenTextures_impl this)
    jregisterMethod header_ "glGenTextures_2" (\() -> glGenTextures_2_impl this)
    jregisterMethod header_ "glGetError" (\() -> glGetError_impl this)
    jregisterMethod header_ "glGetIntegerv" (\() -> glGetIntegerv_impl this)
    jregisterMethod header_ "glGetIntegerv_2" (\() -> glGetIntegerv_2_impl this)
    jregisterMethod header_ "glGetString" (\() -> glGetString_impl this)
    jregisterMethod header_ "glHint" (\() -> glHint_impl this)
    jregisterMethod header_ "glLightModelf" (\() -> glLightModelf_impl this)
    jregisterMethod header_ "glLightModelfv" (\() -> glLightModelfv_impl this)
    jregisterMethod header_ "glLightModelfv_2" (\() -> glLightModelfv_2_impl this)
    jregisterMethod header_ "glLightModelx" (\() -> glLightModelx_impl this)
    jregisterMethod header_ "glLightModelxv" (\() -> glLightModelxv_impl this)
    jregisterMethod header_ "glLightModelxv_2" (\() -> glLightModelxv_2_impl this)
    jregisterMethod header_ "glLightf" (\() -> glLightf_impl this)
    jregisterMethod header_ "glLightfv" (\() -> glLightfv_impl this)
    jregisterMethod header_ "glLightfv_3" (\() -> glLightfv_3_impl this)
    jregisterMethod header_ "glLightx" (\() -> glLightx_impl this)
    jregisterMethod header_ "glLightxv" (\() -> glLightxv_impl this)
    jregisterMethod header_ "glLightxv_3" (\() -> glLightxv_3_impl this)
    jregisterMethod header_ "glLineWidth" (\() -> glLineWidth_impl this)
    jregisterMethod header_ "glLineWidthx" (\() -> glLineWidthx_impl this)
    jregisterMethod header_ "glLoadIdentity" (\() -> glLoadIdentity_impl this)
    jregisterMethod header_ "glLoadMatrixf" (\() -> glLoadMatrixf_impl this)
    jregisterMethod header_ "glLoadMatrixf_1" (\() -> glLoadMatrixf_1_impl this)
    jregisterMethod header_ "glLoadMatrixx" (\() -> glLoadMatrixx_impl this)
    jregisterMethod header_ "glLoadMatrixx_1" (\() -> glLoadMatrixx_1_impl this)
    jregisterMethod header_ "glLogicOp" (\() -> glLogicOp_impl this)
    jregisterMethod header_ "glMaterialf" (\() -> glMaterialf_impl this)
    jregisterMethod header_ "glMaterialfv" (\() -> glMaterialfv_impl this)
    jregisterMethod header_ "glMaterialfv_3" (\() -> glMaterialfv_3_impl this)
    jregisterMethod header_ "glMaterialx" (\() -> glMaterialx_impl this)
    jregisterMethod header_ "glMaterialxv" (\() -> glMaterialxv_impl this)
    jregisterMethod header_ "glMaterialxv_3" (\() -> glMaterialxv_3_impl this)
    jregisterMethod header_ "glMatrixMode" (\() -> glMatrixMode_impl this)
    jregisterMethod header_ "glMultMatrixf" (\() -> glMultMatrixf_impl this)
    jregisterMethod header_ "glMultMatrixf_1" (\() -> glMultMatrixf_1_impl this)
    jregisterMethod header_ "glMultMatrixx" (\() -> glMultMatrixx_impl this)
    jregisterMethod header_ "glMultMatrixx_1" (\() -> glMultMatrixx_1_impl this)
    jregisterMethod header_ "glMultiTexCoord4f" (\() -> glMultiTexCoord4f_impl this)
    jregisterMethod header_ "glMultiTexCoord4x" (\() -> glMultiTexCoord4x_impl this)
    jregisterMethod header_ "glNormal3f" (\() -> glNormal3f_impl this)
    jregisterMethod header_ "glNormal3x" (\() -> glNormal3x_impl this)
    jregisterMethod header_ "glNormalPointer" (\() -> glNormalPointer_impl this)
    jregisterMethod header_ "glOrthof" (\() -> glOrthof_impl this)
    jregisterMethod header_ "glOrthox" (\() -> glOrthox_impl this)
    jregisterMethod header_ "glPixelStorei" (\() -> glPixelStorei_impl this)
    jregisterMethod header_ "glPointSize" (\() -> glPointSize_impl this)
    jregisterMethod header_ "glPointSizex" (\() -> glPointSizex_impl this)
    jregisterMethod header_ "glPolygonOffset" (\() -> glPolygonOffset_impl this)
    jregisterMethod header_ "glPolygonOffsetx" (\() -> glPolygonOffsetx_impl this)
    jregisterMethod header_ "glPopMatrix" (\() -> glPopMatrix_impl this)
    jregisterMethod header_ "glPushMatrix" (\() -> glPushMatrix_impl this)
    jregisterMethod header_ "glReadPixels" (\() -> glReadPixels_impl this)
    jregisterMethod header_ "glRotatef" (\() -> glRotatef_impl this)
    jregisterMethod header_ "glRotatex" (\() -> glRotatex_impl this)
    jregisterMethod header_ "glSampleCoverage" (\() -> glSampleCoverage_impl this)
    jregisterMethod header_ "glSampleCoveragex" (\() -> glSampleCoveragex_impl this)
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
    jregisterMethod header_ "glTexEnvfv_3" (\() -> glTexEnvfv_3_impl this)
    jregisterMethod header_ "glTexEnvx" (\() -> glTexEnvx_impl this)
    jregisterMethod header_ "glTexEnvxv" (\() -> glTexEnvxv_impl this)
    jregisterMethod header_ "glTexEnvxv_3" (\() -> glTexEnvxv_3_impl this)
    jregisterMethod header_ "glTexImage2D" (\() -> glTexImage2D_impl this)
    jregisterMethod header_ "glTexParameterf" (\() -> glTexParameterf_impl this)
    jregisterMethod header_ "glTexParameterx" (\() -> glTexParameterx_impl this)
    jregisterMethod header_ "glTexSubImage2D" (\() -> glTexSubImage2D_impl this)
    jregisterMethod header_ "glTranslatef" (\() -> glTranslatef_impl this)
    jregisterMethod header_ "glTranslatex" (\() -> glTranslatex_impl this)
    jregisterMethod header_ "glVertexPointer" (\() -> glVertexPointer_impl this)
    jregisterMethod header_ "glViewport" (\() -> glViewport_impl this)
    pure this

initFields_ :: NullGL10 -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullGL10
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullGL10 -> IO ()
init_ this = do
    initFields_ this


glActiveTexture :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glActiveTexture object_ a1 = jmethod object_ "glActiveTexture" (\() -> (glActiveTexture_impl (javaCast object_ :: NullGL10))) () a1

glActiveTexture_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glActiveTexture_super object_ a1 = (glActiveTexture_impl (javaCast object_ :: NullGL10)) a1

glActiveTexture_impl :: NullGL10 -> Int -> IO (())
glActiveTexture_impl this texture = do
        pure (())


glAlphaFunc :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glAlphaFunc object_ a1 a2 = jmethod object_ "glAlphaFunc" (\() -> (glAlphaFunc_impl (javaCast object_ :: NullGL10))) () a1 a2

glAlphaFunc_super :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glAlphaFunc_super object_ a1 a2 = (glAlphaFunc_impl (javaCast object_ :: NullGL10)) a1 a2

glAlphaFunc_impl :: NullGL10 -> Int -> Float -> IO (())
glAlphaFunc_impl this func ref = do
        pure (())


glAlphaFuncx :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glAlphaFuncx object_ a1 a2 = jmethod object_ "glAlphaFuncx" (\() -> (glAlphaFuncx_impl (javaCast object_ :: NullGL10))) () a1 a2

glAlphaFuncx_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glAlphaFuncx_super object_ a1 a2 = (glAlphaFuncx_impl (javaCast object_ :: NullGL10)) a1 a2

glAlphaFuncx_impl :: NullGL10 -> Int -> Int -> IO (())
glAlphaFuncx_impl this func ref = do
        pure ()


glBindTexture :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glBindTexture object_ a1 a2 = jmethod object_ "glBindTexture" (\() -> (glBindTexture_impl (javaCast object_ :: NullGL10))) () a1 a2

glBindTexture_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glBindTexture_super object_ a1 a2 = (glBindTexture_impl (javaCast object_ :: NullGL10)) a1 a2

glBindTexture_impl :: NullGL10 -> Int -> Int -> IO (())
glBindTexture_impl this target texture = do
        pure (())


glBlendFunc :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glBlendFunc object_ a1 a2 = jmethod object_ "glBlendFunc" (\() -> (glBlendFunc_impl (javaCast object_ :: NullGL10))) () a1 a2

glBlendFunc_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glBlendFunc_super object_ a1 a2 = (glBlendFunc_impl (javaCast object_ :: NullGL10)) a1 a2

glBlendFunc_impl :: NullGL10 -> Int -> Int -> IO (())
glBlendFunc_impl this sfactor dfactor = do
        pure (())


glClear :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClear object_ a1 = jmethod object_ "glClear" (\() -> (glClear_impl (javaCast object_ :: NullGL10))) () a1

glClear_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClear_super object_ a1 = (glClear_impl (javaCast object_ :: NullGL10)) a1

glClear_impl :: NullGL10 -> Int -> IO (())
glClear_impl this mask = do
        pure (())


glClearColor :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (())
glClearColor object_ a1 a2 a3 a4 = jmethod object_ "glClearColor" (\() -> (glClearColor_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4

glClearColor_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (())
glClearColor_super object_ a1 a2 a3 a4 = (glClearColor_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4

glClearColor_impl :: NullGL10 -> Float -> Float -> Float -> Float -> IO (())
glClearColor_impl this red green blue alpha = do
        pure (())


glClearColorx :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glClearColorx object_ a1 a2 a3 a4 = jmethod object_ "glClearColorx" (\() -> (glClearColorx_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4

glClearColorx_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glClearColorx_super object_ a1 a2 a3 a4 = (glClearColorx_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4

glClearColorx_impl :: NullGL10 -> Int -> Int -> Int -> Int -> IO (())
glClearColorx_impl this red green blue alpha = do
        pure ()


glClearDepthf :: (JavaObjectClass this_) => this_ -> Float -> IO (())
glClearDepthf object_ a1 = jmethod object_ "glClearDepthf" (\() -> (glClearDepthf_impl (javaCast object_ :: NullGL10))) () a1

glClearDepthf_super :: (JavaObjectClass this_) => this_ -> Float -> IO (())
glClearDepthf_super object_ a1 = (glClearDepthf_impl (javaCast object_ :: NullGL10)) a1

glClearDepthf_impl :: NullGL10 -> Float -> IO (())
glClearDepthf_impl this depth = do
        pure (())


glClearDepthx :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClearDepthx object_ a1 = jmethod object_ "glClearDepthx" (\() -> (glClearDepthx_impl (javaCast object_ :: NullGL10))) () a1

glClearDepthx_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClearDepthx_super object_ a1 = (glClearDepthx_impl (javaCast object_ :: NullGL10)) a1

glClearDepthx_impl :: NullGL10 -> Int -> IO (())
glClearDepthx_impl this depth = do
        pure ()


glClearStencil :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClearStencil object_ a1 = jmethod object_ "glClearStencil" (\() -> (glClearStencil_impl (javaCast object_ :: NullGL10))) () a1

glClearStencil_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClearStencil_super object_ a1 = (glClearStencil_impl (javaCast object_ :: NullGL10)) a1

glClearStencil_impl :: NullGL10 -> Int -> IO (())
glClearStencil_impl this s = do
        pure (())


glClientActiveTexture :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClientActiveTexture object_ a1 = jmethod object_ "glClientActiveTexture" (\() -> (glClientActiveTexture_impl (javaCast object_ :: NullGL10))) () a1

glClientActiveTexture_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClientActiveTexture_super object_ a1 = (glClientActiveTexture_impl (javaCast object_ :: NullGL10)) a1

glClientActiveTexture_impl :: NullGL10 -> Int -> IO (())
glClientActiveTexture_impl this texture = do
        pure (())


glColor4f :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (())
glColor4f object_ a1 a2 a3 a4 = jmethod object_ "glColor4f" (\() -> (glColor4f_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4

glColor4f_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (())
glColor4f_super object_ a1 a2 a3 a4 = (glColor4f_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4

glColor4f_impl :: NullGL10 -> Float -> Float -> Float -> Float -> IO (())
glColor4f_impl this red green blue alpha = do
        pure (())


glColor4x :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glColor4x object_ a1 a2 a3 a4 = jmethod object_ "glColor4x" (\() -> (glColor4x_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4

glColor4x_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glColor4x_super object_ a1 a2 a3 a4 = (glColor4x_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4

glColor4x_impl :: NullGL10 -> Int -> Int -> Int -> Int -> IO (())
glColor4x_impl this red green blue alpha = do
        pure ()


glColorMask :: (JavaObjectClass this_) => this_ -> Bool -> Bool -> Bool -> Bool -> IO (())
glColorMask object_ a1 a2 a3 a4 = jmethod object_ "glColorMask" (\() -> (glColorMask_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4

glColorMask_super :: (JavaObjectClass this_) => this_ -> Bool -> Bool -> Bool -> Bool -> IO (())
glColorMask_super object_ a1 a2 a3 a4 = (glColorMask_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4

glColorMask_impl :: NullGL10 -> Bool -> Bool -> Bool -> Bool -> IO (())
glColorMask_impl this red green blue alpha = do
        pure (())


glColorPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glColorPointer object_ a1 a2 a3 a4 = jmethod object_ "glColorPointer" (\() -> (glColorPointer_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4

glColorPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glColorPointer_super object_ a1 a2 a3 a4 = (glColorPointer_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4

glColorPointer_impl :: NullGL10 -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glColorPointer_impl this size type_ stride pointer = do
        pure (())


glCompressedTexImage2D :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glCompressedTexImage2D object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "glCompressedTexImage2D" (\() -> (glCompressedTexImage2D_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4 a5 a6 a7 a8

glCompressedTexImage2D_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glCompressedTexImage2D_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (glCompressedTexImage2D_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4 a5 a6 a7 a8

glCompressedTexImage2D_impl :: NullGL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glCompressedTexImage2D_impl this target level internalformat width height border imageSize data_ = do
        pure (())


glCompressedTexSubImage2D :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glCompressedTexSubImage2D object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = jmethod object_ "glCompressedTexSubImage2D" (\() -> (glCompressedTexSubImage2D_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4 a5 a6 a7 a8 a9

glCompressedTexSubImage2D_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glCompressedTexSubImage2D_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = (glCompressedTexSubImage2D_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4 a5 a6 a7 a8 a9

glCompressedTexSubImage2D_impl :: NullGL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glCompressedTexSubImage2D_impl this target level xoffset yoffset width height format imageSize data_ = do
        pure (())


glCopyTexImage2D :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glCopyTexImage2D object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "glCopyTexImage2D" (\() -> (glCopyTexImage2D_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4 a5 a6 a7 a8

glCopyTexImage2D_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glCopyTexImage2D_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (glCopyTexImage2D_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4 a5 a6 a7 a8

glCopyTexImage2D_impl :: NullGL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glCopyTexImage2D_impl this target level internalformat x y width height border = do
        pure (())


glCopyTexSubImage2D :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glCopyTexSubImage2D object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "glCopyTexSubImage2D" (\() -> (glCopyTexSubImage2D_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4 a5 a6 a7 a8

glCopyTexSubImage2D_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glCopyTexSubImage2D_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (glCopyTexSubImage2D_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4 a5 a6 a7 a8

glCopyTexSubImage2D_impl :: NullGL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glCopyTexSubImage2D_impl this target level xoffset yoffset x y width height = do
        pure (())


glCullFace :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glCullFace object_ a1 = jmethod object_ "glCullFace" (\() -> (glCullFace_impl (javaCast object_ :: NullGL10))) () a1

glCullFace_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glCullFace_super object_ a1 = (glCullFace_impl (javaCast object_ :: NullGL10)) a1

glCullFace_impl :: NullGL10 -> Int -> IO (())
glCullFace_impl this mode = do
        pure (())


glDeleteTextures :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glDeleteTextures object_ a1 a2 a3 = jmethod object_ "glDeleteTextures" (\() -> (glDeleteTextures_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glDeleteTextures_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glDeleteTextures_super object_ a1 a2 a3 = (glDeleteTextures_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glDeleteTextures_impl :: NullGL10 -> Int -> JavaArray (Int) -> Int -> IO (())
glDeleteTextures_impl this n textures offset = do
        pure (())


glDeleteTextures_2 :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glDeleteTextures_2 object_ a1 a2 = jmethod object_ "glDeleteTextures_2" (\() -> (glDeleteTextures_2_impl (javaCast object_ :: NullGL10))) () a1 a2

glDeleteTextures_2_super :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glDeleteTextures_2_super object_ a1 a2 = (glDeleteTextures_2_impl (javaCast object_ :: NullGL10)) a1 a2

glDeleteTextures_2_impl :: NullGL10 -> Int -> IntBuffer.IntBuffer -> IO (())
glDeleteTextures_2_impl this n textures = do
        pure (())


glDepthFunc :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glDepthFunc object_ a1 = jmethod object_ "glDepthFunc" (\() -> (glDepthFunc_impl (javaCast object_ :: NullGL10))) () a1

glDepthFunc_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glDepthFunc_super object_ a1 = (glDepthFunc_impl (javaCast object_ :: NullGL10)) a1

glDepthFunc_impl :: NullGL10 -> Int -> IO (())
glDepthFunc_impl this func = do
        pure (())


glDepthMask :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
glDepthMask object_ a1 = jmethod object_ "glDepthMask" (\() -> (glDepthMask_impl (javaCast object_ :: NullGL10))) () a1

glDepthMask_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
glDepthMask_super object_ a1 = (glDepthMask_impl (javaCast object_ :: NullGL10)) a1

glDepthMask_impl :: NullGL10 -> Bool -> IO (())
glDepthMask_impl this flag = do
        pure (())


glDepthRangef :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
glDepthRangef object_ a1 a2 = jmethod object_ "glDepthRangef" (\() -> (glDepthRangef_impl (javaCast object_ :: NullGL10))) () a1 a2

glDepthRangef_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
glDepthRangef_super object_ a1 a2 = (glDepthRangef_impl (javaCast object_ :: NullGL10)) a1 a2

glDepthRangef_impl :: NullGL10 -> Float -> Float -> IO (())
glDepthRangef_impl this zNear zFar = do
        pure (())


glDepthRangex :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glDepthRangex object_ a1 a2 = jmethod object_ "glDepthRangex" (\() -> (glDepthRangex_impl (javaCast object_ :: NullGL10))) () a1 a2

glDepthRangex_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glDepthRangex_super object_ a1 a2 = (glDepthRangex_impl (javaCast object_ :: NullGL10)) a1 a2

glDepthRangex_impl :: NullGL10 -> Int -> Int -> IO (())
glDepthRangex_impl this zNear zFar = do
        pure ()


glDisable :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glDisable object_ a1 = jmethod object_ "glDisable" (\() -> (glDisable_impl (javaCast object_ :: NullGL10))) () a1

glDisable_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glDisable_super object_ a1 = (glDisable_impl (javaCast object_ :: NullGL10)) a1

glDisable_impl :: NullGL10 -> Int -> IO (())
glDisable_impl this cap = do
        pure (())


glDisableClientState :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glDisableClientState object_ a1 = jmethod object_ "glDisableClientState" (\() -> (glDisableClientState_impl (javaCast object_ :: NullGL10))) () a1

glDisableClientState_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glDisableClientState_super object_ a1 = (glDisableClientState_impl (javaCast object_ :: NullGL10)) a1

glDisableClientState_impl :: NullGL10 -> Int -> IO (())
glDisableClientState_impl this array = do
        pure (())


glDrawArrays :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glDrawArrays object_ a1 a2 a3 = jmethod object_ "glDrawArrays" (\() -> (glDrawArrays_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glDrawArrays_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glDrawArrays_super object_ a1 a2 a3 = (glDrawArrays_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glDrawArrays_impl :: NullGL10 -> Int -> Int -> Int -> IO (())
glDrawArrays_impl this mode first count = do
        pure (())


glDrawElements :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glDrawElements object_ a1 a2 a3 a4 = jmethod object_ "glDrawElements" (\() -> (glDrawElements_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4

glDrawElements_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glDrawElements_super object_ a1 a2 a3 a4 = (glDrawElements_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4

glDrawElements_impl :: NullGL10 -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glDrawElements_impl this mode count type_ indices = do
        pure (())


glEnable :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glEnable object_ a1 = jmethod object_ "glEnable" (\() -> (glEnable_impl (javaCast object_ :: NullGL10))) () a1

glEnable_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glEnable_super object_ a1 = (glEnable_impl (javaCast object_ :: NullGL10)) a1

glEnable_impl :: NullGL10 -> Int -> IO (())
glEnable_impl this cap = do
        pure (())


glEnableClientState :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glEnableClientState object_ a1 = jmethod object_ "glEnableClientState" (\() -> (glEnableClientState_impl (javaCast object_ :: NullGL10))) () a1

glEnableClientState_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glEnableClientState_super object_ a1 = (glEnableClientState_impl (javaCast object_ :: NullGL10)) a1

glEnableClientState_impl :: NullGL10 -> Int -> IO (())
glEnableClientState_impl this array = do
        pure (())


glFinish :: (JavaObjectClass this_) => this_ -> IO (())
glFinish object_ = jmethod object_ "glFinish" (\() -> (glFinish_impl (javaCast object_ :: NullGL10))) ()

glFinish_super :: (JavaObjectClass this_) => this_ -> IO (())
glFinish_super object_ = (glFinish_impl (javaCast object_ :: NullGL10))

glFinish_impl :: NullGL10 -> IO (())
glFinish_impl this = do
        pure (())


glFlush :: (JavaObjectClass this_) => this_ -> IO (())
glFlush object_ = jmethod object_ "glFlush" (\() -> (glFlush_impl (javaCast object_ :: NullGL10))) ()

glFlush_super :: (JavaObjectClass this_) => this_ -> IO (())
glFlush_super object_ = (glFlush_impl (javaCast object_ :: NullGL10))

glFlush_impl :: NullGL10 -> IO (())
glFlush_impl this = do
        pure (())


glFogf :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glFogf object_ a1 a2 = jmethod object_ "glFogf" (\() -> (glFogf_impl (javaCast object_ :: NullGL10))) () a1 a2

glFogf_super :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glFogf_super object_ a1 a2 = (glFogf_impl (javaCast object_ :: NullGL10)) a1 a2

glFogf_impl :: NullGL10 -> Int -> Float -> IO (())
glFogf_impl this pname param = do
        pure (())


glFogfv :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glFogfv object_ a1 a2 a3 = jmethod object_ "glFogfv" (\() -> (glFogfv_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glFogfv_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glFogfv_super object_ a1 a2 a3 = (glFogfv_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glFogfv_impl :: NullGL10 -> Int -> JavaArray (Float) -> Int -> IO (())
glFogfv_impl this pname params offset = do
        pure (())


glFogfv_2 :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glFogfv_2 object_ a1 a2 = jmethod object_ "glFogfv_2" (\() -> (glFogfv_2_impl (javaCast object_ :: NullGL10))) () a1 a2

glFogfv_2_super :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glFogfv_2_super object_ a1 a2 = (glFogfv_2_impl (javaCast object_ :: NullGL10)) a1 a2

glFogfv_2_impl :: NullGL10 -> Int -> FloatBuffer.FloatBuffer -> IO (())
glFogfv_2_impl this pname params = do
        pure (())


glFogx :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glFogx object_ a1 a2 = jmethod object_ "glFogx" (\() -> (glFogx_impl (javaCast object_ :: NullGL10))) () a1 a2

glFogx_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glFogx_super object_ a1 a2 = (glFogx_impl (javaCast object_ :: NullGL10)) a1 a2

glFogx_impl :: NullGL10 -> Int -> Int -> IO (())
glFogx_impl this pname param = do
        pure ()


glFogxv :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glFogxv object_ a1 a2 a3 = jmethod object_ "glFogxv" (\() -> (glFogxv_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glFogxv_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glFogxv_super object_ a1 a2 a3 = (glFogxv_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glFogxv_impl :: NullGL10 -> Int -> JavaArray (Int) -> Int -> IO (())
glFogxv_impl this pname params offset = do
        pure ()


glFogxv_2 :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glFogxv_2 object_ a1 a2 = jmethod object_ "glFogxv_2" (\() -> (glFogxv_2_impl (javaCast object_ :: NullGL10))) () a1 a2

glFogxv_2_super :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glFogxv_2_super object_ a1 a2 = (glFogxv_2_impl (javaCast object_ :: NullGL10)) a1 a2

glFogxv_2_impl :: NullGL10 -> Int -> IntBuffer.IntBuffer -> IO (())
glFogxv_2_impl this pname params = do
        pure ()


glFrontFace :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glFrontFace object_ a1 = jmethod object_ "glFrontFace" (\() -> (glFrontFace_impl (javaCast object_ :: NullGL10))) () a1

glFrontFace_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glFrontFace_super object_ a1 = (glFrontFace_impl (javaCast object_ :: NullGL10)) a1

glFrontFace_impl :: NullGL10 -> Int -> IO (())
glFrontFace_impl this mode = do
        pure (())


glFrustumf :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glFrustumf object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "glFrustumf" (\() -> (glFrustumf_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4 a5 a6

glFrustumf_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glFrustumf_super object_ a1 a2 a3 a4 a5 a6 = (glFrustumf_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4 a5 a6

glFrustumf_impl :: NullGL10 -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glFrustumf_impl this left right bottom top zNear zFar = do
        pure (())


glFrustumx :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glFrustumx object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "glFrustumx" (\() -> (glFrustumx_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4 a5 a6

glFrustumx_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glFrustumx_super object_ a1 a2 a3 a4 a5 a6 = (glFrustumx_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4 a5 a6

glFrustumx_impl :: NullGL10 -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glFrustumx_impl this left right bottom top zNear zFar = do
        pure ()


glGenTextures :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glGenTextures object_ a1 a2 a3 = jmethod object_ "glGenTextures" (\() -> (glGenTextures_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glGenTextures_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glGenTextures_super object_ a1 a2 a3 = (glGenTextures_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glGenTextures_impl :: NullGL10 -> Int -> JavaArray (Int) -> Int -> IO (())
glGenTextures_impl this n textures offset = do
        pure (())


glGenTextures_2 :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glGenTextures_2 object_ a1 a2 = jmethod object_ "glGenTextures_2" (\() -> (glGenTextures_2_impl (javaCast object_ :: NullGL10))) () a1 a2

glGenTextures_2_super :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glGenTextures_2_super object_ a1 a2 = (glGenTextures_2_impl (javaCast object_ :: NullGL10)) a1 a2

glGenTextures_2_impl :: NullGL10 -> Int -> IntBuffer.IntBuffer -> IO (())
glGenTextures_2_impl this n textures = do
        pure (())


glGetError :: (JavaObjectClass this_) => this_ -> IO (Int)
glGetError object_ = jmethod object_ "glGetError" (\() -> (glGetError_impl (javaCast object_ :: NullGL10))) ()

glGetError_super :: (JavaObjectClass this_) => this_ -> IO (Int)
glGetError_super object_ = (glGetError_impl (javaCast object_ :: NullGL10))

glGetError_impl :: NullGL10 -> IO (Int)
glGetError_impl this = do
        pure (0)


glGetIntegerv :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glGetIntegerv object_ a1 a2 a3 = jmethod object_ "glGetIntegerv" (\() -> (glGetIntegerv_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glGetIntegerv_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glGetIntegerv_super object_ a1 a2 a3 = (glGetIntegerv_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glGetIntegerv_impl :: NullGL10 -> Int -> JavaArray (Int) -> Int -> IO (())
glGetIntegerv_impl this pname params offset = do
        pure (())


glGetIntegerv_2 :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glGetIntegerv_2 object_ a1 a2 = jmethod object_ "glGetIntegerv_2" (\() -> (glGetIntegerv_2_impl (javaCast object_ :: NullGL10))) () a1 a2

glGetIntegerv_2_super :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glGetIntegerv_2_super object_ a1 a2 = (glGetIntegerv_2_impl (javaCast object_ :: NullGL10)) a1 a2

glGetIntegerv_2_impl :: NullGL10 -> Int -> IntBuffer.IntBuffer -> IO (())
glGetIntegerv_2_impl this pname params = do
        pure (())


glGetString :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
glGetString object_ a1 = jmethod object_ "glGetString" (\() -> (glGetString_impl (javaCast object_ :: NullGL10))) () a1

glGetString_super :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
glGetString_super object_ a1 = (glGetString_impl (javaCast object_ :: NullGL10)) a1

glGetString_impl :: NullGL10 -> Int -> IO (String)
glGetString_impl this name = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


glHint :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glHint object_ a1 a2 = jmethod object_ "glHint" (\() -> (glHint_impl (javaCast object_ :: NullGL10))) () a1 a2

glHint_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glHint_super object_ a1 a2 = (glHint_impl (javaCast object_ :: NullGL10)) a1 a2

glHint_impl :: NullGL10 -> Int -> Int -> IO (())
glHint_impl this target mode = do
        pure (())


glLightModelf :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glLightModelf object_ a1 a2 = jmethod object_ "glLightModelf" (\() -> (glLightModelf_impl (javaCast object_ :: NullGL10))) () a1 a2

glLightModelf_super :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glLightModelf_super object_ a1 a2 = (glLightModelf_impl (javaCast object_ :: NullGL10)) a1 a2

glLightModelf_impl :: NullGL10 -> Int -> Float -> IO (())
glLightModelf_impl this pname param = do
        pure (())


glLightModelfv :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glLightModelfv object_ a1 a2 a3 = jmethod object_ "glLightModelfv" (\() -> (glLightModelfv_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glLightModelfv_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glLightModelfv_super object_ a1 a2 a3 = (glLightModelfv_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glLightModelfv_impl :: NullGL10 -> Int -> JavaArray (Float) -> Int -> IO (())
glLightModelfv_impl this pname params offset = do
        pure (())


glLightModelfv_2 :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glLightModelfv_2 object_ a1 a2 = jmethod object_ "glLightModelfv_2" (\() -> (glLightModelfv_2_impl (javaCast object_ :: NullGL10))) () a1 a2

glLightModelfv_2_super :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glLightModelfv_2_super object_ a1 a2 = (glLightModelfv_2_impl (javaCast object_ :: NullGL10)) a1 a2

glLightModelfv_2_impl :: NullGL10 -> Int -> FloatBuffer.FloatBuffer -> IO (())
glLightModelfv_2_impl this pname params = do
        pure (())


glLightModelx :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glLightModelx object_ a1 a2 = jmethod object_ "glLightModelx" (\() -> (glLightModelx_impl (javaCast object_ :: NullGL10))) () a1 a2

glLightModelx_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glLightModelx_super object_ a1 a2 = (glLightModelx_impl (javaCast object_ :: NullGL10)) a1 a2

glLightModelx_impl :: NullGL10 -> Int -> Int -> IO (())
glLightModelx_impl this pname param = do
        pure ()


glLightModelxv :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glLightModelxv object_ a1 a2 a3 = jmethod object_ "glLightModelxv" (\() -> (glLightModelxv_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glLightModelxv_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glLightModelxv_super object_ a1 a2 a3 = (glLightModelxv_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glLightModelxv_impl :: NullGL10 -> Int -> JavaArray (Int) -> Int -> IO (())
glLightModelxv_impl this pname params offset = do
        pure ()


glLightModelxv_2 :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glLightModelxv_2 object_ a1 a2 = jmethod object_ "glLightModelxv_2" (\() -> (glLightModelxv_2_impl (javaCast object_ :: NullGL10))) () a1 a2

glLightModelxv_2_super :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glLightModelxv_2_super object_ a1 a2 = (glLightModelxv_2_impl (javaCast object_ :: NullGL10)) a1 a2

glLightModelxv_2_impl :: NullGL10 -> Int -> IntBuffer.IntBuffer -> IO (())
glLightModelxv_2_impl this pname params = do
        pure ()


glLightf :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glLightf object_ a1 a2 a3 = jmethod object_ "glLightf" (\() -> (glLightf_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glLightf_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glLightf_super object_ a1 a2 a3 = (glLightf_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glLightf_impl :: NullGL10 -> Int -> Int -> Float -> IO (())
glLightf_impl this light pname param = do
        pure (())


glLightfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glLightfv object_ a1 a2 a3 a4 = jmethod object_ "glLightfv" (\() -> (glLightfv_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4

glLightfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glLightfv_super object_ a1 a2 a3 a4 = (glLightfv_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4

glLightfv_impl :: NullGL10 -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glLightfv_impl this light pname params offset = do
        pure (())


glLightfv_3 :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glLightfv_3 object_ a1 a2 a3 = jmethod object_ "glLightfv_3" (\() -> (glLightfv_3_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glLightfv_3_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glLightfv_3_super object_ a1 a2 a3 = (glLightfv_3_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glLightfv_3_impl :: NullGL10 -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glLightfv_3_impl this light pname params = do
        pure (())


glLightx :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glLightx object_ a1 a2 a3 = jmethod object_ "glLightx" (\() -> (glLightx_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glLightx_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glLightx_super object_ a1 a2 a3 = (glLightx_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glLightx_impl :: NullGL10 -> Int -> Int -> Int -> IO (())
glLightx_impl this light pname param = do
        pure ()


glLightxv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glLightxv object_ a1 a2 a3 a4 = jmethod object_ "glLightxv" (\() -> (glLightxv_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4

glLightxv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glLightxv_super object_ a1 a2 a3 a4 = (glLightxv_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4

glLightxv_impl :: NullGL10 -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glLightxv_impl this light pname params offset = do
        pure ()


glLightxv_3 :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glLightxv_3 object_ a1 a2 a3 = jmethod object_ "glLightxv_3" (\() -> (glLightxv_3_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glLightxv_3_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glLightxv_3_super object_ a1 a2 a3 = (glLightxv_3_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glLightxv_3_impl :: NullGL10 -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glLightxv_3_impl this light pname params = do
        pure ()


glLineWidth :: (JavaObjectClass this_) => this_ -> Float -> IO (())
glLineWidth object_ a1 = jmethod object_ "glLineWidth" (\() -> (glLineWidth_impl (javaCast object_ :: NullGL10))) () a1

glLineWidth_super :: (JavaObjectClass this_) => this_ -> Float -> IO (())
glLineWidth_super object_ a1 = (glLineWidth_impl (javaCast object_ :: NullGL10)) a1

glLineWidth_impl :: NullGL10 -> Float -> IO (())
glLineWidth_impl this width = do
        pure (())


glLineWidthx :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glLineWidthx object_ a1 = jmethod object_ "glLineWidthx" (\() -> (glLineWidthx_impl (javaCast object_ :: NullGL10))) () a1

glLineWidthx_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glLineWidthx_super object_ a1 = (glLineWidthx_impl (javaCast object_ :: NullGL10)) a1

glLineWidthx_impl :: NullGL10 -> Int -> IO (())
glLineWidthx_impl this width = do
        pure ()


glLoadIdentity :: (JavaObjectClass this_) => this_ -> IO (())
glLoadIdentity object_ = jmethod object_ "glLoadIdentity" (\() -> (glLoadIdentity_impl (javaCast object_ :: NullGL10))) ()

glLoadIdentity_super :: (JavaObjectClass this_) => this_ -> IO (())
glLoadIdentity_super object_ = (glLoadIdentity_impl (javaCast object_ :: NullGL10))

glLoadIdentity_impl :: NullGL10 -> IO (())
glLoadIdentity_impl this = do
        pure (())


glLoadMatrixf :: (JavaObjectClass this_) => this_ -> JavaArray (Float) -> Int -> IO (())
glLoadMatrixf object_ a1 a2 = jmethod object_ "glLoadMatrixf" (\() -> (glLoadMatrixf_impl (javaCast object_ :: NullGL10))) () a1 a2

glLoadMatrixf_super :: (JavaObjectClass this_) => this_ -> JavaArray (Float) -> Int -> IO (())
glLoadMatrixf_super object_ a1 a2 = (glLoadMatrixf_impl (javaCast object_ :: NullGL10)) a1 a2

glLoadMatrixf_impl :: NullGL10 -> JavaArray (Float) -> Int -> IO (())
glLoadMatrixf_impl this m offset = do
        pure (())


glLoadMatrixf_1 :: (JavaObjectClass this_) => this_ -> FloatBuffer.FloatBuffer -> IO (())
glLoadMatrixf_1 object_ a1 = jmethod object_ "glLoadMatrixf_1" (\() -> (glLoadMatrixf_1_impl (javaCast object_ :: NullGL10))) () a1

glLoadMatrixf_1_super :: (JavaObjectClass this_) => this_ -> FloatBuffer.FloatBuffer -> IO (())
glLoadMatrixf_1_super object_ a1 = (glLoadMatrixf_1_impl (javaCast object_ :: NullGL10)) a1

glLoadMatrixf_1_impl :: NullGL10 -> FloatBuffer.FloatBuffer -> IO (())
glLoadMatrixf_1_impl this m = do
        pure (())


glLoadMatrixx :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> IO (())
glLoadMatrixx object_ a1 a2 = jmethod object_ "glLoadMatrixx" (\() -> (glLoadMatrixx_impl (javaCast object_ :: NullGL10))) () a1 a2

glLoadMatrixx_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> IO (())
glLoadMatrixx_super object_ a1 a2 = (glLoadMatrixx_impl (javaCast object_ :: NullGL10)) a1 a2

glLoadMatrixx_impl :: NullGL10 -> JavaArray (Int) -> Int -> IO (())
glLoadMatrixx_impl this m offset = do
        pure ()


glLoadMatrixx_1 :: (JavaObjectClass this_) => this_ -> IntBuffer.IntBuffer -> IO (())
glLoadMatrixx_1 object_ a1 = jmethod object_ "glLoadMatrixx_1" (\() -> (glLoadMatrixx_1_impl (javaCast object_ :: NullGL10))) () a1

glLoadMatrixx_1_super :: (JavaObjectClass this_) => this_ -> IntBuffer.IntBuffer -> IO (())
glLoadMatrixx_1_super object_ a1 = (glLoadMatrixx_1_impl (javaCast object_ :: NullGL10)) a1

glLoadMatrixx_1_impl :: NullGL10 -> IntBuffer.IntBuffer -> IO (())
glLoadMatrixx_1_impl this m = do
        pure ()


glLogicOp :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glLogicOp object_ a1 = jmethod object_ "glLogicOp" (\() -> (glLogicOp_impl (javaCast object_ :: NullGL10))) () a1

glLogicOp_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glLogicOp_super object_ a1 = (glLogicOp_impl (javaCast object_ :: NullGL10)) a1

glLogicOp_impl :: NullGL10 -> Int -> IO (())
glLogicOp_impl this opcode = do
        pure (())


glMaterialf :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glMaterialf object_ a1 a2 a3 = jmethod object_ "glMaterialf" (\() -> (glMaterialf_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glMaterialf_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glMaterialf_super object_ a1 a2 a3 = (glMaterialf_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glMaterialf_impl :: NullGL10 -> Int -> Int -> Float -> IO (())
glMaterialf_impl this face pname param = do
        pure (())


glMaterialfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glMaterialfv object_ a1 a2 a3 a4 = jmethod object_ "glMaterialfv" (\() -> (glMaterialfv_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4

glMaterialfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glMaterialfv_super object_ a1 a2 a3 a4 = (glMaterialfv_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4

glMaterialfv_impl :: NullGL10 -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glMaterialfv_impl this face pname params offset = do
        pure (())


glMaterialfv_3 :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glMaterialfv_3 object_ a1 a2 a3 = jmethod object_ "glMaterialfv_3" (\() -> (glMaterialfv_3_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glMaterialfv_3_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glMaterialfv_3_super object_ a1 a2 a3 = (glMaterialfv_3_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glMaterialfv_3_impl :: NullGL10 -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glMaterialfv_3_impl this face pname params = do
        pure (())


glMaterialx :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glMaterialx object_ a1 a2 a3 = jmethod object_ "glMaterialx" (\() -> (glMaterialx_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glMaterialx_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glMaterialx_super object_ a1 a2 a3 = (glMaterialx_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glMaterialx_impl :: NullGL10 -> Int -> Int -> Int -> IO (())
glMaterialx_impl this face pname param = do
        pure ()


glMaterialxv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glMaterialxv object_ a1 a2 a3 a4 = jmethod object_ "glMaterialxv" (\() -> (glMaterialxv_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4

glMaterialxv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glMaterialxv_super object_ a1 a2 a3 a4 = (glMaterialxv_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4

glMaterialxv_impl :: NullGL10 -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glMaterialxv_impl this face pname params offset = do
        pure ()


glMaterialxv_3 :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glMaterialxv_3 object_ a1 a2 a3 = jmethod object_ "glMaterialxv_3" (\() -> (glMaterialxv_3_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glMaterialxv_3_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glMaterialxv_3_super object_ a1 a2 a3 = (glMaterialxv_3_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glMaterialxv_3_impl :: NullGL10 -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glMaterialxv_3_impl this face pname params = do
        pure ()


glMatrixMode :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glMatrixMode object_ a1 = jmethod object_ "glMatrixMode" (\() -> (glMatrixMode_impl (javaCast object_ :: NullGL10))) () a1

glMatrixMode_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glMatrixMode_super object_ a1 = (glMatrixMode_impl (javaCast object_ :: NullGL10)) a1

glMatrixMode_impl :: NullGL10 -> Int -> IO (())
glMatrixMode_impl this mode = do
        pure (())


glMultMatrixf :: (JavaObjectClass this_) => this_ -> JavaArray (Float) -> Int -> IO (())
glMultMatrixf object_ a1 a2 = jmethod object_ "glMultMatrixf" (\() -> (glMultMatrixf_impl (javaCast object_ :: NullGL10))) () a1 a2

glMultMatrixf_super :: (JavaObjectClass this_) => this_ -> JavaArray (Float) -> Int -> IO (())
glMultMatrixf_super object_ a1 a2 = (glMultMatrixf_impl (javaCast object_ :: NullGL10)) a1 a2

glMultMatrixf_impl :: NullGL10 -> JavaArray (Float) -> Int -> IO (())
glMultMatrixf_impl this m offset = do
        pure (())


glMultMatrixf_1 :: (JavaObjectClass this_) => this_ -> FloatBuffer.FloatBuffer -> IO (())
glMultMatrixf_1 object_ a1 = jmethod object_ "glMultMatrixf_1" (\() -> (glMultMatrixf_1_impl (javaCast object_ :: NullGL10))) () a1

glMultMatrixf_1_super :: (JavaObjectClass this_) => this_ -> FloatBuffer.FloatBuffer -> IO (())
glMultMatrixf_1_super object_ a1 = (glMultMatrixf_1_impl (javaCast object_ :: NullGL10)) a1

glMultMatrixf_1_impl :: NullGL10 -> FloatBuffer.FloatBuffer -> IO (())
glMultMatrixf_1_impl this m = do
        pure (())


glMultMatrixx :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> IO (())
glMultMatrixx object_ a1 a2 = jmethod object_ "glMultMatrixx" (\() -> (glMultMatrixx_impl (javaCast object_ :: NullGL10))) () a1 a2

glMultMatrixx_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> IO (())
glMultMatrixx_super object_ a1 a2 = (glMultMatrixx_impl (javaCast object_ :: NullGL10)) a1 a2

glMultMatrixx_impl :: NullGL10 -> JavaArray (Int) -> Int -> IO (())
glMultMatrixx_impl this m offset = do
        pure ()


glMultMatrixx_1 :: (JavaObjectClass this_) => this_ -> IntBuffer.IntBuffer -> IO (())
glMultMatrixx_1 object_ a1 = jmethod object_ "glMultMatrixx_1" (\() -> (glMultMatrixx_1_impl (javaCast object_ :: NullGL10))) () a1

glMultMatrixx_1_super :: (JavaObjectClass this_) => this_ -> IntBuffer.IntBuffer -> IO (())
glMultMatrixx_1_super object_ a1 = (glMultMatrixx_1_impl (javaCast object_ :: NullGL10)) a1

glMultMatrixx_1_impl :: NullGL10 -> IntBuffer.IntBuffer -> IO (())
glMultMatrixx_1_impl this m = do
        pure ()


glMultiTexCoord4f :: (JavaObjectClass this_) => this_ -> Int -> Float -> Float -> Float -> Float -> IO (())
glMultiTexCoord4f object_ a1 a2 a3 a4 a5 = jmethod object_ "glMultiTexCoord4f" (\() -> (glMultiTexCoord4f_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4 a5

glMultiTexCoord4f_super :: (JavaObjectClass this_) => this_ -> Int -> Float -> Float -> Float -> Float -> IO (())
glMultiTexCoord4f_super object_ a1 a2 a3 a4 a5 = (glMultiTexCoord4f_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4 a5

glMultiTexCoord4f_impl :: NullGL10 -> Int -> Float -> Float -> Float -> Float -> IO (())
glMultiTexCoord4f_impl this target s t r q = do
        pure (())


glMultiTexCoord4x :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> IO (())
glMultiTexCoord4x object_ a1 a2 a3 a4 a5 = jmethod object_ "glMultiTexCoord4x" (\() -> (glMultiTexCoord4x_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4 a5

glMultiTexCoord4x_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> IO (())
glMultiTexCoord4x_super object_ a1 a2 a3 a4 a5 = (glMultiTexCoord4x_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4 a5

glMultiTexCoord4x_impl :: NullGL10 -> Int -> Int -> Int -> Int -> Int -> IO (())
glMultiTexCoord4x_impl this target s t r q = do
        pure ()


glNormal3f :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glNormal3f object_ a1 a2 a3 = jmethod object_ "glNormal3f" (\() -> (glNormal3f_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glNormal3f_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glNormal3f_super object_ a1 a2 a3 = (glNormal3f_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glNormal3f_impl :: NullGL10 -> Float -> Float -> Float -> IO (())
glNormal3f_impl this nx ny nz = do
        pure (())


glNormal3x :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glNormal3x object_ a1 a2 a3 = jmethod object_ "glNormal3x" (\() -> (glNormal3x_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glNormal3x_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glNormal3x_super object_ a1 a2 a3 = (glNormal3x_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glNormal3x_impl :: NullGL10 -> Int -> Int -> Int -> IO (())
glNormal3x_impl this nx ny nz = do
        pure ()


glNormalPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Buffer.Buffer -> IO (())
glNormalPointer object_ a1 a2 a3 = jmethod object_ "glNormalPointer" (\() -> (glNormalPointer_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glNormalPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Buffer.Buffer -> IO (())
glNormalPointer_super object_ a1 a2 a3 = (glNormalPointer_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glNormalPointer_impl :: NullGL10 -> Int -> Int -> Buffer.Buffer -> IO (())
glNormalPointer_impl this type_ stride pointer = do
        pure (())


glOrthof :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glOrthof object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "glOrthof" (\() -> (glOrthof_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4 a5 a6

glOrthof_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glOrthof_super object_ a1 a2 a3 a4 a5 a6 = (glOrthof_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4 a5 a6

glOrthof_impl :: NullGL10 -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glOrthof_impl this left right bottom top zNear zFar = do
        pure (())


glOrthox :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glOrthox object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "glOrthox" (\() -> (glOrthox_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4 a5 a6

glOrthox_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glOrthox_super object_ a1 a2 a3 a4 a5 a6 = (glOrthox_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4 a5 a6

glOrthox_impl :: NullGL10 -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glOrthox_impl this left right bottom top zNear zFar = do
        pure ()


glPixelStorei :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glPixelStorei object_ a1 a2 = jmethod object_ "glPixelStorei" (\() -> (glPixelStorei_impl (javaCast object_ :: NullGL10))) () a1 a2

glPixelStorei_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glPixelStorei_super object_ a1 a2 = (glPixelStorei_impl (javaCast object_ :: NullGL10)) a1 a2

glPixelStorei_impl :: NullGL10 -> Int -> Int -> IO (())
glPixelStorei_impl this pname param = do
        pure (())


glPointSize :: (JavaObjectClass this_) => this_ -> Float -> IO (())
glPointSize object_ a1 = jmethod object_ "glPointSize" (\() -> (glPointSize_impl (javaCast object_ :: NullGL10))) () a1

glPointSize_super :: (JavaObjectClass this_) => this_ -> Float -> IO (())
glPointSize_super object_ a1 = (glPointSize_impl (javaCast object_ :: NullGL10)) a1

glPointSize_impl :: NullGL10 -> Float -> IO (())
glPointSize_impl this size = do
        pure (())


glPointSizex :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glPointSizex object_ a1 = jmethod object_ "glPointSizex" (\() -> (glPointSizex_impl (javaCast object_ :: NullGL10))) () a1

glPointSizex_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glPointSizex_super object_ a1 = (glPointSizex_impl (javaCast object_ :: NullGL10)) a1

glPointSizex_impl :: NullGL10 -> Int -> IO (())
glPointSizex_impl this size = do
        pure ()


glPolygonOffset :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
glPolygonOffset object_ a1 a2 = jmethod object_ "glPolygonOffset" (\() -> (glPolygonOffset_impl (javaCast object_ :: NullGL10))) () a1 a2

glPolygonOffset_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
glPolygonOffset_super object_ a1 a2 = (glPolygonOffset_impl (javaCast object_ :: NullGL10)) a1 a2

glPolygonOffset_impl :: NullGL10 -> Float -> Float -> IO (())
glPolygonOffset_impl this factor units = do
        pure (())


glPolygonOffsetx :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glPolygonOffsetx object_ a1 a2 = jmethod object_ "glPolygonOffsetx" (\() -> (glPolygonOffsetx_impl (javaCast object_ :: NullGL10))) () a1 a2

glPolygonOffsetx_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glPolygonOffsetx_super object_ a1 a2 = (glPolygonOffsetx_impl (javaCast object_ :: NullGL10)) a1 a2

glPolygonOffsetx_impl :: NullGL10 -> Int -> Int -> IO (())
glPolygonOffsetx_impl this factor units = do
        pure ()


glPopMatrix :: (JavaObjectClass this_) => this_ -> IO (())
glPopMatrix object_ = jmethod object_ "glPopMatrix" (\() -> (glPopMatrix_impl (javaCast object_ :: NullGL10))) ()

glPopMatrix_super :: (JavaObjectClass this_) => this_ -> IO (())
glPopMatrix_super object_ = (glPopMatrix_impl (javaCast object_ :: NullGL10))

glPopMatrix_impl :: NullGL10 -> IO (())
glPopMatrix_impl this = do
        pure (())


glPushMatrix :: (JavaObjectClass this_) => this_ -> IO (())
glPushMatrix object_ = jmethod object_ "glPushMatrix" (\() -> (glPushMatrix_impl (javaCast object_ :: NullGL10))) ()

glPushMatrix_super :: (JavaObjectClass this_) => this_ -> IO (())
glPushMatrix_super object_ = (glPushMatrix_impl (javaCast object_ :: NullGL10))

glPushMatrix_impl :: NullGL10 -> IO (())
glPushMatrix_impl this = do
        pure (())


glReadPixels :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glReadPixels object_ a1 a2 a3 a4 a5 a6 a7 = jmethod object_ "glReadPixels" (\() -> (glReadPixels_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4 a5 a6 a7

glReadPixels_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glReadPixels_super object_ a1 a2 a3 a4 a5 a6 a7 = (glReadPixels_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4 a5 a6 a7

glReadPixels_impl :: NullGL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glReadPixels_impl this x y width height format type_ pixels = do
        pure (())


glRotatef :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (())
glRotatef object_ a1 a2 a3 a4 = jmethod object_ "glRotatef" (\() -> (glRotatef_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4

glRotatef_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (())
glRotatef_super object_ a1 a2 a3 a4 = (glRotatef_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4

glRotatef_impl :: NullGL10 -> Float -> Float -> Float -> Float -> IO (())
glRotatef_impl this angle x y z = do
        pure (())


glRotatex :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glRotatex object_ a1 a2 a3 a4 = jmethod object_ "glRotatex" (\() -> (glRotatex_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4

glRotatex_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glRotatex_super object_ a1 a2 a3 a4 = (glRotatex_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4

glRotatex_impl :: NullGL10 -> Int -> Int -> Int -> Int -> IO (())
glRotatex_impl this angle x y z = do
        pure (())


glSampleCoverage :: (JavaObjectClass this_) => this_ -> Float -> Bool -> IO (())
glSampleCoverage object_ a1 a2 = jmethod object_ "glSampleCoverage" (\() -> (glSampleCoverage_impl (javaCast object_ :: NullGL10))) () a1 a2

glSampleCoverage_super :: (JavaObjectClass this_) => this_ -> Float -> Bool -> IO (())
glSampleCoverage_super object_ a1 a2 = (glSampleCoverage_impl (javaCast object_ :: NullGL10)) a1 a2

glSampleCoverage_impl :: NullGL10 -> Float -> Bool -> IO (())
glSampleCoverage_impl this value invert = do
        pure (())


glSampleCoveragex :: (JavaObjectClass this_) => this_ -> Int -> Bool -> IO (())
glSampleCoveragex object_ a1 a2 = jmethod object_ "glSampleCoveragex" (\() -> (glSampleCoveragex_impl (javaCast object_ :: NullGL10))) () a1 a2

glSampleCoveragex_super :: (JavaObjectClass this_) => this_ -> Int -> Bool -> IO (())
glSampleCoveragex_super object_ a1 a2 = (glSampleCoveragex_impl (javaCast object_ :: NullGL10)) a1 a2

glSampleCoveragex_impl :: NullGL10 -> Int -> Bool -> IO (())
glSampleCoveragex_impl this value invert = do
        pure ()


glScalef :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glScalef object_ a1 a2 a3 = jmethod object_ "glScalef" (\() -> (glScalef_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glScalef_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glScalef_super object_ a1 a2 a3 = (glScalef_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glScalef_impl :: NullGL10 -> Float -> Float -> Float -> IO (())
glScalef_impl this x y z = do
        pure (())


glScalex :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glScalex object_ a1 a2 a3 = jmethod object_ "glScalex" (\() -> (glScalex_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glScalex_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glScalex_super object_ a1 a2 a3 = (glScalex_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glScalex_impl :: NullGL10 -> Int -> Int -> Int -> IO (())
glScalex_impl this x y z = do
        pure (())


glScissor :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glScissor object_ a1 a2 a3 a4 = jmethod object_ "glScissor" (\() -> (glScissor_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4

glScissor_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glScissor_super object_ a1 a2 a3 a4 = (glScissor_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4

glScissor_impl :: NullGL10 -> Int -> Int -> Int -> Int -> IO (())
glScissor_impl this x y width height = do
        pure (())


glShadeModel :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glShadeModel object_ a1 = jmethod object_ "glShadeModel" (\() -> (glShadeModel_impl (javaCast object_ :: NullGL10))) () a1

glShadeModel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glShadeModel_super object_ a1 = (glShadeModel_impl (javaCast object_ :: NullGL10)) a1

glShadeModel_impl :: NullGL10 -> Int -> IO (())
glShadeModel_impl this mode = do
        pure (())


glStencilFunc :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glStencilFunc object_ a1 a2 a3 = jmethod object_ "glStencilFunc" (\() -> (glStencilFunc_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glStencilFunc_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glStencilFunc_super object_ a1 a2 a3 = (glStencilFunc_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glStencilFunc_impl :: NullGL10 -> Int -> Int -> Int -> IO (())
glStencilFunc_impl this func ref mask = do
        pure (())


glStencilMask :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glStencilMask object_ a1 = jmethod object_ "glStencilMask" (\() -> (glStencilMask_impl (javaCast object_ :: NullGL10))) () a1

glStencilMask_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glStencilMask_super object_ a1 = (glStencilMask_impl (javaCast object_ :: NullGL10)) a1

glStencilMask_impl :: NullGL10 -> Int -> IO (())
glStencilMask_impl this mask = do
        pure (())


glStencilOp :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glStencilOp object_ a1 a2 a3 = jmethod object_ "glStencilOp" (\() -> (glStencilOp_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glStencilOp_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glStencilOp_super object_ a1 a2 a3 = (glStencilOp_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glStencilOp_impl :: NullGL10 -> Int -> Int -> Int -> IO (())
glStencilOp_impl this fail zfail zpass = do
        pure (())


glTexCoordPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexCoordPointer object_ a1 a2 a3 a4 = jmethod object_ "glTexCoordPointer" (\() -> (glTexCoordPointer_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4

glTexCoordPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexCoordPointer_super object_ a1 a2 a3 a4 = (glTexCoordPointer_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4

glTexCoordPointer_impl :: NullGL10 -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexCoordPointer_impl this size type_ stride pointer = do
        pure (())


glTexEnvf :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glTexEnvf object_ a1 a2 a3 = jmethod object_ "glTexEnvf" (\() -> (glTexEnvf_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glTexEnvf_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glTexEnvf_super object_ a1 a2 a3 = (glTexEnvf_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glTexEnvf_impl :: NullGL10 -> Int -> Int -> Float -> IO (())
glTexEnvf_impl this target pname param = do
        pure (())


glTexEnvfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glTexEnvfv object_ a1 a2 a3 a4 = jmethod object_ "glTexEnvfv" (\() -> (glTexEnvfv_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4

glTexEnvfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glTexEnvfv_super object_ a1 a2 a3 a4 = (glTexEnvfv_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4

glTexEnvfv_impl :: NullGL10 -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glTexEnvfv_impl this target pname params offset = do
        pure (())


glTexEnvfv_3 :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glTexEnvfv_3 object_ a1 a2 a3 = jmethod object_ "glTexEnvfv_3" (\() -> (glTexEnvfv_3_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glTexEnvfv_3_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glTexEnvfv_3_super object_ a1 a2 a3 = (glTexEnvfv_3_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glTexEnvfv_3_impl :: NullGL10 -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glTexEnvfv_3_impl this target pname params = do
        pure (())


glTexEnvx :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glTexEnvx object_ a1 a2 a3 = jmethod object_ "glTexEnvx" (\() -> (glTexEnvx_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glTexEnvx_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glTexEnvx_super object_ a1 a2 a3 = (glTexEnvx_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glTexEnvx_impl :: NullGL10 -> Int -> Int -> Int -> IO (())
glTexEnvx_impl this target pname param = do
        pure ()


glTexEnvxv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glTexEnvxv object_ a1 a2 a3 a4 = jmethod object_ "glTexEnvxv" (\() -> (glTexEnvxv_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4

glTexEnvxv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glTexEnvxv_super object_ a1 a2 a3 a4 = (glTexEnvxv_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4

glTexEnvxv_impl :: NullGL10 -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glTexEnvxv_impl this target pname params offset = do
        pure ()


glTexEnvxv_3 :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glTexEnvxv_3 object_ a1 a2 a3 = jmethod object_ "glTexEnvxv_3" (\() -> (glTexEnvxv_3_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glTexEnvxv_3_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glTexEnvxv_3_super object_ a1 a2 a3 = (glTexEnvxv_3_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glTexEnvxv_3_impl :: NullGL10 -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glTexEnvxv_3_impl this target pname params = do
        pure ()


glTexImage2D :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexImage2D object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = jmethod object_ "glTexImage2D" (\() -> (glTexImage2D_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4 a5 a6 a7 a8 a9

glTexImage2D_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexImage2D_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = (glTexImage2D_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4 a5 a6 a7 a8 a9

glTexImage2D_impl :: NullGL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexImage2D_impl this target level internalformat width height border format type_ pixels = do
        pure (())


glTexParameterf :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glTexParameterf object_ a1 a2 a3 = jmethod object_ "glTexParameterf" (\() -> (glTexParameterf_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glTexParameterf_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glTexParameterf_super object_ a1 a2 a3 = (glTexParameterf_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glTexParameterf_impl :: NullGL10 -> Int -> Int -> Float -> IO (())
glTexParameterf_impl this target pname param = do
        pure (())


glTexParameterx :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glTexParameterx object_ a1 a2 a3 = jmethod object_ "glTexParameterx" (\() -> (glTexParameterx_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glTexParameterx_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glTexParameterx_super object_ a1 a2 a3 = (glTexParameterx_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glTexParameterx_impl :: NullGL10 -> Int -> Int -> Int -> IO (())
glTexParameterx_impl this target pname param = do
        pure ()


glTexSubImage2D :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexSubImage2D object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = jmethod object_ "glTexSubImage2D" (\() -> (glTexSubImage2D_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4 a5 a6 a7 a8 a9

glTexSubImage2D_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexSubImage2D_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = (glTexSubImage2D_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4 a5 a6 a7 a8 a9

glTexSubImage2D_impl :: NullGL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexSubImage2D_impl this target level xoffset yoffset width height format type_ pixels = do
        pure (())


glTranslatef :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glTranslatef object_ a1 a2 a3 = jmethod object_ "glTranslatef" (\() -> (glTranslatef_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glTranslatef_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glTranslatef_super object_ a1 a2 a3 = (glTranslatef_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glTranslatef_impl :: NullGL10 -> Float -> Float -> Float -> IO (())
glTranslatef_impl this x y z = do
        pure (())


glTranslatex :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glTranslatex object_ a1 a2 a3 = jmethod object_ "glTranslatex" (\() -> (glTranslatex_impl (javaCast object_ :: NullGL10))) () a1 a2 a3

glTranslatex_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glTranslatex_super object_ a1 a2 a3 = (glTranslatex_impl (javaCast object_ :: NullGL10)) a1 a2 a3

glTranslatex_impl :: NullGL10 -> Int -> Int -> Int -> IO (())
glTranslatex_impl this x y z = do
        pure ()


glVertexPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glVertexPointer object_ a1 a2 a3 a4 = jmethod object_ "glVertexPointer" (\() -> (glVertexPointer_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4

glVertexPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glVertexPointer_super object_ a1 a2 a3 a4 = (glVertexPointer_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4

glVertexPointer_impl :: NullGL10 -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glVertexPointer_impl this size type_ stride pointer = do
        pure (())


glViewport :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glViewport object_ a1 a2 a3 a4 = jmethod object_ "glViewport" (\() -> (glViewport_impl (javaCast object_ :: NullGL10))) () a1 a2 a3 a4

glViewport_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glViewport_super object_ a1 a2 a3 a4 = (glViewport_impl (javaCast object_ :: NullGL10)) a1 a2 a3 a4

glViewport_impl :: NullGL10 -> Int -> Int -> Int -> Int -> IO (())
glViewport_impl this x y width height = do
        pure (())


