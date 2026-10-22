{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package javax.microedition.khronos.opengles
module GL11Ext (module GL11Ext, module GL) where

import GL hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, glTexParameterfv, glTexParameterfv_super, glTexParameterfv_impl, glCurrentPaletteMatrixOES, glCurrentPaletteMatrixOES_super, glCurrentPaletteMatrixOES_impl, glDrawTexfOES, glDrawTexfOES_super, glDrawTexfOES_impl, glDrawTexfvOES, glDrawTexfvOES_super, glDrawTexfvOES_impl, glDrawTexfvOES_1, glDrawTexfvOES_1_super, glDrawTexfvOES_1_impl, glDrawTexfvOES, glDrawTexiOES, glDrawTexiOES_super, glDrawTexiOES_impl, glDrawTexivOES, glDrawTexivOES_super, glDrawTexivOES_impl, glDrawTexivOES_1, glDrawTexivOES_1_super, glDrawTexivOES_1_impl, glDrawTexivOES, glDrawTexsOES, glDrawTexsOES_super, glDrawTexsOES_impl, glDrawTexsvOES, glDrawTexsvOES_super, glDrawTexsvOES_impl, glDrawTexsvOES_1, glDrawTexsvOES_1_super, glDrawTexsvOES_1_impl, glDrawTexsvOES, glDrawTexxOES, glDrawTexxOES_super, glDrawTexxOES_impl, glDrawTexxvOES, glDrawTexxvOES_super, glDrawTexxvOES_impl, glDrawTexxvOES_1, glDrawTexxvOES_1_super, glDrawTexxvOES_1_impl, glDrawTexxvOES, glEnable, glEnable_super, glEnable_impl, glEnableClientState, glEnableClientState_super, glEnableClientState_impl, glLoadPaletteFromModelViewMatrixOES, glLoadPaletteFromModelViewMatrixOES_super, glLoadPaletteFromModelViewMatrixOES_impl, glMatrixIndexPointerOES_overload1, glMatrixIndexPointerOES_overload1_super, glMatrixIndexPointerOES_overload1_impl, glMatrixIndexPointerOES, glMatrixIndexPointerOES_overload2, glMatrixIndexPointerOES_overload2_super, glMatrixIndexPointerOES_overload2_impl, glMatrixIndexPointerOES, glWeightPointerOES_overload1, glWeightPointerOES_overload1_super, glWeightPointerOES_overload1_impl, glWeightPointerOES, glWeightPointerOES_overload2, glWeightPointerOES_overload2_super, glWeightPointerOES_overload2_impl, glWeightPointerOES, gL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES, gL_MATRIX_INDEX_ARRAY_OES, gL_MATRIX_INDEX_ARRAY_POINTER_OES, gL_MATRIX_INDEX_ARRAY_SIZE_OES, gL_MATRIX_INDEX_ARRAY_STRIDE_OES, gL_MATRIX_INDEX_ARRAY_TYPE_OES, gL_MATRIX_PALETTE_OES, gL_MAX_PALETTE_MATRICES_OES, gL_MAX_VERTEX_UNITS_OES, gL_TEXTURE_CROP_RECT_OES, gL_WEIGHT_ARRAY_BUFFER_BINDING_OES, gL_WEIGHT_ARRAY_OES, gL_WEIGHT_ARRAY_POINTER_OES, gL_WEIGHT_ARRAY_SIZE_OES, gL_WEIGHT_ARRAY_STRIDE_OES, gL_WEIGHT_ARRAY_TYPE_OES, toString)
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
import qualified FloatBuffer -- same package or java.lang
import qualified IntBuffer -- same package or java.lang
import qualified ShortBuffer -- same package or java.lang
import qualified Buffer -- same package or java.lang
import qualified GL

-- Java interface: the classes that implement it have these functions
data GL11Ext = GL11Ext
    { header_ :: JavaHeader
    }

instance JavaNull GL11Ext where
    javaNull = javaNullRecord "GL11Ext"

instance JavaEquals GL11Ext where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GL11Ext where
    (==) = jrecordEquals

instance JavaObjectClass GL11Ext where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

gL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES = 35742

gL_MATRIX_INDEX_ARRAY_OES = 34884

gL_MATRIX_INDEX_ARRAY_POINTER_OES = 34889

gL_MATRIX_INDEX_ARRAY_SIZE_OES = 34886

gL_MATRIX_INDEX_ARRAY_STRIDE_OES = 34888

gL_MATRIX_INDEX_ARRAY_TYPE_OES = 34887

