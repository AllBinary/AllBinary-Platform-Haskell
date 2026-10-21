{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package javax.microedition.khronos.opengles
module GL11 where

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
import qualified GL10

-- Java interface: the classes that implement it have these functions
data GL11 = GL11
    { header_ :: JavaHeader
    }

instance JavaNull GL11 where
    javaNull = javaNullRecord "GL11"

instance JavaEquals GL11 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GL11 where
    (==) = jrecordEquals

instance JavaObjectClass GL11 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

gL_ACTIVE_TEXTURE = 34016

gL_ADD_SIGNED = 34164

gL_ALPHA_SCALE = 3356

gL_ALPHA_TEST_FUNC = 3009

gL_ALPHA_TEST_REF = 3010

gL_ARRAY_BUFFER = 34962

gL_ARRAY_BUFFER_BINDING = 34964

gL_BLEND_DST = 3040

gL_BLEND_SRC = 3041

gL_BUFFER_ACCESS = 35003

gL_BUFFER_SIZE = 34660

gL_BUFFER_USAGE = 34661

gL_CLIENT_ACTIVE_TEXTURE = 34017

gL_CLIP_PLANE0 = 12288

gL_CLIP_PLANE1 = 12289

gL_CLIP_PLANE2 = 12290

gL_CLIP_PLANE3 = 12291

gL_CLIP_PLANE4 = 12292

gL_CLIP_PLANE5 = 12293

gL_COLOR_ARRAY_BUFFER_BINDING = 34968

gL_COLOR_ARRAY_POINTER = 32912

gL_COLOR_ARRAY_SIZE = 32897

gL_COLOR_ARRAY_STRIDE = 32899

gL_COLOR_ARRAY_TYPE = 32898

gL_COLOR_CLEAR_VALUE = 3106

gL_COLOR_WRITEMASK = 3107

gL_COMBINE = 34160

gL_COMBINE_ALPHA = 34162

gL_COMBINE_RGB = 34161

gL_CONSTANT = 34166

gL_COORD_REPLACE_OES = 34914

gL_CULL_FACE_MODE = 2885

gL_CURRENT_COLOR = 2816

gL_CURRENT_NORMAL = 2818

gL_CURRENT_TEXTURE_COORDS = 2819

gL_DEPTH_CLEAR_VALUE = 2931

gL_DEPTH_FUNC = 2932

gL_DEPTH_RANGE = 2928

gL_DEPTH_WRITEMASK = 2930

gL_DOT3_RGB = 34478

gL_DOT3_RGBA = 34479

gL_DYNAMIC_DRAW = 35048

gL_ELEMENT_ARRAY_BUFFER = 34963

gL_ELEMENT_ARRAY_BUFFER_BINDING = 34965

gL_FRONT_FACE = 2886

gL_GENERATE_MIPMAP = 33169

gL_GENERATE_MIPMAP_HINT = 33170

gL_INTERPOLATE = 34165

gL_LINE_WIDTH = 2849

gL_LOGIC_OP_MODE = 3056

gL_MATRIX_MODE = 2976

gL_MAX_CLIP_PLANES = 3378

gL_MODELVIEW_MATRIX = 2982

gL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES = 35213

gL_MODELVIEW_STACK_DEPTH = 2979

gL_NORMAL_ARRAY_BUFFER_BINDING = 34967

gL_NORMAL_ARRAY_POINTER = 32911

gL_NORMAL_ARRAY_STRIDE = 32895

gL_NORMAL_ARRAY_TYPE = 32894

gL_OPERAND0_ALPHA = 34200

gL_OPERAND0_RGB = 34192

gL_OPERAND1_ALPHA = 34201

gL_OPERAND1_RGB = 34193

gL_OPERAND2_ALPHA = 34202

gL_OPERAND2_RGB = 34194

gL_POINT_DISTANCE_ATTENUATION = 33065

gL_POINT_FADE_THRESHOLD_SIZE = 33064

gL_POINT_SIZE = 2833

gL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES = 35743

gL_POINT_SIZE_ARRAY_OES = 35740

gL_POINT_SIZE_ARRAY_POINTER_OES = 35212

gL_POINT_SIZE_ARRAY_STRIDE_OES = 35211

gL_POINT_SIZE_ARRAY_TYPE_OES = 35210

gL_POINT_SIZE_MAX = 33063

gL_POINT_SIZE_MIN = 33062

gL_POINT_SPRITE_OES = 34913

gL_POLYGON_OFFSET_FACTOR = 32824

gL_POLYGON_OFFSET_UNITS = 10752

gL_PREVIOUS = 34168

gL_PRIMARY_COLOR = 34167

gL_PROJECTION_MATRIX = 2983

gL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES = 35214

gL_PROJECTION_STACK_DEPTH = 2980

gL_RGB_SCALE = 34163

gL_SAMPLE_BUFFERS = 32936

gL_SAMPLE_COVERAGE_INVERT = 32939

gL_SAMPLE_COVERAGE_VALUE = 32938

gL_SAMPLES = 32937

gL_SCISSOR_BOX = 3088

gL_SHADE_MODEL = 2900

gL_SRC0_ALPHA = 34184

gL_SRC0_RGB = 34176

gL_SRC1_ALPHA = 34185

gL_SRC1_RGB = 34177

gL_SRC2_ALPHA = 34186

gL_SRC2_RGB = 34178

gL_STATIC_DRAW = 35044

gL_STENCIL_CLEAR_VALUE = 2961

gL_STENCIL_FAIL = 2964

gL_STENCIL_FUNC = 2962

gL_STENCIL_PASS_DEPTH_FAIL = 2965

gL_STENCIL_PASS_DEPTH_PASS = 2966

gL_STENCIL_REF = 2967

gL_STENCIL_VALUE_MASK = 2963

gL_STENCIL_WRITEMASK = 2968

gL_SUBTRACT = 34023

gL_TEXTURE_BINDING_2D = 32873

gL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = 34970

gL_TEXTURE_COORD_ARRAY_POINTER = 32914

gL_TEXTURE_COORD_ARRAY_SIZE = 32904

gL_TEXTURE_COORD_ARRAY_STRIDE = 32906

gL_TEXTURE_COORD_ARRAY_TYPE = 32905

gL_TEXTURE_MATRIX = 2984

gL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES = 35215

gL_TEXTURE_STACK_DEPTH = 2981

gL_VERTEX_ARRAY_BUFFER_BINDING = 34966

gL_VERTEX_ARRAY_POINTER = 32910

gL_VERTEX_ARRAY_SIZE = 32890

gL_VERTEX_ARRAY_STRIDE = 32892

gL_VERTEX_ARRAY_TYPE = 32891

gL_VIEWPORT = 2978

gL_WRITE_ONLY = 35001

fromHeader_ :: JavaHeader -> GL11
fromHeader_ header = GL11 header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GL11 header)
    GL10.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


