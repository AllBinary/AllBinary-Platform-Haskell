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
module JOGL11 (module JOGL11, module JOGL10) where

import JOGL10 hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, glBindBuffer, glBindBuffer_super, glBindBuffer_impl, glBufferData, glBufferData_super, glBufferData_impl, glBufferSubData, glBufferSubData_super, glBufferSubData_impl, glClipPlanef, glClipPlanef_super, glClipPlanef_impl, glClipPlanef, glClipPlanef_super, glClipPlanef_impl, glColor4ub, glColor4ub_super, glColor4ub_impl, glColorPointer, glColorPointer_super, glColorPointer_impl, glDeleteBuffers, glDeleteBuffers_super, glDeleteBuffers_impl, glDeleteBuffers, glDeleteBuffers_super, glDeleteBuffers_impl, glDrawElements, glDrawElements_super, glDrawElements_impl, glGenBuffers, glGenBuffers_super, glGenBuffers_impl, glGenBuffers, glGenBuffers_super, glGenBuffers_impl, glGetBufferParameteriv, glGetBufferParameteriv_super, glGetBufferParameteriv_impl, glGetBufferParameteriv, glGetBufferParameteriv_super, glGetBufferParameteriv_impl, glGetClipPlanef, glGetClipPlanef_super, glGetClipPlanef_impl, glGetClipPlanef, glGetClipPlanef_super, glGetClipPlanef_impl, glGetFloatv, glGetFloatv_super, glGetFloatv_impl, glGetFloatv, glGetFloatv_super, glGetFloatv_impl, glGetLightfv, glGetLightfv_super, glGetLightfv_impl, glGetLightfv, glGetLightfv_super, glGetLightfv_impl, glGetMaterialfv, glGetMaterialfv_super, glGetMaterialfv_impl, glGetMaterialfv, glGetMaterialfv_super, glGetMaterialfv_impl, glGetTexEnviv, glGetTexEnviv_super, glGetTexEnviv_impl, glGetTexEnviv, glGetTexEnviv_super, glGetTexEnviv_impl, glGetTexParameterfv, glGetTexParameterfv_super, glGetTexParameterfv_impl, glGetTexParameterfv, glGetTexParameterfv_super, glGetTexParameterfv_impl, glGetTexParameteriv, glGetTexParameteriv_super, glGetTexParameteriv_impl, glGetTexParameteriv, glGetTexParameteriv_super, glGetTexParameteriv_impl, glIsBuffer, glIsBuffer_super, glIsBuffer_impl, glIsEnabled, glIsEnabled_super, glIsEnabled_impl, glIsTexture, glIsTexture_super, glIsTexture_impl, glNormalPointer, glNormalPointer_super, glNormalPointer_impl, glPointParameterf, glPointParameterf_super, glPointParameterf_impl, glPointParameterfv, glPointParameterfv_super, glPointParameterfv_impl, glPointParameterfv, glPointParameterfv_super, glPointParameterfv_impl, glTexCoordPointer, glTexCoordPointer_super, glTexCoordPointer_impl, glTexEnvi, glTexEnvi_super, glTexEnvi_impl, glTexEnviv, glTexEnviv_super, glTexEnviv_impl, glTexEnviv, glTexEnviv_super, glTexEnviv_impl, glTexParameterfv, glTexParameterfv_super, glTexParameterfv_impl, glTexParameterfv, glTexParameterfv_super, glTexParameterfv_impl, glTexParameteri, glTexParameteri_super, glTexParameteri_impl, glTexParameteriv, glTexParameteriv_super, glTexParameteriv_impl, glTexParameteriv, glTexParameteriv_super, glTexParameteriv_impl, glTexParameterxv, glTexParameterxv_super, glTexParameterxv_impl, glVertexPointer, glVertexPointer_super, glVertexPointer_impl, gl11)
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
import qualified Buffer -- same package or java.lang
import qualified FloatBuffer -- same package or java.lang
import qualified IntBuffer -- same package or java.lang
import qualified GL -- com.jogamp.opengl.GL
import qualified GL2 -- com.jogamp.opengl.GL2
import qualified JOGL10
import qualified GL11

-- implements GL11
data JOGL11 = JOGL11
    { header_ :: JavaHeader
    , base :: JOGL10.JOGL10
    , gl11 :: IORef (GL2.GL2)
    }

instance JavaNull JOGL11 where
    javaNull = javaNullRecord "JOGL11"

instance JavaEquals JOGL11 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq JOGL11 where
    (==) = jrecordEquals