gL_MATRIX_PALETTE_OES = 34880

gL_MAX_PALETTE_MATRICES_OES = 34882

gL_MAX_VERTEX_UNITS_OES = 34468

gL_TEXTURE_CROP_RECT_OES = 35741

gL_WEIGHT_ARRAY_BUFFER_BINDING_OES = 34974

gL_WEIGHT_ARRAY_OES = 34477

gL_WEIGHT_ARRAY_POINTER_OES = 34476

gL_WEIGHT_ARRAY_SIZE_OES = 34475

gL_WEIGHT_ARRAY_STRIDE_OES = 34474

gL_WEIGHT_ARRAY_TYPE_OES = 34473

fromHeader_ :: JavaHeader -> GL11Ext
fromHeader_ header = GL11Ext header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GL11Ext header)
    GL.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


glTexParameterfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glTexParameterfv object_ a1 a2 a3 a4 = jmethod object_ "glTexParameterfv" (\() -> (glTexParameterfv_impl (javaCast object_ :: GL11Ext))) () a1 a2 a3 a4

glTexParameterfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glTexParameterfv_super object_ a1 a2 a3 a4 = (glTexParameterfv_impl (javaCast object_ :: GL11Ext)) a1 a2 a3 a4

glTexParameterfv_impl :: GL11Ext -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glTexParameterfv_impl this target pname param offset = javaAbstractMethod "glTexParameterfv"


glCurrentPaletteMatrixOES :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glCurrentPaletteMatrixOES object_ a1 = jmethod object_ "glCurrentPaletteMatrixOES" (\() -> (glCurrentPaletteMatrixOES_impl (javaCast object_ :: GL11Ext))) () a1

glCurrentPaletteMatrixOES_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glCurrentPaletteMatrixOES_super object_ a1 = (glCurrentPaletteMatrixOES_impl (javaCast object_ :: GL11Ext)) a1

glCurrentPaletteMatrixOES_impl :: GL11Ext -> Int -> IO (())
glCurrentPaletteMatrixOES_impl this matrixpaletteindex = javaAbstractMethod "glCurrentPaletteMatrixOES"


glDrawTexfOES :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> Float -> IO (())
glDrawTexfOES object_ a1 a2 a3 a4 a5 = jmethod object_ "glDrawTexfOES" (\() -> (glDrawTexfOES_impl (javaCast object_ :: GL11Ext))) () a1 a2 a3 a4 a5

glDrawTexfOES_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> Float -> IO (())
glDrawTexfOES_super object_ a1 a2 a3 a4 a5 = (glDrawTexfOES_impl (javaCast object_ :: GL11Ext)) a1 a2 a3 a4 a5

glDrawTexfOES_impl :: GL11Ext -> Float -> Float -> Float -> Float -> Float -> IO (())
glDrawTexfOES_impl this x y z width height = javaAbstractMethod "glDrawTexfOES"


glDrawTexfvOES :: (JavaObjectClass this_) => this_ -> JavaArray (Float) -> Int -> IO (())
glDrawTexfvOES object_ a1 a2 = jmethod object_ "glDrawTexfvOES" (\() -> (glDrawTexfvOES_impl (javaCast object_ :: GL11Ext))) () a1 a2

glDrawTexfvOES_super :: (JavaObjectClass this_) => this_ -> JavaArray (Float) -> Int -> IO (())
glDrawTexfvOES_super object_ a1 a2 = (glDrawTexfvOES_impl (javaCast object_ :: GL11Ext)) a1 a2

glDrawTexfvOES_impl :: GL11Ext -> JavaArray (Float) -> Int -> IO (())
glDrawTexfvOES_impl this coords offset = javaAbstractMethod "glDrawTexfvOES"


glDrawTexfvOES_1 :: (JavaObjectClass this_) => this_ -> FloatBuffer.FloatBuffer -> IO (())
glDrawTexfvOES_1 object_ a1 = jmethod object_ "glDrawTexfvOES_1" (\() -> (glDrawTexfvOES_1_impl (javaCast object_ :: GL11Ext))) () a1

glDrawTexfvOES_1_super :: (JavaObjectClass this_) => this_ -> FloatBuffer.FloatBuffer -> IO (())
glDrawTexfvOES_1_super object_ a1 = (glDrawTexfvOES_1_impl (javaCast object_ :: GL11Ext)) a1

glDrawTexfvOES_1_impl :: GL11Ext -> FloatBuffer.FloatBuffer -> IO (())
glDrawTexfvOES_1_impl this coords = javaAbstractMethod "glDrawTexfvOES"