glBindBuffer :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glBindBuffer object_ a1 a2 = jmethod object_ "glBindBuffer" (\() -> (glBindBuffer_impl (javaCast object_ :: GL11))) () a1 a2

glBindBuffer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glBindBuffer_super object_ a1 a2 = (glBindBuffer_impl (javaCast object_ :: GL11)) a1 a2

glBindBuffer_impl :: GL11 -> Int -> Int -> IO (())
glBindBuffer_impl this target buffer = javaAbstractMethod "glBindBuffer"


glBufferData :: (JavaObjectClass this_) => this_ -> Int -> Int -> Buffer.Buffer -> Int -> IO (())
glBufferData object_ a1 a2 a3 a4 = jmethod object_ "glBufferData" (\() -> (glBufferData_impl (javaCast object_ :: GL11))) () a1 a2 a3 a4

glBufferData_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Buffer.Buffer -> Int -> IO (())
glBufferData_super object_ a1 a2 a3 a4 = (glBufferData_impl (javaCast object_ :: GL11)) a1 a2 a3 a4

glBufferData_impl :: GL11 -> Int -> Int -> Buffer.Buffer -> Int -> IO (())
glBufferData_impl this target size data_ usage = javaAbstractMethod "glBufferData"


glBufferSubData :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glBufferSubData object_ a1 a2 a3 a4 = jmethod object_ "glBufferSubData" (\() -> (glBufferSubData_impl (javaCast object_ :: GL11))) () a1 a2 a3 a4