instance JavaObjectClass JOGL11 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO JOGL11
newRecord_ = do
    base <- JOGL10.newRecord_
    let header_ = base.header_
    gl11 <- newIORef javaNull
    let this = JOGL11 header_ base gl11
    jregisterLevel header_ this
    GL11.registerInterface_ header_
    jregisterMethod header_ "glBindBuffer" (\() -> glBindBuffer_impl this)
    jregisterMethod header_ "glBufferData" (\() -> glBufferData_impl this)
    jregisterMethod header_ "glBufferSubData" (\() -> glBufferSubData_impl this)
    jregisterMethod header_ "glClipPlanef" (\() -> glClipPlanef_impl this)
    jregisterMethod header_ "glClipPlanef" (\() -> glClipPlanef_impl this)
    jregisterMethod header_ "glColor4ub" (\() -> glColor4ub_impl this)
    jregisterMethod header_ "glColorPointer" (\() -> glColorPointer_impl this)
    jregisterMethod header_ "glDeleteBuffers" (\() -> glDeleteBuffers_impl this)
    jregisterMethod header_ "glDeleteBuffers" (\() -> glDeleteBuffers_impl this)
    jregisterMethod header_ "glDrawElements" (\() -> glDrawElements_impl this)
    jregisterMethod header_ "glGenBuffers" (\() -> glGenBuffers_impl this)
    jregisterMethod header_ "glGenBuffers" (\() -> glGenBuffers_impl this)
    jregisterMethod header_ "glGetBufferParameteriv" (\() -> glGetBufferParameteriv_impl this)
    jregisterMethod header_ "glGetBufferParameteriv" (\() -> glGetBufferParameteriv_impl this)
    jregisterMethod header_ "glGetClipPlanef" (\() -> glGetClipPlanef_impl this)
    jregisterMethod header_ "glGetClipPlanef" (\() -> glGetClipPlanef_impl this)
    jregisterMethod header_ "glGetFloatv" (\() -> glGetFloatv_impl this)
    jregisterMethod header_ "glGetFloatv" (\() -> glGetFloatv_impl this)
    jregisterMethod header_ "glGetLightfv" (\() -> glGetLightfv_impl this)
    jregisterMethod header_ "glGetLightfv" (\() -> glGetLightfv_impl this)
    jregisterMethod header_ "glGetMaterialfv" (\() -> glGetMaterialfv_impl this)
    jregisterMethod header_ "glGetMaterialfv" (\() -> glGetMaterialfv_impl this)
    jregisterMethod header_ "glGetTexEnviv" (\() -> glGetTexEnviv_impl this)
    jregisterMethod header_ "glGetTexEnviv" (\() -> glGetTexEnviv_impl this)
    jregisterMethod header_ "glGetTexParameterfv" (\() -> glGetTexParameterfv_impl this)
    jregisterMethod header_ "glGetTexParameterfv" (\() -> glGetTexParameterfv_impl this)
    jregisterMethod header_ "glGetTexParameteriv" (\() -> glGetTexParameteriv_impl this)
    jregisterMethod header_ "glGetTexParameteriv" (\() -> glGetTexParameteriv_impl this)
    jregisterMethod header_ "glIsBuffer" (\() -> glIsBuffer_impl this)
    jregisterMethod header_ "glIsEnabled" (\() -> glIsEnabled_impl this)
    jregisterMethod header_ "glIsTexture" (\() -> glIsTexture_impl this)
    jregisterMethod header_ "glNormalPointer" (\() -> glNormalPointer_impl this)
    jregisterMethod header_ "glPointParameterf" (\() -> glPointParameterf_impl this)
    jregisterMethod header_ "glPointParameterfv" (\() -> glPointParameterfv_impl this)
    jregisterMethod header_ "glPointParameterfv" (\() -> glPointParameterfv_impl this)
    jregisterMethod header_ "glTexCoordPointer" (\() -> glTexCoordPointer_impl this)
    jregisterMethod header_ "glTexEnvi" (\() -> glTexEnvi_impl this)
    jregisterMethod header_ "glTexEnviv" (\() -> glTexEnviv_impl this)
    jregisterMethod header_ "glTexEnviv" (\() -> glTexEnviv_impl this)
    jregisterMethod header_ "glTexParameterfv" (\() -> glTexParameterfv_impl this)
    jregisterMethod header_ "glTexParameterfv" (\() -> glTexParameterfv_impl this)
    jregisterMethod header_ "glTexParameteri" (\() -> glTexParameteri_impl this)
    jregisterMethod header_ "glTexParameteriv" (\() -> glTexParameteriv_impl this)
    jregisterMethod header_ "glTexParameteriv" (\() -> glTexParameteriv_impl this)
    jregisterMethod header_ "glTexParameterxv" (\() -> glTexParameterxv_impl this)
    jregisterMethod header_ "glVertexPointer" (\() -> glVertexPointer_impl this)
    pure this

initFields_ :: JOGL11 -> IO ()
initFields_ this = do
    jset this.gl11 (javaNull)
    pure ()

new_1 :: GL.GL -> IO JOGL11
new_1 gl = do
    this <- newRecord_
    init_1 this gl
    pure this

init_1 :: JOGL11 -> GL.GL -> IO ()
init_1 this gl = do
        init_2 this (gl) (javaCast gl :: GL2.GL2)
        pure () -- this(...) is in the record above
        pure ()

new_2 :: GL.GL -> GL2.GL2 -> IO JOGL11
new_2 gl gl2 = do
    this <- newRecord_
    init_2 this gl gl2
    pure this