glDrawTexiOES :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> IO (())
glDrawTexiOES object_ a1 a2 a3 a4 a5 = jmethod object_ "glDrawTexiOES" (\() -> (glDrawTexiOES_impl (javaCast object_ :: GL11Ext))) () a1 a2 a3 a4 a5

glDrawTexiOES_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> IO (())
glDrawTexiOES_super object_ a1 a2 a3 a4 a5 = (glDrawTexiOES_impl (javaCast object_ :: GL11Ext)) a1 a2 a3 a4 a5

glDrawTexiOES_impl :: GL11Ext -> Int -> Int -> Int -> Int -> Int -> IO (())
glDrawTexiOES_impl this x y z width height = javaAbstractMethod "glDrawTexiOES"


glDrawTexivOES :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> IO (())
glDrawTexivOES object_ a1 a2 = jmethod object_ "glDrawTexivOES" (\() -> (glDrawTexivOES_impl (javaCast object_ :: GL11Ext))) () a1 a2

glDrawTexivOES_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> IO (())
glDrawTexivOES_super object_ a1 a2 = (glDrawTexivOES_impl (javaCast object_ :: GL11Ext)) a1 a2

glDrawTexivOES_impl :: GL11Ext -> JavaArray (Int) -> Int -> IO (())
glDrawTexivOES_impl this coords offset = javaAbstractMethod "glDrawTexivOES"


glDrawTexivOES_1 :: (JavaObjectClass this_) => this_ -> IntBuffer.IntBuffer -> IO (())
glDrawTexivOES_1 object_ a1 = jmethod object_ "glDrawTexivOES_1" (\() -> (glDrawTexivOES_1_impl (javaCast object_ :: GL11Ext))) () a1

glDrawTexivOES_1_super :: (JavaObjectClass this_) => this_ -> IntBuffer.IntBuffer -> IO (())
glDrawTexivOES_1_super object_ a1 = (glDrawTexivOES_1_impl (javaCast object_ :: GL11Ext)) a1

glDrawTexivOES_1_impl :: GL11Ext -> IntBuffer.IntBuffer -> IO (())
glDrawTexivOES_1_impl this coords = javaAbstractMethod "glDrawTexivOES"


glDrawTexsOES :: (JavaObjectClass this_) => this_ -> Int16 -> Int16 -> Int16 -> Int16 -> Int16 -> IO (())
glDrawTexsOES object_ a1 a2 a3 a4 a5 = jmethod object_ "glDrawTexsOES" (\() -> (glDrawTexsOES_impl (javaCast object_ :: GL11Ext))) () a1 a2 a3 a4 a5

glDrawTexsOES_super :: (JavaObjectClass this_) => this_ -> Int16 -> Int16 -> Int16 -> Int16 -> Int16 -> IO (())
glDrawTexsOES_super object_ a1 a2 a3 a4 a5 = (glDrawTexsOES_impl (javaCast object_ :: GL11Ext)) a1 a2 a3 a4 a5

glDrawTexsOES_impl :: GL11Ext -> Int16 -> Int16 -> Int16 -> Int16 -> Int16 -> IO (())
glDrawTexsOES_impl this x y z width height = javaAbstractMethod "glDrawTexsOES"


glDrawTexsvOES :: (JavaObjectClass this_) => this_ -> JavaArray (Int16) -> Int -> IO (())
glDrawTexsvOES object_ a1 a2 = jmethod object_ "glDrawTexsvOES" (\() -> (glDrawTexsvOES_impl (javaCast object_ :: GL11Ext))) () a1 a2

glDrawTexsvOES_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int16) -> Int -> IO (())
glDrawTexsvOES_super object_ a1 a2 = (glDrawTexsvOES_impl (javaCast object_ :: GL11Ext)) a1 a2

glDrawTexsvOES_impl :: GL11Ext -> JavaArray (Int16) -> Int -> IO (())
glDrawTexsvOES_impl this coords offset = javaAbstractMethod "glDrawTexsvOES"


glDrawTexsvOES_1 :: (JavaObjectClass this_) => this_ -> ShortBuffer.ShortBuffer -> IO (())
glDrawTexsvOES_1 object_ a1 = jmethod object_ "glDrawTexsvOES_1" (\() -> (glDrawTexsvOES_1_impl (javaCast object_ :: GL11Ext))) () a1

glDrawTexsvOES_1_super :: (JavaObjectClass this_) => this_ -> ShortBuffer.ShortBuffer -> IO (())
glDrawTexsvOES_1_super object_ a1 = (glDrawTexsvOES_1_impl (javaCast object_ :: GL11Ext)) a1