glBufferSubData_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glBufferSubData_super object_ a1 a2 a3 a4 = (glBufferSubData_impl (javaCast object_ :: GL11)) a1 a2 a3 a4

glBufferSubData_impl :: GL11 -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glBufferSubData_impl this target offset size data_ = javaAbstractMethod "glBufferSubData"


glClipPlanef :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glClipPlanef object_ a1 a2 a3 = jmethod object_ "glClipPlanef" (\() -> (glClipPlanef_impl (javaCast object_ :: GL11))) () a1 a2 a3

glClipPlanef_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glClipPlanef_super object_ a1 a2 a3 = (glClipPlanef_impl (javaCast object_ :: GL11)) a1 a2 a3

glClipPlanef_impl :: GL11 -> Int -> JavaArray (Float) -> Int -> IO (())
glClipPlanef_impl this plane equation offset = javaAbstractMethod "glClipPlanef"


-- Java overload of glClipPlanef with a different parameter count: give it a different name
glClipPlanef :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glClipPlanef object_ a1 a2 = jmethod object_ "glClipPlanef" (\() -> (glClipPlanef_impl (javaCast object_ :: GL11))) () a1 a2

glClipPlanef_super :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glClipPlanef_super object_ a1 a2 = (glClipPlanef_impl (javaCast object_ :: GL11)) a1 a2

glClipPlanef_impl :: GL11 -> Int -> FloatBuffer.FloatBuffer -> IO (())
glClipPlanef_impl this plane equation = javaAbstractMethod "glClipPlanef"


glColor4ub :: (JavaObjectClass this_) => this_ -> Int8 -> Int8 -> Int8 -> Int8 -> IO (())
glColor4ub object_ a1 a2 a3 a4 = jmethod object_ "glColor4ub" (\() -> (glColor4ub_impl (javaCast object_ :: GL11))) () a1 a2 a3 a4

glColor4ub_super :: (JavaObjectClass this_) => this_ -> Int8 -> Int8 -> Int8 -> Int8 -> IO (())
glColor4ub_super object_ a1 a2 a3 a4 = (glColor4ub_impl (javaCast object_ :: GL11)) a1 a2 a3 a4

glColor4ub_impl :: GL11 -> Int8 -> Int8 -> Int8 -> Int8 -> IO (())
glColor4ub_impl this red green blue alpha = javaAbstractMethod "glColor4ub"


glColorPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glColorPointer object_ a1 a2 a3 a4 = jmethod object_ "glColorPointer" (\() -> (glColorPointer_impl (javaCast object_ :: GL11))) () a1 a2 a3 a4

glColorPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glColorPointer_super object_ a1 a2 a3 a4 = (glColorPointer_impl (javaCast object_ :: GL11)) a1 a2 a3 a4

glColorPointer_impl :: GL11 -> Int -> Int -> Int -> Int -> IO (())
glColorPointer_impl this size type_ stride offset = javaAbstractMethod "glColorPointer"


glDeleteBuffers :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glDeleteBuffers object_ a1 a2 a3 = jmethod object_ "glDeleteBuffers" (\() -> (glDeleteBuffers_impl (javaCast object_ :: GL11))) () a1 a2 a3

glDeleteBuffers_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glDeleteBuffers_super object_ a1 a2 a3 = (glDeleteBuffers_impl (javaCast object_ :: GL11)) a1 a2 a3

glDeleteBuffers_impl :: GL11 -> Int -> JavaArray (Int) -> Int -> IO (())
glDeleteBuffers_impl this n buffers offset = javaAbstractMethod "glDeleteBuffers"


-- Java overload of glDeleteBuffers with a different parameter count: give it a different name
glDeleteBuffers :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glDeleteBuffers object_ a1 a2 = jmethod object_ "glDeleteBuffers" (\() -> (glDeleteBuffers_impl (javaCast object_ :: GL11))) () a1 a2

glDeleteBuffers_super :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glDeleteBuffers_super object_ a1 a2 = (glDeleteBuffers_impl (javaCast object_ :: GL11)) a1 a2

glDeleteBuffers_impl :: GL11 -> Int -> IntBuffer.IntBuffer -> IO (())
glDeleteBuffers_impl this n buffers = javaAbstractMethod "glDeleteBuffers"