init_2 :: JOGL11 -> GL.GL -> GL2.GL2 -> IO ()
init_2 this gl gl2 = do
        JOGL10.init_2 this.base (gl) (gl2)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (JOGL10.getJOGLGL this)
        jset (this).gl11 (assignedValue)
        pure ()


glBindBuffer :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glBindBuffer object_ a1 a2 = jmethod object_ "glBindBuffer" (\() -> (glBindBuffer_impl (javaCast object_ :: JOGL11))) () a1 a2

glBindBuffer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glBindBuffer_super object_ a1 a2 = (glBindBuffer_impl (javaCast object_ :: JOGL11)) a1 a2

glBindBuffer_impl :: JOGL11 -> Int -> Int -> IO (())
glBindBuffer_impl this target buffer = do
        Control.Monad.void (GL2.glBindBuffer ((jget (this).gl11)) target buffer)
        pure ()


glBufferData :: (JavaObjectClass this_) => this_ -> Int -> Int -> Buffer.Buffer -> Int -> IO (())
glBufferData object_ a1 a2 a3 a4 = jmethod object_ "glBufferData" (\() -> (glBufferData_impl (javaCast object_ :: JOGL11))) () a1 a2 a3 a4

glBufferData_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Buffer.Buffer -> Int -> IO (())
glBufferData_super object_ a1 a2 a3 a4 = (glBufferData_impl (javaCast object_ :: JOGL11)) a1 a2 a3 a4

glBufferData_impl :: JOGL11 -> Int -> Int -> Buffer.Buffer -> Int -> IO (())
glBufferData_impl this target size data_ usage = do
        Control.Monad.void (GL2.glBufferData ((jget (this).gl11)) target size data_ usage)
        pure ()


glBufferSubData :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glBufferSubData object_ a1 a2 a3 a4 = jmethod object_ "glBufferSubData" (\() -> (glBufferSubData_impl (javaCast object_ :: JOGL11))) () a1 a2 a3 a4

glBufferSubData_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glBufferSubData_super object_ a1 a2 a3 a4 = (glBufferSubData_impl (javaCast object_ :: JOGL11)) a1 a2 a3 a4

glBufferSubData_impl :: JOGL11 -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glBufferSubData_impl this target offset size data_ = do
        Control.Monad.void (GL2.glBufferSubData ((jget (this).gl11)) target offset size data_)
        pure ()


glClipPlanef :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glClipPlanef object_ a1 a2 a3 = jmethod object_ "glClipPlanef" (\() -> (glClipPlanef_impl (javaCast object_ :: JOGL11))) () a1 a2 a3

glClipPlanef_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glClipPlanef_super object_ a1 a2 a3 = (glClipPlanef_impl (javaCast object_ :: JOGL11)) a1 a2 a3

glClipPlanef_impl :: JOGL11 -> Int -> JavaArray (Float) -> Int -> IO (())
glClipPlanef_impl this plane equation offset = do
        Control.Monad.void (GL2.glClipPlanef ((jget (this).gl11)) plane equation offset)
        pure ()


-- Java overload of glClipPlanef with a different parameter count: give it a different name
glClipPlanef :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glClipPlanef object_ a1 a2 = jmethod object_ "glClipPlanef" (\() -> (glClipPlanef_impl (javaCast object_ :: JOGL11))) () a1 a2

glClipPlanef_super :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glClipPlanef_super object_ a1 a2 = (glClipPlanef_impl (javaCast object_ :: JOGL11)) a1 a2

glClipPlanef_impl :: JOGL11 -> Int -> FloatBuffer.FloatBuffer -> IO (())
glClipPlanef_impl this plane equation = do
        Control.Monad.void (GL2.glClipPlanef ((jget (this).gl11)) plane equation)
        pure ()


glColor4ub :: (JavaObjectClass this_) => this_ -> Int8 -> Int8 -> Int8 -> Int8 -> IO (())
glColor4ub object_ a1 a2 a3 a4 = jmethod object_ "glColor4ub" (\() -> (glColor4ub_impl (javaCast object_ :: JOGL11))) () a1 a2 a3 a4

glColor4ub_super :: (JavaObjectClass this_) => this_ -> Int8 -> Int8 -> Int8 -> Int8 -> IO (())
glColor4ub_super object_ a1 a2 a3 a4 = (glColor4ub_impl (javaCast object_ :: JOGL11)) a1 a2 a3 a4

glColor4ub_impl :: JOGL11 -> Int8 -> Int8 -> Int8 -> Int8 -> IO (())
glColor4ub_impl this red green blue alpha = do
        Control.Monad.void (GL2.glColor4ub ((jget (this).gl11)) red green blue alpha)
        pure ()


glColorPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glColorPointer object_ a1 a2 a3 a4 = jmethod object_ "glColorPointer" (\() -> (glColorPointer_impl (javaCast object_ :: JOGL11))) () a1 a2 a3 a4

glColorPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glColorPointer_super object_ a1 a2 a3 a4 = (glColorPointer_impl (javaCast object_ :: JOGL11)) a1 a2 a3 a4