glDrawTexsvOES_1_impl :: GL11Ext -> ShortBuffer.ShortBuffer -> IO (())
glDrawTexsvOES_1_impl this coords = javaAbstractMethod "glDrawTexsvOES"


glDrawTexxOES :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> IO (())
glDrawTexxOES object_ a1 a2 a3 a4 a5 = jmethod object_ "glDrawTexxOES" (\() -> (glDrawTexxOES_impl (javaCast object_ :: GL11Ext))) () a1 a2 a3 a4 a5

glDrawTexxOES_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> IO (())
glDrawTexxOES_super object_ a1 a2 a3 a4 a5 = (glDrawTexxOES_impl (javaCast object_ :: GL11Ext)) a1 a2 a3 a4 a5

glDrawTexxOES_impl :: GL11Ext -> Int -> Int -> Int -> Int -> Int -> IO (())
glDrawTexxOES_impl this x y z width height = javaAbstractMethod "glDrawTexxOES"


glDrawTexxvOES :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> IO (())
glDrawTexxvOES object_ a1 a2 = jmethod object_ "glDrawTexxvOES" (\() -> (glDrawTexxvOES_impl (javaCast object_ :: GL11Ext))) () a1 a2

glDrawTexxvOES_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> IO (())
glDrawTexxvOES_super object_ a1 a2 = (glDrawTexxvOES_impl (javaCast object_ :: GL11Ext)) a1 a2

glDrawTexxvOES_impl :: GL11Ext -> JavaArray (Int) -> Int -> IO (())
glDrawTexxvOES_impl this coords offset = javaAbstractMethod "glDrawTexxvOES"


glDrawTexxvOES_1 :: (JavaObjectClass this_) => this_ -> IntBuffer.IntBuffer -> IO (())
glDrawTexxvOES_1 object_ a1 = jmethod object_ "glDrawTexxvOES_1" (\() -> (glDrawTexxvOES_1_impl (javaCast object_ :: GL11Ext))) () a1

glDrawTexxvOES_1_super :: (JavaObjectClass this_) => this_ -> IntBuffer.IntBuffer -> IO (())
glDrawTexxvOES_1_super object_ a1 = (glDrawTexxvOES_1_impl (javaCast object_ :: GL11Ext)) a1

glDrawTexxvOES_1_impl :: GL11Ext -> IntBuffer.IntBuffer -> IO (())
glDrawTexxvOES_1_impl this coords = javaAbstractMethod "glDrawTexxvOES"


glEnable :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glEnable object_ a1 = jmethod object_ "glEnable" (\() -> (glEnable_impl (javaCast object_ :: GL11Ext))) () a1

glEnable_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glEnable_super object_ a1 = (glEnable_impl (javaCast object_ :: GL11Ext)) a1

glEnable_impl :: GL11Ext -> Int -> IO (())
glEnable_impl this cap = javaAbstractMethod "glEnable"


glEnableClientState :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glEnableClientState object_ a1 = jmethod object_ "glEnableClientState" (\() -> (glEnableClientState_impl (javaCast object_ :: GL11Ext))) () a1

glEnableClientState_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glEnableClientState_super object_ a1 = (glEnableClientState_impl (javaCast object_ :: GL11Ext)) a1

glEnableClientState_impl :: GL11Ext -> Int -> IO (())
glEnableClientState_impl this array = javaAbstractMethod "glEnableClientState"


glLoadPaletteFromModelViewMatrixOES :: (JavaObjectClass this_) => this_ -> IO (())
glLoadPaletteFromModelViewMatrixOES object_ = jmethod object_ "glLoadPaletteFromModelViewMatrixOES" (\() -> (glLoadPaletteFromModelViewMatrixOES_impl (javaCast object_ :: GL11Ext))) ()

glLoadPaletteFromModelViewMatrixOES_super :: (JavaObjectClass this_) => this_ -> IO (())
glLoadPaletteFromModelViewMatrixOES_super object_ = (glLoadPaletteFromModelViewMatrixOES_impl (javaCast object_ :: GL11Ext))

glLoadPaletteFromModelViewMatrixOES_impl :: GL11Ext -> IO (())
glLoadPaletteFromModelViewMatrixOES_impl this = javaAbstractMethod "glLoadPaletteFromModelViewMatrixOES"