glDrawElements :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glDrawElements object_ a1 a2 a3 a4 = jmethod object_ "glDrawElements" (\() -> (glDrawElements_impl (javaCast object_ :: GL11))) () a1 a2 a3 a4

glDrawElements_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glDrawElements_super object_ a1 a2 a3 a4 = (glDrawElements_impl (javaCast object_ :: GL11)) a1 a2 a3 a4

glDrawElements_impl :: GL11 -> Int -> Int -> Int -> Int -> IO (())
glDrawElements_impl this mode count type_ offset = javaAbstractMethod "glDrawElements"


glGenBuffers :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glGenBuffers object_ a1 a2 a3 = jmethod object_ "glGenBuffers" (\() -> (glGenBuffers_impl (javaCast object_ :: GL11))) () a1 a2 a3

glGenBuffers_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glGenBuffers_super object_ a1 a2 a3 = (glGenBuffers_impl (javaCast object_ :: GL11)) a1 a2 a3

glGenBuffers_impl :: GL11 -> Int -> JavaArray (Int) -> Int -> IO (())
glGenBuffers_impl this n buffers offset = javaAbstractMethod "glGenBuffers"


-- Java overload of glGenBuffers with a different parameter count: give it a different name
glGenBuffers :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glGenBuffers object_ a1 a2 = jmethod object_ "glGenBuffers" (\() -> (glGenBuffers_impl (javaCast object_ :: GL11))) () a1 a2

glGenBuffers_super :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glGenBuffers_super object_ a1 a2 = (glGenBuffers_impl (javaCast object_ :: GL11)) a1 a2

glGenBuffers_impl :: GL11 -> Int -> IntBuffer.IntBuffer -> IO (())
glGenBuffers_impl this n buffers = javaAbstractMethod "glGenBuffers"


glGetBufferParameteriv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glGetBufferParameteriv object_ a1 a2 a3 a4 = jmethod object_ "glGetBufferParameteriv" (\() -> (glGetBufferParameteriv_impl (javaCast object_ :: GL11))) () a1 a2 a3 a4

glGetBufferParameteriv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glGetBufferParameteriv_super object_ a1 a2 a3 a4 = (glGetBufferParameteriv_impl (javaCast object_ :: GL11)) a1 a2 a3 a4

glGetBufferParameteriv_impl :: GL11 -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glGetBufferParameteriv_impl this target pname params offset = javaAbstractMethod "glGetBufferParameteriv"


-- Java overload of glGetBufferParameteriv with a different parameter count: give it a different name
glGetBufferParameteriv :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glGetBufferParameteriv object_ a1 a2 a3 = jmethod object_ "glGetBufferParameteriv" (\() -> (glGetBufferParameteriv_impl (javaCast object_ :: GL11))) () a1 a2 a3

glGetBufferParameteriv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glGetBufferParameteriv_super object_ a1 a2 a3 = (glGetBufferParameteriv_impl (javaCast object_ :: GL11)) a1 a2 a3

glGetBufferParameteriv_impl :: GL11 -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glGetBufferParameteriv_impl this target pname params = javaAbstractMethod "glGetBufferParameteriv"


glGetClipPlanef :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glGetClipPlanef object_ a1 a2 a3 = jmethod object_ "glGetClipPlanef" (\() -> (glGetClipPlanef_impl (javaCast object_ :: GL11))) () a1 a2 a3

glGetClipPlanef_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glGetClipPlanef_super object_ a1 a2 a3 = (glGetClipPlanef_impl (javaCast object_ :: GL11)) a1 a2 a3

glGetClipPlanef_impl :: GL11 -> Int -> JavaArray (Float) -> Int -> IO (())
glGetClipPlanef_impl this pname eqn offset = javaAbstractMethod "glGetClipPlanef"


-- Java overload of glGetClipPlanef with a different parameter count: give it a different name
glGetClipPlanef :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetClipPlanef object_ a1 a2 = jmethod object_ "glGetClipPlanef" (\() -> (glGetClipPlanef_impl (javaCast object_ :: GL11))) () a1 a2

glGetClipPlanef_super :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetClipPlanef_super object_ a1 a2 = (glGetClipPlanef_impl (javaCast object_ :: GL11)) a1 a2

glGetClipPlanef_impl :: GL11 -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetClipPlanef_impl this pname eqn = javaAbstractMethod "glGetClipPlanef"