glColorPointer_impl :: JOGL11 -> Int -> Int -> Int -> Int -> IO (())
glColorPointer_impl this size type_ stride offset = do
        Control.Monad.void (GL2.glColorPointer ((jget (this).gl11)) size type_ stride offset)
        pure ()


glDeleteBuffers :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glDeleteBuffers object_ a1 a2 a3 = jmethod object_ "glDeleteBuffers" (\() -> (glDeleteBuffers_impl (javaCast object_ :: JOGL11))) () a1 a2 a3

glDeleteBuffers_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glDeleteBuffers_super object_ a1 a2 a3 = (glDeleteBuffers_impl (javaCast object_ :: JOGL11)) a1 a2 a3

glDeleteBuffers_impl :: JOGL11 -> Int -> JavaArray (Int) -> Int -> IO (())
glDeleteBuffers_impl this n buffers offset = do
        Control.Monad.void (GL2.glDeleteBuffers ((jget (this).gl11)) n buffers offset)
        pure ()


-- Java overload of glDeleteBuffers with a different parameter count: give it a different name
glDeleteBuffers :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glDeleteBuffers object_ a1 a2 = jmethod object_ "glDeleteBuffers" (\() -> (glDeleteBuffers_impl (javaCast object_ :: JOGL11))) () a1 a2

glDeleteBuffers_super :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glDeleteBuffers_super object_ a1 a2 = (glDeleteBuffers_impl (javaCast object_ :: JOGL11)) a1 a2

glDeleteBuffers_impl :: JOGL11 -> Int -> IntBuffer.IntBuffer -> IO (())
glDeleteBuffers_impl this n buffers = do
        Control.Monad.void (GL2.glDeleteBuffers ((jget (this).gl11)) n buffers)
        pure ()


glDrawElements :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glDrawElements object_ a1 a2 a3 a4 = jmethod object_ "glDrawElements" (\() -> (glDrawElements_impl (javaCast object_ :: JOGL11))) () a1 a2 a3 a4

glDrawElements_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glDrawElements_super object_ a1 a2 a3 a4 = (glDrawElements_impl (javaCast object_ :: JOGL11)) a1 a2 a3 a4

glDrawElements_impl :: JOGL11 -> Int -> Int -> Int -> Int -> IO (())
glDrawElements_impl this mode count type_ offset = do
        Control.Monad.void (GL2.glDrawElements ((jget (this).gl11)) mode count type_ offset)
        pure ()


glGenBuffers :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glGenBuffers object_ a1 a2 a3 = jmethod object_ "glGenBuffers" (\() -> (glGenBuffers_impl (javaCast object_ :: JOGL11))) () a1 a2 a3

glGenBuffers_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glGenBuffers_super object_ a1 a2 a3 = (glGenBuffers_impl (javaCast object_ :: JOGL11)) a1 a2 a3

glGenBuffers_impl :: JOGL11 -> Int -> JavaArray (Int) -> Int -> IO (())
glGenBuffers_impl this n buffers offset = do
        Control.Monad.void (GL2.glGenBuffers ((jget (this).gl11)) n buffers offset)
        pure ()


-- Java overload of glGenBuffers with a different parameter count: give it a different name
glGenBuffers :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glGenBuffers object_ a1 a2 = jmethod object_ "glGenBuffers" (\() -> (glGenBuffers_impl (javaCast object_ :: JOGL11))) () a1 a2

glGenBuffers_super :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glGenBuffers_super object_ a1 a2 = (glGenBuffers_impl (javaCast object_ :: JOGL11)) a1 a2

glGenBuffers_impl :: JOGL11 -> Int -> IntBuffer.IntBuffer -> IO (())
glGenBuffers_impl this n buffers = do
        Control.Monad.void (GL2.glGenBuffers ((jget (this).gl11)) n buffers)
        pure ()