-- Java overloads of glMatrixIndexPointerOES: calls the overload for the types of the arguments
glMatrixIndexPointerOES :: (JavaObjectClass this_, JavaObjectClass o4) => this_ -> Int -> Int -> Int -> o4 -> IO (())
glMatrixIndexPointerOES this a1 a2 a3 a4
    | jisInstanceOf a4 (javaNull :: Buffer.Buffer) = glMatrixIndexPointerOES_overload1 this a1 a2 a3 (javaCast a4 :: Buffer.Buffer)
    | jisInstanceOf a4 (javaNull :: Int) = glMatrixIndexPointerOES_overload2 this a1 a2 a3 (javaCast a4 :: Int)
    | otherwise = glMatrixIndexPointerOES_overload2 this a1 a2 a3 (javaCast a4 :: Int)

glMatrixIndexPointerOES_overload1 :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glMatrixIndexPointerOES_overload1 object_ a1 a2 a3 a4 = jmethod object_ "glMatrixIndexPointerOES_overload1" (\() -> (glMatrixIndexPointerOES_overload1_impl (javaCast object_ :: GL11Ext))) () a1 a2 a3 a4

glMatrixIndexPointerOES_overload1_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glMatrixIndexPointerOES_overload1_super object_ a1 a2 a3 a4 = (glMatrixIndexPointerOES_overload1_impl (javaCast object_ :: GL11Ext)) a1 a2 a3 a4

glMatrixIndexPointerOES_overload1_impl :: GL11Ext -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glMatrixIndexPointerOES_overload1_impl this size type_ stride pointer = javaAbstractMethod "glMatrixIndexPointerOES"


glMatrixIndexPointerOES_overload2 :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glMatrixIndexPointerOES_overload2 object_ a1 a2 a3 a4 = jmethod object_ "glMatrixIndexPointerOES_overload2" (\() -> (glMatrixIndexPointerOES_overload2_impl (javaCast object_ :: GL11Ext))) () a1 a2 a3 a4

glMatrixIndexPointerOES_overload2_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glMatrixIndexPointerOES_overload2_super object_ a1 a2 a3 a4 = (glMatrixIndexPointerOES_overload2_impl (javaCast object_ :: GL11Ext)) a1 a2 a3 a4

glMatrixIndexPointerOES_overload2_impl :: GL11Ext -> Int -> Int -> Int -> Int -> IO (())
glMatrixIndexPointerOES_overload2_impl this size type_ stride offset = javaAbstractMethod "glMatrixIndexPointerOES"


-- Java overloads of glWeightPointerOES: calls the overload for the types of the arguments
glWeightPointerOES :: (JavaObjectClass this_, JavaObjectClass o4) => this_ -> Int -> Int -> Int -> o4 -> IO (())
glWeightPointerOES this a1 a2 a3 a4
    | jisInstanceOf a4 (javaNull :: Buffer.Buffer) = glWeightPointerOES_overload1 this a1 a2 a3 (javaCast a4 :: Buffer.Buffer)
    | jisInstanceOf a4 (javaNull :: Int) = glWeightPointerOES_overload2 this a1 a2 a3 (javaCast a4 :: Int)
    | otherwise = glWeightPointerOES_overload2 this a1 a2 a3 (javaCast a4 :: Int)

glWeightPointerOES_overload1 :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glWeightPointerOES_overload1 object_ a1 a2 a3 a4 = jmethod object_ "glWeightPointerOES_overload1" (\() -> (glWeightPointerOES_overload1_impl (javaCast object_ :: GL11Ext))) () a1 a2 a3 a4

glWeightPointerOES_overload1_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glWeightPointerOES_overload1_super object_ a1 a2 a3 a4 = (glWeightPointerOES_overload1_impl (javaCast object_ :: GL11Ext)) a1 a2 a3 a4

glWeightPointerOES_overload1_impl :: GL11Ext -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glWeightPointerOES_overload1_impl this size type_ stride pointer = javaAbstractMethod "glWeightPointerOES"


glWeightPointerOES_overload2 :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glWeightPointerOES_overload2 object_ a1 a2 a3 a4 = jmethod object_ "glWeightPointerOES_overload2" (\() -> (glWeightPointerOES_overload2_impl (javaCast object_ :: GL11Ext))) () a1 a2 a3 a4

glWeightPointerOES_overload2_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glWeightPointerOES_overload2_super object_ a1 a2 a3 a4 = (glWeightPointerOES_overload2_impl (javaCast object_ :: GL11Ext)) a1 a2 a3 a4

glWeightPointerOES_overload2_impl :: GL11Ext -> Int -> Int -> Int -> Int -> IO (())
glWeightPointerOES_overload2_impl this size type_ stride offset = javaAbstractMethod "glWeightPointerOES"