glGetFloatv :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glGetFloatv object_ a1 a2 a3 = jmethod object_ "glGetFloatv" (\() -> (glGetFloatv_impl (javaCast object_ :: GL11))) () a1 a2 a3

glGetFloatv_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glGetFloatv_super object_ a1 a2 a3 = (glGetFloatv_impl (javaCast object_ :: GL11)) a1 a2 a3

glGetFloatv_impl :: GL11 -> Int -> JavaArray (Float) -> Int -> IO (())
glGetFloatv_impl this pname params offset = javaAbstractMethod "glGetFloatv"


-- Java overload of glGetFloatv with a different parameter count: give it a different name
glGetFloatv :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetFloatv object_ a1 a2 = jmethod object_ "glGetFloatv" (\() -> (glGetFloatv_impl (javaCast object_ :: GL11))) () a1 a2

glGetFloatv_super :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetFloatv_super object_ a1 a2 = (glGetFloatv_impl (javaCast object_ :: GL11)) a1 a2

glGetFloatv_impl :: GL11 -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetFloatv_impl this pname params = javaAbstractMethod "glGetFloatv"


glGetLightfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glGetLightfv object_ a1 a2 a3 a4 = jmethod object_ "glGetLightfv" (\() -> (glGetLightfv_impl (javaCast object_ :: GL11))) () a1 a2 a3 a4

glGetLightfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glGetLightfv_super object_ a1 a2 a3 a4 = (glGetLightfv_impl (javaCast object_ :: GL11)) a1 a2 a3 a4

glGetLightfv_impl :: GL11 -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glGetLightfv_impl this light pname params offset = javaAbstractMethod "glGetLightfv"


-- Java overload of glGetLightfv with a different parameter count: give it a different name
glGetLightfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetLightfv object_ a1 a2 a3 = jmethod object_ "glGetLightfv" (\() -> (glGetLightfv_impl (javaCast object_ :: GL11))) () a1 a2 a3

glGetLightfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetLightfv_super object_ a1 a2 a3 = (glGetLightfv_impl (javaCast object_ :: GL11)) a1 a2 a3

glGetLightfv_impl :: GL11 -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetLightfv_impl this light pname params = javaAbstractMethod "glGetLightfv"


glGetMaterialfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glGetMaterialfv object_ a1 a2 a3 a4 = jmethod object_ "glGetMaterialfv" (\() -> (glGetMaterialfv_impl (javaCast object_ :: GL11))) () a1 a2 a3 a4

glGetMaterialfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glGetMaterialfv_super object_ a1 a2 a3 a4 = (glGetMaterialfv_impl (javaCast object_ :: GL11)) a1 a2 a3 a4

glGetMaterialfv_impl :: GL11 -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glGetMaterialfv_impl this face pname params offset = javaAbstractMethod "glGetMaterialfv"


-- Java overload of glGetMaterialfv with a different parameter count: give it a different name
glGetMaterialfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetMaterialfv object_ a1 a2 a3 = jmethod object_ "glGetMaterialfv" (\() -> (glGetMaterialfv_impl (javaCast object_ :: GL11))) () a1 a2 a3

glGetMaterialfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetMaterialfv_super object_ a1 a2 a3 = (glGetMaterialfv_impl (javaCast object_ :: GL11)) a1 a2 a3

glGetMaterialfv_impl :: GL11 -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetMaterialfv_impl this face pname params = javaAbstractMethod "glGetMaterialfv"


glGetTexEnviv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glGetTexEnviv object_ a1 a2 a3 a4 = jmethod object_ "glGetTexEnviv" (\() -> (glGetTexEnviv_impl (javaCast object_ :: GL11))) () a1 a2 a3 a4

glGetTexEnviv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glGetTexEnviv_super object_ a1 a2 a3 a4 = (glGetTexEnviv_impl (javaCast object_ :: GL11)) a1 a2 a3 a4

glGetTexEnviv_impl :: GL11 -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glGetTexEnviv_impl this env pname params offset = javaAbstractMethod "glGetTexEnviv"


-- Java overload of glGetTexEnviv with a different parameter count: give it a different name
glGetTexEnviv :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glGetTexEnviv object_ a1 a2 a3 = jmethod object_ "glGetTexEnviv" (\() -> (glGetTexEnviv_impl (javaCast object_ :: GL11))) () a1 a2 a3