glGetBufferParameteriv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glGetBufferParameteriv object_ a1 a2 a3 a4 = jmethod object_ "glGetBufferParameteriv" (\() -> (glGetBufferParameteriv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3 a4

glGetBufferParameteriv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glGetBufferParameteriv_super object_ a1 a2 a3 a4 = (glGetBufferParameteriv_impl (javaCast object_ :: JOGL11)) a1 a2 a3 a4

glGetBufferParameteriv_impl :: JOGL11 -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glGetBufferParameteriv_impl this target pname params offset = do
        Control.Monad.void (GL2.glGetBufferParameteriv ((jget (this).gl11)) target pname params offset)
        pure ()


-- Java overload of glGetBufferParameteriv with a different parameter count: give it a different name
glGetBufferParameteriv :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glGetBufferParameteriv object_ a1 a2 a3 = jmethod object_ "glGetBufferParameteriv" (\() -> (glGetBufferParameteriv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3

glGetBufferParameteriv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glGetBufferParameteriv_super object_ a1 a2 a3 = (glGetBufferParameteriv_impl (javaCast object_ :: JOGL11)) a1 a2 a3

glGetBufferParameteriv_impl :: JOGL11 -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glGetBufferParameteriv_impl this target pname params = do
        Control.Monad.void (GL2.glGetBufferParameteriv ((jget (this).gl11)) target pname params)
        pure ()


glGetClipPlanef :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glGetClipPlanef object_ a1 a2 a3 = jmethod object_ "glGetClipPlanef" (\() -> (glGetClipPlanef_impl (javaCast object_ :: JOGL11))) () a1 a2 a3

glGetClipPlanef_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glGetClipPlanef_super object_ a1 a2 a3 = (glGetClipPlanef_impl (javaCast object_ :: JOGL11)) a1 a2 a3

glGetClipPlanef_impl :: JOGL11 -> Int -> JavaArray (Float) -> Int -> IO (())
glGetClipPlanef_impl this pname eqn offset = do
        Control.Monad.void (GL2.glGetClipPlanef ((jget (this).gl11)) pname eqn offset)
        pure ()


-- Java overload of glGetClipPlanef with a different parameter count: give it a different name
glGetClipPlanef :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetClipPlanef object_ a1 a2 = jmethod object_ "glGetClipPlanef" (\() -> (glGetClipPlanef_impl (javaCast object_ :: JOGL11))) () a1 a2

glGetClipPlanef_super :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetClipPlanef_super object_ a1 a2 = (glGetClipPlanef_impl (javaCast object_ :: JOGL11)) a1 a2

glGetClipPlanef_impl :: JOGL11 -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetClipPlanef_impl this pname eqn = do
        Control.Monad.void (GL2.glGetClipPlanef ((jget (this).gl11)) pname eqn)
        pure ()


glGetFloatv :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glGetFloatv object_ a1 a2 a3 = jmethod object_ "glGetFloatv" (\() -> (glGetFloatv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3

glGetFloatv_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glGetFloatv_super object_ a1 a2 a3 = (glGetFloatv_impl (javaCast object_ :: JOGL11)) a1 a2 a3

glGetFloatv_impl :: JOGL11 -> Int -> JavaArray (Float) -> Int -> IO (())
glGetFloatv_impl this pname params offset = do
        Control.Monad.void (GL2.glGetFloatv ((jget (this).gl11)) pname params offset)
        pure ()


-- Java overload of glGetFloatv with a different parameter count: give it a different name
glGetFloatv :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetFloatv object_ a1 a2 = jmethod object_ "glGetFloatv" (\() -> (glGetFloatv_impl (javaCast object_ :: JOGL11))) () a1 a2

glGetFloatv_super :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetFloatv_super object_ a1 a2 = (glGetFloatv_impl (javaCast object_ :: JOGL11)) a1 a2

glGetFloatv_impl :: JOGL11 -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetFloatv_impl this pname params = do
        Control.Monad.void (GL2.glGetFloatv ((jget (this).gl11)) pname params)
        pure ()


glGetLightfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glGetLightfv object_ a1 a2 a3 a4 = jmethod object_ "glGetLightfv" (\() -> (glGetLightfv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3 a4

glGetLightfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glGetLightfv_super object_ a1 a2 a3 a4 = (glGetLightfv_impl (javaCast object_ :: JOGL11)) a1 a2 a3 a4

glGetLightfv_impl :: JOGL11 -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glGetLightfv_impl this light pname params offset = do
        Control.Monad.void (GL2.glGetLightfv ((jget (this).gl11)) light pname params offset)
        pure ()


-- Java overload of glGetLightfv with a different parameter count: give it a different name
glGetLightfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetLightfv object_ a1 a2 a3 = jmethod object_ "glGetLightfv" (\() -> (glGetLightfv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3

glGetLightfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetLightfv_super object_ a1 a2 a3 = (glGetLightfv_impl (javaCast object_ :: JOGL11)) a1 a2 a3

glGetLightfv_impl :: JOGL11 -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetLightfv_impl this light pname params = do
        Control.Monad.void (GL2.glGetLightfv ((jget (this).gl11)) light pname params)
        pure ()


glGetMaterialfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glGetMaterialfv object_ a1 a2 a3 a4 = jmethod object_ "glGetMaterialfv" (\() -> (glGetMaterialfv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3 a4

glGetMaterialfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glGetMaterialfv_super object_ a1 a2 a3 a4 = (glGetMaterialfv_impl (javaCast object_ :: JOGL11)) a1 a2 a3 a4

glGetMaterialfv_impl :: JOGL11 -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glGetMaterialfv_impl this face pname params offset = do
        Control.Monad.void (GL2.glGetMaterialfv ((jget (this).gl11)) face pname params offset)
        pure ()


-- Java overload of glGetMaterialfv with a different parameter count: give it a different name
glGetMaterialfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetMaterialfv object_ a1 a2 a3 = jmethod object_ "glGetMaterialfv" (\() -> (glGetMaterialfv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3

glGetMaterialfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetMaterialfv_super object_ a1 a2 a3 = (glGetMaterialfv_impl (javaCast object_ :: JOGL11)) a1 a2 a3

glGetMaterialfv_impl :: JOGL11 -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetMaterialfv_impl this face pname params = do
        Control.Monad.void (GL2.glGetMaterialfv ((jget (this).gl11)) face pname params)
        pure ()


glGetTexEnviv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glGetTexEnviv object_ a1 a2 a3 a4 = jmethod object_ "glGetTexEnviv" (\() -> (glGetTexEnviv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3 a4

glGetTexEnviv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glGetTexEnviv_super object_ a1 a2 a3 a4 = (glGetTexEnviv_impl (javaCast object_ :: JOGL11)) a1 a2 a3 a4

glGetTexEnviv_impl :: JOGL11 -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glGetTexEnviv_impl this env pname params offset = do
        Control.Monad.void (GL2.glGetTexEnviv ((jget (this).gl11)) env pname params offset)
        pure ()


-- Java overload of glGetTexEnviv with a different parameter count: give it a different name
glGetTexEnviv :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glGetTexEnviv object_ a1 a2 a3 = jmethod object_ "glGetTexEnviv" (\() -> (glGetTexEnviv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3

glGetTexEnviv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glGetTexEnviv_super object_ a1 a2 a3 = (glGetTexEnviv_impl (javaCast object_ :: JOGL11)) a1 a2 a3

glGetTexEnviv_impl :: JOGL11 -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glGetTexEnviv_impl this env pname params = do
        Control.Monad.void (GL2.glGetTexEnviv ((jget (this).gl11)) env pname params)
        pure ()


glGetTexParameterfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glGetTexParameterfv object_ a1 a2 a3 a4 = jmethod object_ "glGetTexParameterfv" (\() -> (glGetTexParameterfv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3 a4

glGetTexParameterfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glGetTexParameterfv_super object_ a1 a2 a3 a4 = (glGetTexParameterfv_impl (javaCast object_ :: JOGL11)) a1 a2 a3 a4

glGetTexParameterfv_impl :: JOGL11 -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glGetTexParameterfv_impl this target pname params offset = do
        Control.Monad.void (GL2.glGetTexParameterfv ((jget (this).gl11)) target pname params offset)
        pure ()


-- Java overload of glGetTexParameterfv with a different parameter count: give it a different name
glGetTexParameterfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetTexParameterfv object_ a1 a2 a3 = jmethod object_ "glGetTexParameterfv" (\() -> (glGetTexParameterfv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3

glGetTexParameterfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetTexParameterfv_super object_ a1 a2 a3 = (glGetTexParameterfv_impl (javaCast object_ :: JOGL11)) a1 a2 a3

glGetTexParameterfv_impl :: JOGL11 -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetTexParameterfv_impl this target pname params = do
        Control.Monad.void (GL2.glGetTexParameterfv ((jget (this).gl11)) target pname params)
        pure ()


glGetTexParameteriv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glGetTexParameteriv object_ a1 a2 a3 a4 = jmethod object_ "glGetTexParameteriv" (\() -> (glGetTexParameteriv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3 a4

glGetTexParameteriv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glGetTexParameteriv_super object_ a1 a2 a3 a4 = (glGetTexParameteriv_impl (javaCast object_ :: JOGL11)) a1 a2 a3 a4

glGetTexParameteriv_impl :: JOGL11 -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glGetTexParameteriv_impl this target pname params offset = do
        Control.Monad.void (GL2.glGetTexParameteriv ((jget (this).gl11)) target pname params offset)
        pure ()


-- Java overload of glGetTexParameteriv with a different parameter count: give it a different name
glGetTexParameteriv :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glGetTexParameteriv object_ a1 a2 a3 = jmethod object_ "glGetTexParameteriv" (\() -> (glGetTexParameteriv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3

glGetTexParameteriv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glGetTexParameteriv_super object_ a1 a2 a3 = (glGetTexParameteriv_impl (javaCast object_ :: JOGL11)) a1 a2 a3

glGetTexParameteriv_impl :: JOGL11 -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glGetTexParameteriv_impl this target pname params = do
        Control.Monad.void (GL2.glGetTexParameteriv ((jget (this).gl11)) target pname params)
        pure ()


glIsBuffer :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
glIsBuffer object_ a1 = jmethod object_ "glIsBuffer" (\() -> (glIsBuffer_impl (javaCast object_ :: JOGL11))) () a1

glIsBuffer_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
glIsBuffer_super object_ a1 = (glIsBuffer_impl (javaCast object_ :: JOGL11)) a1

glIsBuffer_impl :: JOGL11 -> Int -> IO (Bool)
glIsBuffer_impl this buffer = do
        (GL2.glIsBuffer ((jget (this).gl11)) buffer)


glIsEnabled :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
glIsEnabled object_ a1 = jmethod object_ "glIsEnabled" (\() -> (glIsEnabled_impl (javaCast object_ :: JOGL11))) () a1

glIsEnabled_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
glIsEnabled_super object_ a1 = (glIsEnabled_impl (javaCast object_ :: JOGL11)) a1

glIsEnabled_impl :: JOGL11 -> Int -> IO (Bool)
glIsEnabled_impl this cap = do
        (GL2.glIsEnabled ((jget (this).gl11)) cap)


glIsTexture :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
glIsTexture object_ a1 = jmethod object_ "glIsTexture" (\() -> (glIsTexture_impl (javaCast object_ :: JOGL11))) () a1

glIsTexture_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
glIsTexture_super object_ a1 = (glIsTexture_impl (javaCast object_ :: JOGL11)) a1

glIsTexture_impl :: JOGL11 -> Int -> IO (Bool)
glIsTexture_impl this texture = do
        (GL2.glIsTexture ((jget (this).gl11)) texture)


glNormalPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glNormalPointer object_ a1 a2 a3 = jmethod object_ "glNormalPointer" (\() -> (glNormalPointer_impl (javaCast object_ :: JOGL11))) () a1 a2 a3

glNormalPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glNormalPointer_super object_ a1 a2 a3 = (glNormalPointer_impl (javaCast object_ :: JOGL11)) a1 a2 a3

glNormalPointer_impl :: JOGL11 -> Int -> Int -> Int -> IO (())
glNormalPointer_impl this type_ stride offset = do
        Control.Monad.void (GL2.glNormalPointer ((jget (this).gl11)) type_ stride offset)
        pure ()


glPointParameterf :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glPointParameterf object_ a1 a2 = jmethod object_ "glPointParameterf" (\() -> (glPointParameterf_impl (javaCast object_ :: JOGL11))) () a1 a2

glPointParameterf_super :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glPointParameterf_super object_ a1 a2 = (glPointParameterf_impl (javaCast object_ :: JOGL11)) a1 a2

glPointParameterf_impl :: JOGL11 -> Int -> Float -> IO (())
glPointParameterf_impl this pname param = do
        Control.Monad.void (GL2.glPointParameterf ((jget (this).gl11)) pname param)
        pure ()


glPointParameterfv :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glPointParameterfv object_ a1 a2 a3 = jmethod object_ "glPointParameterfv" (\() -> (glPointParameterfv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3

glPointParameterfv_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glPointParameterfv_super object_ a1 a2 a3 = (glPointParameterfv_impl (javaCast object_ :: JOGL11)) a1 a2 a3

glPointParameterfv_impl :: JOGL11 -> Int -> JavaArray (Float) -> Int -> IO (())
glPointParameterfv_impl this pname params offset = do
        Control.Monad.void (GL2.glPointParameterfv ((jget (this).gl11)) pname params offset)
        pure ()


-- Java overload of glPointParameterfv with a different parameter count: give it a different name
glPointParameterfv :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glPointParameterfv object_ a1 a2 = jmethod object_ "glPointParameterfv" (\() -> (glPointParameterfv_impl (javaCast object_ :: JOGL11))) () a1 a2

glPointParameterfv_super :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glPointParameterfv_super object_ a1 a2 = (glPointParameterfv_impl (javaCast object_ :: JOGL11)) a1 a2

glPointParameterfv_impl :: JOGL11 -> Int -> FloatBuffer.FloatBuffer -> IO (())
glPointParameterfv_impl this pname params = do
        Control.Monad.void (GL2.glPointParameterfv ((jget (this).gl11)) pname params)
        pure ()


glTexCoordPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glTexCoordPointer object_ a1 a2 a3 a4 = jmethod object_ "glTexCoordPointer" (\() -> (glTexCoordPointer_impl (javaCast object_ :: JOGL11))) () a1 a2 a3 a4

glTexCoordPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glTexCoordPointer_super object_ a1 a2 a3 a4 = (glTexCoordPointer_impl (javaCast object_ :: JOGL11)) a1 a2 a3 a4

glTexCoordPointer_impl :: JOGL11 -> Int -> Int -> Int -> Int -> IO (())
glTexCoordPointer_impl this size type_ stride offset = do
        Control.Monad.void (GL2.glTexCoordPointer ((jget (this).gl11)) size type_ stride offset)
        pure ()


glTexEnvi :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glTexEnvi object_ a1 a2 a3 = jmethod object_ "glTexEnvi" (\() -> (glTexEnvi_impl (javaCast object_ :: JOGL11))) () a1 a2 a3

glTexEnvi_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glTexEnvi_super object_ a1 a2 a3 = (glTexEnvi_impl (javaCast object_ :: JOGL11)) a1 a2 a3

glTexEnvi_impl :: JOGL11 -> Int -> Int -> Int -> IO (())
glTexEnvi_impl this target pname param = do
        Control.Monad.void (GL2.glTexEnvi ((jget (this).gl11)) target pname param)
        pure ()


glTexEnviv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glTexEnviv object_ a1 a2 a3 a4 = jmethod object_ "glTexEnviv" (\() -> (glTexEnviv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3 a4

glTexEnviv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glTexEnviv_super object_ a1 a2 a3 a4 = (glTexEnviv_impl (javaCast object_ :: JOGL11)) a1 a2 a3 a4

glTexEnviv_impl :: JOGL11 -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glTexEnviv_impl this target pname params offset = do
        Control.Monad.void (GL2.glTexEnviv ((jget (this).gl11)) target pname params offset)
        pure ()


-- Java overload of glTexEnviv with a different parameter count: give it a different name
glTexEnviv :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glTexEnviv object_ a1 a2 a3 = jmethod object_ "glTexEnviv" (\() -> (glTexEnviv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3

glTexEnviv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glTexEnviv_super object_ a1 a2 a3 = (glTexEnviv_impl (javaCast object_ :: JOGL11)) a1 a2 a3

glTexEnviv_impl :: JOGL11 -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glTexEnviv_impl this target pname params = do
        Control.Monad.void (GL2.glTexEnviv ((jget (this).gl11)) target pname params)
        pure ()


glTexParameterfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glTexParameterfv object_ a1 a2 a3 a4 = jmethod object_ "glTexParameterfv" (\() -> (glTexParameterfv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3 a4

glTexParameterfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glTexParameterfv_super object_ a1 a2 a3 a4 = (glTexParameterfv_impl (javaCast object_ :: JOGL11)) a1 a2 a3 a4

glTexParameterfv_impl :: JOGL11 -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glTexParameterfv_impl this target pname params offset = do
        Control.Monad.void (GL2.glTexParameterfv ((jget (this).gl11)) target pname params offset)
        pure ()


-- Java overload of glTexParameterfv with a different parameter count: give it a different name
glTexParameterfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glTexParameterfv object_ a1 a2 a3 = jmethod object_ "glTexParameterfv" (\() -> (glTexParameterfv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3

glTexParameterfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glTexParameterfv_super object_ a1 a2 a3 = (glTexParameterfv_impl (javaCast object_ :: JOGL11)) a1 a2 a3

glTexParameterfv_impl :: JOGL11 -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glTexParameterfv_impl this target pname params = do
        Control.Monad.void (GL2.glTexParameterfv ((jget (this).gl11)) target pname params)
        pure ()


glTexParameteri :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glTexParameteri object_ a1 a2 a3 = jmethod object_ "glTexParameteri" (\() -> (glTexParameteri_impl (javaCast object_ :: JOGL11))) () a1 a2 a3

glTexParameteri_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glTexParameteri_super object_ a1 a2 a3 = (glTexParameteri_impl (javaCast object_ :: JOGL11)) a1 a2 a3

glTexParameteri_impl :: JOGL11 -> Int -> Int -> Int -> IO (())
glTexParameteri_impl this target pname param = do
        Control.Monad.void (GL2.glTexParameteri ((jget (this).gl11)) target pname param)
        pure ()


glTexParameteriv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glTexParameteriv object_ a1 a2 a3 a4 = jmethod object_ "glTexParameteriv" (\() -> (glTexParameteriv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3 a4

glTexParameteriv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glTexParameteriv_super object_ a1 a2 a3 a4 = (glTexParameteriv_impl (javaCast object_ :: JOGL11)) a1 a2 a3 a4

glTexParameteriv_impl :: JOGL11 -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glTexParameteriv_impl this target pname params offset = do
        Control.Monad.void (GL2.glTexParameteriv ((jget (this).gl11)) target pname params offset)
        pure ()


-- Java overload of glTexParameteriv with a different parameter count: give it a different name
glTexParameteriv :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glTexParameteriv object_ a1 a2 a3 = jmethod object_ "glTexParameteriv" (\() -> (glTexParameteriv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3

glTexParameteriv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glTexParameteriv_super object_ a1 a2 a3 = (glTexParameteriv_impl (javaCast object_ :: JOGL11)) a1 a2 a3

glTexParameteriv_impl :: JOGL11 -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glTexParameteriv_impl this target pname params = do
        Control.Monad.void (GL2.glTexParameteriv ((jget (this).gl11)) target pname params)
        pure ()


glTexParameterxv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glTexParameterxv object_ a1 a2 a3 a4 = jmethod object_ "glTexParameterxv" (\() -> (glTexParameterxv_impl (javaCast object_ :: JOGL11))) () a1 a2 a3 a4

glTexParameterxv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glTexParameterxv_super object_ a1 a2 a3 a4 = (glTexParameterxv_impl (javaCast object_ :: JOGL11)) a1 a2 a3 a4

glTexParameterxv_impl :: JOGL11 -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glTexParameterxv_impl this target pname params offset = do
        Control.Monad.void (GL2.glTexParameteriv ((jget (this).gl11)) target pname params offset)
        pure ()


glVertexPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glVertexPointer object_ a1 a2 a3 a4 = jmethod object_ "glVertexPointer" (\() -> (glVertexPointer_impl (javaCast object_ :: JOGL11))) () a1 a2 a3 a4

glVertexPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glVertexPointer_super object_ a1 a2 a3 a4 = (glVertexPointer_impl (javaCast object_ :: JOGL11)) a1 a2 a3 a4

glVertexPointer_impl :: JOGL11 -> Int -> Int -> Int -> Int -> IO (())
glVertexPointer_impl this size type_ stride offset = do
        Control.Monad.void (GL2.glVertexPointer ((jget (this).gl11)) size type_ stride offset)
        pure ()