glGetTexEnviv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glGetTexEnviv_super object_ a1 a2 a3 = (glGetTexEnviv_impl (javaCast object_ :: GL11)) a1 a2 a3

glGetTexEnviv_impl :: GL11 -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glGetTexEnviv_impl this env pname params = javaAbstractMethod "glGetTexEnviv"


glGetTexParameterfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glGetTexParameterfv object_ a1 a2 a3 a4 = jmethod object_ "glGetTexParameterfv" (\() -> (glGetTexParameterfv_impl (javaCast object_ :: GL11))) () a1 a2 a3 a4

glGetTexParameterfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glGetTexParameterfv_super object_ a1 a2 a3 a4 = (glGetTexParameterfv_impl (javaCast object_ :: GL11)) a1 a2 a3 a4

glGetTexParameterfv_impl :: GL11 -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glGetTexParameterfv_impl this target pname params offset = javaAbstractMethod "glGetTexParameterfv"


-- Java overload of glGetTexParameterfv with a different parameter count: give it a different name
glGetTexParameterfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetTexParameterfv object_ a1 a2 a3 = jmethod object_ "glGetTexParameterfv" (\() -> (glGetTexParameterfv_impl (javaCast object_ :: GL11))) () a1 a2 a3

glGetTexParameterfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetTexParameterfv_super object_ a1 a2 a3 = (glGetTexParameterfv_impl (javaCast object_ :: GL11)) a1 a2 a3

glGetTexParameterfv_impl :: GL11 -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glGetTexParameterfv_impl this target pname params = javaAbstractMethod "glGetTexParameterfv"


glGetTexParameteriv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glGetTexParameteriv object_ a1 a2 a3 a4 = jmethod object_ "glGetTexParameteriv" (\() -> (glGetTexParameteriv_impl (javaCast object_ :: GL11))) () a1 a2 a3 a4

glGetTexParameteriv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glGetTexParameteriv_super object_ a1 a2 a3 a4 = (glGetTexParameteriv_impl (javaCast object_ :: GL11)) a1 a2 a3 a4

glGetTexParameteriv_impl :: GL11 -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glGetTexParameteriv_impl this target pname params offset = javaAbstractMethod "glGetTexParameteriv"


-- Java overload of glGetTexParameteriv with a different parameter count: give it a different name
glGetTexParameteriv :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glGetTexParameteriv object_ a1 a2 a3 = jmethod object_ "glGetTexParameteriv" (\() -> (glGetTexParameteriv_impl (javaCast object_ :: GL11))) () a1 a2 a3

glGetTexParameteriv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glGetTexParameteriv_super object_ a1 a2 a3 = (glGetTexParameteriv_impl (javaCast object_ :: GL11)) a1 a2 a3

glGetTexParameteriv_impl :: GL11 -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glGetTexParameteriv_impl this target pname params = javaAbstractMethod "glGetTexParameteriv"


glIsBuffer :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
glIsBuffer object_ a1 = jmethod object_ "glIsBuffer" (\() -> (glIsBuffer_impl (javaCast object_ :: GL11))) () a1

glIsBuffer_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
glIsBuffer_super object_ a1 = (glIsBuffer_impl (javaCast object_ :: GL11)) a1

glIsBuffer_impl :: GL11 -> Int -> IO (Bool)
glIsBuffer_impl this buffer = javaAbstractMethod "glIsBuffer"


glIsEnabled :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
glIsEnabled object_ a1 = jmethod object_ "glIsEnabled" (\() -> (glIsEnabled_impl (javaCast object_ :: GL11))) () a1

glIsEnabled_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
glIsEnabled_super object_ a1 = (glIsEnabled_impl (javaCast object_ :: GL11)) a1

glIsEnabled_impl :: GL11 -> Int -> IO (Bool)
glIsEnabled_impl this cap = javaAbstractMethod "glIsEnabled"


glIsTexture :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
glIsTexture object_ a1 = jmethod object_ "glIsTexture" (\() -> (glIsTexture_impl (javaCast object_ :: GL11))) () a1

glIsTexture_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
glIsTexture_super object_ a1 = (glIsTexture_impl (javaCast object_ :: GL11)) a1

glIsTexture_impl :: GL11 -> Int -> IO (Bool)
glIsTexture_impl this texture = javaAbstractMethod "glIsTexture"


glNormalPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glNormalPointer object_ a1 a2 a3 = jmethod object_ "glNormalPointer" (\() -> (glNormalPointer_impl (javaCast object_ :: GL11))) () a1 a2 a3

glNormalPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glNormalPointer_super object_ a1 a2 a3 = (glNormalPointer_impl (javaCast object_ :: GL11)) a1 a2 a3

glNormalPointer_impl :: GL11 -> Int -> Int -> Int -> IO (())
glNormalPointer_impl this type_ stride offset = javaAbstractMethod "glNormalPointer"


glPointParameterf :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glPointParameterf object_ a1 a2 = jmethod object_ "glPointParameterf" (\() -> (glPointParameterf_impl (javaCast object_ :: GL11))) () a1 a2

glPointParameterf_super :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glPointParameterf_super object_ a1 a2 = (glPointParameterf_impl (javaCast object_ :: GL11)) a1 a2

glPointParameterf_impl :: GL11 -> Int -> Float -> IO (())
glPointParameterf_impl this pname param = javaAbstractMethod "glPointParameterf"


glPointParameterfv :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glPointParameterfv object_ a1 a2 a3 = jmethod object_ "glPointParameterfv" (\() -> (glPointParameterfv_impl (javaCast object_ :: GL11))) () a1 a2 a3

glPointParameterfv_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glPointParameterfv_super object_ a1 a2 a3 = (glPointParameterfv_impl (javaCast object_ :: GL11)) a1 a2 a3

glPointParameterfv_impl :: GL11 -> Int -> JavaArray (Float) -> Int -> IO (())
glPointParameterfv_impl this pname params offset = javaAbstractMethod "glPointParameterfv"


-- Java overload of glPointParameterfv with a different parameter count: give it a different name
glPointParameterfv :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glPointParameterfv object_ a1 a2 = jmethod object_ "glPointParameterfv" (\() -> (glPointParameterfv_impl (javaCast object_ :: GL11))) () a1 a2

glPointParameterfv_super :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glPointParameterfv_super object_ a1 a2 = (glPointParameterfv_impl (javaCast object_ :: GL11)) a1 a2

glPointParameterfv_impl :: GL11 -> Int -> FloatBuffer.FloatBuffer -> IO (())
glPointParameterfv_impl this pname params = javaAbstractMethod "glPointParameterfv"


glTexCoordPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glTexCoordPointer object_ a1 a2 a3 a4 = jmethod object_ "glTexCoordPointer" (\() -> (glTexCoordPointer_impl (javaCast object_ :: GL11))) () a1 a2 a3 a4

glTexCoordPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glTexCoordPointer_super object_ a1 a2 a3 a4 = (glTexCoordPointer_impl (javaCast object_ :: GL11)) a1 a2 a3 a4

glTexCoordPointer_impl :: GL11 -> Int -> Int -> Int -> Int -> IO (())
glTexCoordPointer_impl this size type_ stride offset = javaAbstractMethod "glTexCoordPointer"


glTexEnvi :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glTexEnvi object_ a1 a2 a3 = jmethod object_ "glTexEnvi" (\() -> (glTexEnvi_impl (javaCast object_ :: GL11))) () a1 a2 a3

glTexEnvi_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glTexEnvi_super object_ a1 a2 a3 = (glTexEnvi_impl (javaCast object_ :: GL11)) a1 a2 a3

glTexEnvi_impl :: GL11 -> Int -> Int -> Int -> IO (())
glTexEnvi_impl this target pname param = javaAbstractMethod "glTexEnvi"


glTexEnviv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glTexEnviv object_ a1 a2 a3 a4 = jmethod object_ "glTexEnviv" (\() -> (glTexEnviv_impl (javaCast object_ :: GL11))) () a1 a2 a3 a4

glTexEnviv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glTexEnviv_super object_ a1 a2 a3 a4 = (glTexEnviv_impl (javaCast object_ :: GL11)) a1 a2 a3 a4

glTexEnviv_impl :: GL11 -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glTexEnviv_impl this target pname params offset = javaAbstractMethod "glTexEnviv"


-- Java overload of glTexEnviv with a different parameter count: give it a different name
glTexEnviv :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glTexEnviv object_ a1 a2 a3 = jmethod object_ "glTexEnviv" (\() -> (glTexEnviv_impl (javaCast object_ :: GL11))) () a1 a2 a3

glTexEnviv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glTexEnviv_super object_ a1 a2 a3 = (glTexEnviv_impl (javaCast object_ :: GL11)) a1 a2 a3

glTexEnviv_impl :: GL11 -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glTexEnviv_impl this target pname params = javaAbstractMethod "glTexEnviv"


glTexParameterfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glTexParameterfv object_ a1 a2 a3 a4 = jmethod object_ "glTexParameterfv" (\() -> (glTexParameterfv_impl (javaCast object_ :: GL11))) () a1 a2 a3 a4

glTexParameterfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glTexParameterfv_super object_ a1 a2 a3 a4 = (glTexParameterfv_impl (javaCast object_ :: GL11)) a1 a2 a3 a4

glTexParameterfv_impl :: GL11 -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glTexParameterfv_impl this target pname params offset = javaAbstractMethod "glTexParameterfv"


-- Java overload of glTexParameterfv with a different parameter count: give it a different name
glTexParameterfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glTexParameterfv object_ a1 a2 a3 = jmethod object_ "glTexParameterfv" (\() -> (glTexParameterfv_impl (javaCast object_ :: GL11))) () a1 a2 a3

glTexParameterfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glTexParameterfv_super object_ a1 a2 a3 = (glTexParameterfv_impl (javaCast object_ :: GL11)) a1 a2 a3

glTexParameterfv_impl :: GL11 -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glTexParameterfv_impl this target pname params = javaAbstractMethod "glTexParameterfv"


glTexParameteri :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glTexParameteri object_ a1 a2 a3 = jmethod object_ "glTexParameteri" (\() -> (glTexParameteri_impl (javaCast object_ :: GL11))) () a1 a2 a3

glTexParameteri_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glTexParameteri_super object_ a1 a2 a3 = (glTexParameteri_impl (javaCast object_ :: GL11)) a1 a2 a3

glTexParameteri_impl :: GL11 -> Int -> Int -> Int -> IO (())
glTexParameteri_impl this target pname param = javaAbstractMethod "glTexParameteri"


glTexParameteriv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glTexParameteriv object_ a1 a2 a3 a4 = jmethod object_ "glTexParameteriv" (\() -> (glTexParameteriv_impl (javaCast object_ :: GL11))) () a1 a2 a3 a4

glTexParameteriv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glTexParameteriv_super object_ a1 a2 a3 a4 = (glTexParameteriv_impl (javaCast object_ :: GL11)) a1 a2 a3 a4

glTexParameteriv_impl :: GL11 -> Int -> Int -> JavaArray (Int) -> Int -> IO (())
glTexParameteriv_impl this target pname params offset = javaAbstractMethod "glTexParameteriv"


-- Java overload of glTexParameteriv with a different parameter count: give it a different name
glTexParameteriv :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glTexParameteriv object_ a1 a2 a3 = jmethod object_ "glTexParameteriv" (\() -> (glTexParameteriv_impl (javaCast object_ :: GL11))) () a1 a2 a3

glTexParameteriv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glTexParameteriv_super object_ a1 a2 a3 = (glTexParameteriv_impl (javaCast object_ :: GL11)) a1 a2 a3

glTexParameteriv_impl :: GL11 -> Int -> Int -> IntBuffer.IntBuffer -> IO (())
glTexParameteriv_impl this target pname params = javaAbstractMethod "glTexParameteriv"


glVertexPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glVertexPointer object_ a1 a2 a3 a4 = jmethod object_ "glVertexPointer" (\() -> (glVertexPointer_impl (javaCast object_ :: GL11))) () a1 a2 a3 a4

glVertexPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glVertexPointer_super object_ a1 a2 a3 a4 = (glVertexPointer_impl (javaCast object_ :: GL11)) a1 a2 a3 a4

glVertexPointer_impl :: GL11 -> Int -> Int -> Int -> Int -> IO (())
glVertexPointer_impl this size type_ stride offset = javaAbstractMethod "glVertexPointer"


