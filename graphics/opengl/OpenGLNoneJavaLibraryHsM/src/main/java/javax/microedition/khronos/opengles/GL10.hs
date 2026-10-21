{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package javax.microedition.khronos.opengles
module GL10 where

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
import qualified Buffer -- java.nio.Buffer
import qualified FloatBuffer -- java.nio.FloatBuffer
import qualified IntBuffer -- java.nio.IntBuffer
import qualified GL

-- Java interface: the classes that implement it have these functions
data GL10 = GL10
    { header_ :: JavaHeader
    }

instance JavaNull GL10 where
    javaNull = javaNullRecord "GL10"

instance JavaEquals GL10 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GL10 where
    (==) = jrecordEquals

instance JavaObjectClass GL10 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

gL_ADD = 260

gL_ALIASED_LINE_WIDTH_RANGE = 33902

gL_ALIASED_POINT_SIZE_RANGE = 33901

gL_ALPHA = 6406

gL_ALPHA_BITS = 3413

gL_ALPHA_TEST = 3008

gL_ALWAYS = 519

gL_AMBIENT = 4608

gL_AMBIENT_AND_DIFFUSE = 5634

gL_AND = 5377

gL_AND_INVERTED = 5380

gL_AND_REVERSE = 5378

gL_BACK = 1029

gL_BLEND = 3042

gL_BLUE_BITS = 3412

gL_BYTE = 5120

gL_CCW = 2305

gL_CLAMP_TO_EDGE = 33071

gL_CLEAR = 5376

gL_COLOR_ARRAY = 32886

gL_COLOR_BUFFER_BIT = 16384

gL_COLOR_LOGIC_OP = 3058

gL_COLOR_MATERIAL = 2903

gL_COMPRESSED_TEXTURE_FORMATS = 34467

gL_CONSTANT_ATTENUATION = 4615

gL_COPY = 5379

gL_COPY_INVERTED = 5388

gL_CULL_FACE = 2884

gL_CW = 2304

gL_DECAL = 8449

gL_DECR = 7683

gL_DEPTH_BITS = 3414

gL_DEPTH_BUFFER_BIT = 256

gL_DEPTH_TEST = 2929

gL_DIFFUSE = 4609

gL_DITHER = 3024

gL_DONT_CARE = 4352

gL_DST_ALPHA = 772

gL_DST_COLOR = 774

gL_EMISSION = 5632

gL_EQUAL = 514

gL_EQUIV = 5385

gL_EXP = 2048

gL_EXP2 = 2049

gL_EXTENSIONS = 7939

gL_FALSE = 0

gL_FASTEST = 4353

gL_FIXED = 5132

gL_FLAT = 7424

gL_FLOAT = 5126

gL_FOG = 2912

gL_FOG_COLOR = 2918

gL_FOG_DENSITY = 2914

gL_FOG_END = 2916

gL_FOG_HINT = 3156

gL_FOG_MODE = 2917

gL_FOG_START = 2915

gL_FRONT = 1028

gL_FRONT_AND_BACK = 1032

gL_GEQUAL = 518

gL_GREATER = 516

gL_GREEN_BITS = 3411

gL_IMPLEMENTATION_COLOR_READ_FORMAT_OES = 35739

gL_IMPLEMENTATION_COLOR_READ_TYPE_OES = 35738

gL_INCR = 7682

gL_INVALID_ENUM = 1280

gL_INVALID_OPERATION = 1282

gL_INVALID_VALUE = 1281

gL_INVERT = 5386

gL_KEEP = 7680

gL_LEQUAL = 515

gL_LESS = 513

gL_LIGHT_MODEL_AMBIENT = 2899

gL_LIGHT_MODEL_TWO_SIDE = 2898

gL_LIGHT0 = 16384

gL_LIGHT1 = 16385

gL_LIGHT2 = 16386

gL_LIGHT3 = 16387

gL_LIGHT4 = 16388

gL_LIGHT5 = 16389

gL_LIGHT6 = 16390

gL_LIGHT7 = 16391

gL_LIGHTING = 2896

gL_LINE_LOOP = 2

gL_LINE_SMOOTH = 2848

gL_LINE_SMOOTH_HINT = 3154

gL_LINE_STRIP = 3

gL_LINEAR = 9729

gL_LINEAR_ATTENUATION = 4616

gL_LINEAR_MIPMAP_LINEAR = 9987

gL_LINEAR_MIPMAP_NEAREST = 9985

gL_LINES = 1

gL_LUMINANCE = 6409

gL_LUMINANCE_ALPHA = 6410

gL_MAX_ELEMENTS_INDICES = 33001

gL_MAX_ELEMENTS_VERTICES = 33000

gL_MAX_LIGHTS = 3377

gL_MAX_MODELVIEW_STACK_DEPTH = 3382

gL_MAX_PROJECTION_STACK_DEPTH = 3384

gL_MAX_TEXTURE_SIZE = 3379

gL_MAX_TEXTURE_STACK_DEPTH = 3385

gL_MAX_TEXTURE_UNITS = 34018

gL_MAX_VIEWPORT_DIMS = 3386

gL_MODELVIEW = 5888

gL_MODULATE = 8448

gL_MULTISAMPLE = 32925

gL_NAND = 5390

gL_NEAREST = 9728

gL_NEAREST_MIPMAP_LINEAR = 9986

gL_NEAREST_MIPMAP_NEAREST = 9984

gL_NEVER = 512

gL_NICEST = 4354

gL_NO_ERROR = 0

gL_NOOP = 5381

gL_NOR = 5384

gL_NORMAL_ARRAY = 32885

gL_NORMALIZE = 2977

gL_NOTEQUAL = 517

gL_NUM_COMPRESSED_TEXTURE_FORMATS = 34466

gL_ONE = 1

gL_ONE_MINUS_DST_ALPHA = 773

gL_ONE_MINUS_DST_COLOR = 775

gL_ONE_MINUS_SRC_ALPHA = 771

gL_ONE_MINUS_SRC_COLOR = 769

gL_OR = 5383

gL_OR_INVERTED = 5389

gL_OR_REVERSE = 5387

gL_OUT_OF_MEMORY = 1285

gL_PACK_ALIGNMENT = 3333

gL_PALETTE4_R5_G6_B5_OES = 35730

gL_PALETTE4_RGB5_A1_OES = 35732

gL_PALETTE4_RGB8_OES = 35728

gL_PALETTE4_RGBA4_OES = 35731

gL_PALETTE4_RGBA8_OES = 35729

gL_PALETTE8_R5_G6_B5_OES = 35735

gL_PALETTE8_RGB5_A1_OES = 35737

gL_PALETTE8_RGB8_OES = 35733

gL_PALETTE8_RGBA4_OES = 35736

gL_PALETTE8_RGBA8_OES = 35734

gL_PERSPECTIVE_CORRECTION_HINT = 3152

gL_POINT_SMOOTH = 2832

gL_POINT_SMOOTH_HINT = 3153

gL_POINTS = 0

gL_POINT_FADE_THRESHOLD_SIZE = 33064

gL_POINT_SIZE = 2833

gL_POLYGON_OFFSET_FILL = 32823

gL_POLYGON_SMOOTH_HINT = 3155

gL_POSITION = 4611

gL_PROJECTION = 5889

gL_QUADRATIC_ATTENUATION = 4617

gL_RED_BITS = 3410

gL_RENDERER = 7937

gL_REPEAT = 10497

gL_REPLACE = 7681

gL_RESCALE_NORMAL = 32826

gL_RGB = 6407

gL_RGBA = 6408

gL_SAMPLE_ALPHA_TO_COVERAGE = 32926

gL_SAMPLE_ALPHA_TO_ONE = 32927

gL_SAMPLE_COVERAGE = 32928

gL_SCISSOR_TEST = 3089

gL_SET = 5391

gL_SHININESS = 5633

gL_SHORT = 5122

gL_SMOOTH = 7425

gL_SMOOTH_LINE_WIDTH_RANGE = 2850

gL_SMOOTH_POINT_SIZE_RANGE = 2834

gL_SPECULAR = 4610

gL_SPOT_CUTOFF = 4614

gL_SPOT_DIRECTION = 4612

gL_SPOT_EXPONENT = 4613

gL_SRC_ALPHA = 770

gL_SRC_ALPHA_SATURATE = 776

gL_SRC_COLOR = 768

gL_STACK_OVERFLOW = 1283

gL_STACK_UNDERFLOW = 1284

gL_STENCIL_BITS = 3415

gL_STENCIL_BUFFER_BIT = 1024

gL_STENCIL_TEST = 2960

gL_SUBPIXEL_BITS = 3408

gL_TEXTURE = 5890

gL_TEXTURE_2D = 3553

gL_TEXTURE_COORD_ARRAY = 32888

gL_TEXTURE_ENV = 8960

gL_TEXTURE_ENV_COLOR = 8705

gL_TEXTURE_ENV_MODE = 8704

gL_TEXTURE_MAG_FILTER = 10240

gL_TEXTURE_MIN_FILTER = 10241

gL_TEXTURE_WRAP_S = 10242

gL_TEXTURE_WRAP_T = 10243

gL_TEXTURE0 = 33984

gL_TEXTURE1 = 33985

gL_TEXTURE2 = 33986

gL_TEXTURE3 = 33987

gL_TEXTURE4 = 33988

gL_TEXTURE5 = 33989

gL_TEXTURE6 = 33990

gL_TEXTURE7 = 33991

gL_TEXTURE8 = 33992

gL_TEXTURE9 = 33993

gL_TEXTURE10 = 33994

gL_TEXTURE11 = 33995

gL_TEXTURE12 = 33996

gL_TEXTURE13 = 33997

gL_TEXTURE14 = 33998

gL_TEXTURE15 = 33999

gL_TEXTURE16 = 34000

gL_TEXTURE17 = 34001

gL_TEXTURE18 = 34002

gL_TEXTURE19 = 34003

gL_TEXTURE20 = 34004

gL_TEXTURE21 = 34005

gL_TEXTURE22 = 34006

gL_TEXTURE23 = 34007

gL_TEXTURE24 = 34008

gL_TEXTURE25 = 34009

gL_TEXTURE26 = 34010

gL_TEXTURE27 = 34011

gL_TEXTURE28 = 34012

gL_TEXTURE29 = 34013

gL_TEXTURE30 = 34014

gL_TEXTURE31 = 34015

gL_TRIANGLE_FAN = 6

gL_TRIANGLE_STRIP = 5

gL_TRIANGLES = 4

gL_TRUE = 1

gL_UNPACK_ALIGNMENT = 3317

gL_UNSIGNED_BYTE = 5121

gL_UNSIGNED_SHORT = 5123

gL_UNSIGNED_SHORT_4_4_4_4 = 32819

gL_UNSIGNED_SHORT_5_5_5_1 = 32820

gL_UNSIGNED_SHORT_5_6_5 = 33635

gL_VENDOR = 7936

gL_VERSION = 7938

gL_VERTEX_ARRAY = 32884

gL_XOR = 5382

gL_ZERO = 0

fromHeader_ :: JavaHeader -> GL10
fromHeader_ header = GL10 header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GL10 header)
    GL.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


glActiveTexture :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glActiveTexture object_ a1 = jmethod object_ "glActiveTexture" (\() -> (glActiveTexture_impl (javaCast object_ :: GL10))) () a1

glActiveTexture_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glActiveTexture_super object_ a1 = (glActiveTexture_impl (javaCast object_ :: GL10)) a1

glActiveTexture_impl :: GL10 -> Int -> IO (())
glActiveTexture_impl this texture = javaAbstractMethod "glActiveTexture"


glAlphaFunc :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glAlphaFunc object_ a1 a2 = jmethod object_ "glAlphaFunc" (\() -> (glAlphaFunc_impl (javaCast object_ :: GL10))) () a1 a2

glAlphaFunc_super :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glAlphaFunc_super object_ a1 a2 = (glAlphaFunc_impl (javaCast object_ :: GL10)) a1 a2

glAlphaFunc_impl :: GL10 -> Int -> Float -> IO (())
glAlphaFunc_impl this func ref = javaAbstractMethod "glAlphaFunc"


glBindTexture :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glBindTexture object_ a1 a2 = jmethod object_ "glBindTexture" (\() -> (glBindTexture_impl (javaCast object_ :: GL10))) () a1 a2

glBindTexture_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glBindTexture_super object_ a1 a2 = (glBindTexture_impl (javaCast object_ :: GL10)) a1 a2

glBindTexture_impl :: GL10 -> Int -> Int -> IO (())
glBindTexture_impl this target texture = javaAbstractMethod "glBindTexture"


glBlendFunc :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glBlendFunc object_ a1 a2 = jmethod object_ "glBlendFunc" (\() -> (glBlendFunc_impl (javaCast object_ :: GL10))) () a1 a2

glBlendFunc_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glBlendFunc_super object_ a1 a2 = (glBlendFunc_impl (javaCast object_ :: GL10)) a1 a2

glBlendFunc_impl :: GL10 -> Int -> Int -> IO (())
glBlendFunc_impl this sfactor dfactor = javaAbstractMethod "glBlendFunc"


glClear :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClear object_ a1 = jmethod object_ "glClear" (\() -> (glClear_impl (javaCast object_ :: GL10))) () a1

glClear_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClear_super object_ a1 = (glClear_impl (javaCast object_ :: GL10)) a1

glClear_impl :: GL10 -> Int -> IO (())
glClear_impl this mask = javaAbstractMethod "glClear"


glClearColor :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (())
glClearColor object_ a1 a2 a3 a4 = jmethod object_ "glClearColor" (\() -> (glClearColor_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4

glClearColor_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (())
glClearColor_super object_ a1 a2 a3 a4 = (glClearColor_impl (javaCast object_ :: GL10)) a1 a2 a3 a4

glClearColor_impl :: GL10 -> Float -> Float -> Float -> Float -> IO (())
glClearColor_impl this red green blue alpha = javaAbstractMethod "glClearColor"


glClearDepthf :: (JavaObjectClass this_) => this_ -> Float -> IO (())
glClearDepthf object_ a1 = jmethod object_ "glClearDepthf" (\() -> (glClearDepthf_impl (javaCast object_ :: GL10))) () a1

glClearDepthf_super :: (JavaObjectClass this_) => this_ -> Float -> IO (())
glClearDepthf_super object_ a1 = (glClearDepthf_impl (javaCast object_ :: GL10)) a1

glClearDepthf_impl :: GL10 -> Float -> IO (())
glClearDepthf_impl this depth = javaAbstractMethod "glClearDepthf"


glClearStencil :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClearStencil object_ a1 = jmethod object_ "glClearStencil" (\() -> (glClearStencil_impl (javaCast object_ :: GL10))) () a1

glClearStencil_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClearStencil_super object_ a1 = (glClearStencil_impl (javaCast object_ :: GL10)) a1

glClearStencil_impl :: GL10 -> Int -> IO (())
glClearStencil_impl this s = javaAbstractMethod "glClearStencil"


glClientActiveTexture :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClientActiveTexture object_ a1 = jmethod object_ "glClientActiveTexture" (\() -> (glClientActiveTexture_impl (javaCast object_ :: GL10))) () a1

glClientActiveTexture_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glClientActiveTexture_super object_ a1 = (glClientActiveTexture_impl (javaCast object_ :: GL10)) a1

glClientActiveTexture_impl :: GL10 -> Int -> IO (())
glClientActiveTexture_impl this texture = javaAbstractMethod "glClientActiveTexture"


glColor4f :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (())
glColor4f object_ a1 a2 a3 a4 = jmethod object_ "glColor4f" (\() -> (glColor4f_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4

glColor4f_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (())
glColor4f_super object_ a1 a2 a3 a4 = (glColor4f_impl (javaCast object_ :: GL10)) a1 a2 a3 a4

glColor4f_impl :: GL10 -> Float -> Float -> Float -> Float -> IO (())
glColor4f_impl this red green blue alpha = javaAbstractMethod "glColor4f"


glColorMask :: (JavaObjectClass this_) => this_ -> Bool -> Bool -> Bool -> Bool -> IO (())
glColorMask object_ a1 a2 a3 a4 = jmethod object_ "glColorMask" (\() -> (glColorMask_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4

glColorMask_super :: (JavaObjectClass this_) => this_ -> Bool -> Bool -> Bool -> Bool -> IO (())
glColorMask_super object_ a1 a2 a3 a4 = (glColorMask_impl (javaCast object_ :: GL10)) a1 a2 a3 a4

glColorMask_impl :: GL10 -> Bool -> Bool -> Bool -> Bool -> IO (())
glColorMask_impl this red green blue alpha = javaAbstractMethod "glColorMask"


glColorPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glColorPointer object_ a1 a2 a3 a4 = jmethod object_ "glColorPointer" (\() -> (glColorPointer_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4

glColorPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glColorPointer_super object_ a1 a2 a3 a4 = (glColorPointer_impl (javaCast object_ :: GL10)) a1 a2 a3 a4

glColorPointer_impl :: GL10 -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glColorPointer_impl this size type_ stride pointer = javaAbstractMethod "glColorPointer"


glCompressedTexImage2D :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glCompressedTexImage2D object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "glCompressedTexImage2D" (\() -> (glCompressedTexImage2D_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4 a5 a6 a7 a8

glCompressedTexImage2D_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glCompressedTexImage2D_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (glCompressedTexImage2D_impl (javaCast object_ :: GL10)) a1 a2 a3 a4 a5 a6 a7 a8

glCompressedTexImage2D_impl :: GL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glCompressedTexImage2D_impl this target level internalformat width height border imageSize data_ = javaAbstractMethod "glCompressedTexImage2D"


glCompressedTexSubImage2D :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glCompressedTexSubImage2D object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = jmethod object_ "glCompressedTexSubImage2D" (\() -> (glCompressedTexSubImage2D_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4 a5 a6 a7 a8 a9

glCompressedTexSubImage2D_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glCompressedTexSubImage2D_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = (glCompressedTexSubImage2D_impl (javaCast object_ :: GL10)) a1 a2 a3 a4 a5 a6 a7 a8 a9

glCompressedTexSubImage2D_impl :: GL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glCompressedTexSubImage2D_impl this target level xoffset yoffset width height format imageSize data_ = javaAbstractMethod "glCompressedTexSubImage2D"


glCopyTexImage2D :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glCopyTexImage2D object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "glCopyTexImage2D" (\() -> (glCopyTexImage2D_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4 a5 a6 a7 a8

glCopyTexImage2D_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glCopyTexImage2D_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (glCopyTexImage2D_impl (javaCast object_ :: GL10)) a1 a2 a3 a4 a5 a6 a7 a8

glCopyTexImage2D_impl :: GL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glCopyTexImage2D_impl this target level internalformat x y width height border = javaAbstractMethod "glCopyTexImage2D"


glCopyTexSubImage2D :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glCopyTexSubImage2D object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "glCopyTexSubImage2D" (\() -> (glCopyTexSubImage2D_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4 a5 a6 a7 a8

glCopyTexSubImage2D_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glCopyTexSubImage2D_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (glCopyTexSubImage2D_impl (javaCast object_ :: GL10)) a1 a2 a3 a4 a5 a6 a7 a8

glCopyTexSubImage2D_impl :: GL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
glCopyTexSubImage2D_impl this target level xoffset yoffset x y width height = javaAbstractMethod "glCopyTexSubImage2D"


glCullFace :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glCullFace object_ a1 = jmethod object_ "glCullFace" (\() -> (glCullFace_impl (javaCast object_ :: GL10))) () a1

glCullFace_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glCullFace_super object_ a1 = (glCullFace_impl (javaCast object_ :: GL10)) a1

glCullFace_impl :: GL10 -> Int -> IO (())
glCullFace_impl this mode = javaAbstractMethod "glCullFace"


glDeleteTextures :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glDeleteTextures object_ a1 a2 a3 = jmethod object_ "glDeleteTextures" (\() -> (glDeleteTextures_impl (javaCast object_ :: GL10))) () a1 a2 a3

glDeleteTextures_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glDeleteTextures_super object_ a1 a2 a3 = (glDeleteTextures_impl (javaCast object_ :: GL10)) a1 a2 a3

glDeleteTextures_impl :: GL10 -> Int -> JavaArray (Int) -> Int -> IO (())
glDeleteTextures_impl this n textures offset = javaAbstractMethod "glDeleteTextures"


-- Java overload of glDeleteTextures with a different parameter count: give it a different name
glDeleteTextures :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glDeleteTextures object_ a1 a2 = jmethod object_ "glDeleteTextures" (\() -> (glDeleteTextures_impl (javaCast object_ :: GL10))) () a1 a2

glDeleteTextures_super :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glDeleteTextures_super object_ a1 a2 = (glDeleteTextures_impl (javaCast object_ :: GL10)) a1 a2

glDeleteTextures_impl :: GL10 -> Int -> IntBuffer.IntBuffer -> IO (())
glDeleteTextures_impl this n textures = javaAbstractMethod "glDeleteTextures"


glDepthFunc :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glDepthFunc object_ a1 = jmethod object_ "glDepthFunc" (\() -> (glDepthFunc_impl (javaCast object_ :: GL10))) () a1

glDepthFunc_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glDepthFunc_super object_ a1 = (glDepthFunc_impl (javaCast object_ :: GL10)) a1

glDepthFunc_impl :: GL10 -> Int -> IO (())
glDepthFunc_impl this func = javaAbstractMethod "glDepthFunc"


glDepthMask :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
glDepthMask object_ a1 = jmethod object_ "glDepthMask" (\() -> (glDepthMask_impl (javaCast object_ :: GL10))) () a1

glDepthMask_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
glDepthMask_super object_ a1 = (glDepthMask_impl (javaCast object_ :: GL10)) a1

glDepthMask_impl :: GL10 -> Bool -> IO (())
glDepthMask_impl this flag = javaAbstractMethod "glDepthMask"


glDepthRangef :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
glDepthRangef object_ a1 a2 = jmethod object_ "glDepthRangef" (\() -> (glDepthRangef_impl (javaCast object_ :: GL10))) () a1 a2

glDepthRangef_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
glDepthRangef_super object_ a1 a2 = (glDepthRangef_impl (javaCast object_ :: GL10)) a1 a2

glDepthRangef_impl :: GL10 -> Float -> Float -> IO (())
glDepthRangef_impl this zNear zFar = javaAbstractMethod "glDepthRangef"


glDisable :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glDisable object_ a1 = jmethod object_ "glDisable" (\() -> (glDisable_impl (javaCast object_ :: GL10))) () a1

glDisable_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glDisable_super object_ a1 = (glDisable_impl (javaCast object_ :: GL10)) a1

glDisable_impl :: GL10 -> Int -> IO (())
glDisable_impl this cap = javaAbstractMethod "glDisable"


glDisableClientState :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glDisableClientState object_ a1 = jmethod object_ "glDisableClientState" (\() -> (glDisableClientState_impl (javaCast object_ :: GL10))) () a1

glDisableClientState_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glDisableClientState_super object_ a1 = (glDisableClientState_impl (javaCast object_ :: GL10)) a1

glDisableClientState_impl :: GL10 -> Int -> IO (())
glDisableClientState_impl this array = javaAbstractMethod "glDisableClientState"


glDrawArrays :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glDrawArrays object_ a1 a2 a3 = jmethod object_ "glDrawArrays" (\() -> (glDrawArrays_impl (javaCast object_ :: GL10))) () a1 a2 a3

glDrawArrays_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glDrawArrays_super object_ a1 a2 a3 = (glDrawArrays_impl (javaCast object_ :: GL10)) a1 a2 a3

glDrawArrays_impl :: GL10 -> Int -> Int -> Int -> IO (())
glDrawArrays_impl this mode first count = javaAbstractMethod "glDrawArrays"


glDrawElements :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glDrawElements object_ a1 a2 a3 a4 = jmethod object_ "glDrawElements" (\() -> (glDrawElements_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4

glDrawElements_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glDrawElements_super object_ a1 a2 a3 a4 = (glDrawElements_impl (javaCast object_ :: GL10)) a1 a2 a3 a4

glDrawElements_impl :: GL10 -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glDrawElements_impl this mode count type_ indices = javaAbstractMethod "glDrawElements"


glEnable :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glEnable object_ a1 = jmethod object_ "glEnable" (\() -> (glEnable_impl (javaCast object_ :: GL10))) () a1

glEnable_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glEnable_super object_ a1 = (glEnable_impl (javaCast object_ :: GL10)) a1

glEnable_impl :: GL10 -> Int -> IO (())
glEnable_impl this cap = javaAbstractMethod "glEnable"


glEnableClientState :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glEnableClientState object_ a1 = jmethod object_ "glEnableClientState" (\() -> (glEnableClientState_impl (javaCast object_ :: GL10))) () a1

glEnableClientState_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glEnableClientState_super object_ a1 = (glEnableClientState_impl (javaCast object_ :: GL10)) a1

glEnableClientState_impl :: GL10 -> Int -> IO (())
glEnableClientState_impl this array = javaAbstractMethod "glEnableClientState"


glFinish :: (JavaObjectClass this_) => this_ -> IO (())
glFinish object_ = jmethod object_ "glFinish" (\() -> (glFinish_impl (javaCast object_ :: GL10))) ()

glFinish_super :: (JavaObjectClass this_) => this_ -> IO (())
glFinish_super object_ = (glFinish_impl (javaCast object_ :: GL10))

glFinish_impl :: GL10 -> IO (())
glFinish_impl this = javaAbstractMethod "glFinish"


glFlush :: (JavaObjectClass this_) => this_ -> IO (())
glFlush object_ = jmethod object_ "glFlush" (\() -> (glFlush_impl (javaCast object_ :: GL10))) ()

glFlush_super :: (JavaObjectClass this_) => this_ -> IO (())
glFlush_super object_ = (glFlush_impl (javaCast object_ :: GL10))

glFlush_impl :: GL10 -> IO (())
glFlush_impl this = javaAbstractMethod "glFlush"


glFogf :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glFogf object_ a1 a2 = jmethod object_ "glFogf" (\() -> (glFogf_impl (javaCast object_ :: GL10))) () a1 a2

glFogf_super :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glFogf_super object_ a1 a2 = (glFogf_impl (javaCast object_ :: GL10)) a1 a2

glFogf_impl :: GL10 -> Int -> Float -> IO (())
glFogf_impl this pname param = javaAbstractMethod "glFogf"


glFogfv :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glFogfv object_ a1 a2 a3 = jmethod object_ "glFogfv" (\() -> (glFogfv_impl (javaCast object_ :: GL10))) () a1 a2 a3

glFogfv_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glFogfv_super object_ a1 a2 a3 = (glFogfv_impl (javaCast object_ :: GL10)) a1 a2 a3

glFogfv_impl :: GL10 -> Int -> JavaArray (Float) -> Int -> IO (())
glFogfv_impl this pname params offset = javaAbstractMethod "glFogfv"


-- Java overload of glFogfv with a different parameter count: give it a different name
glFogfv :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glFogfv object_ a1 a2 = jmethod object_ "glFogfv" (\() -> (glFogfv_impl (javaCast object_ :: GL10))) () a1 a2

glFogfv_super :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glFogfv_super object_ a1 a2 = (glFogfv_impl (javaCast object_ :: GL10)) a1 a2

glFogfv_impl :: GL10 -> Int -> FloatBuffer.FloatBuffer -> IO (())
glFogfv_impl this pname params = javaAbstractMethod "glFogfv"


glFrontFace :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glFrontFace object_ a1 = jmethod object_ "glFrontFace" (\() -> (glFrontFace_impl (javaCast object_ :: GL10))) () a1

glFrontFace_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glFrontFace_super object_ a1 = (glFrontFace_impl (javaCast object_ :: GL10)) a1

glFrontFace_impl :: GL10 -> Int -> IO (())
glFrontFace_impl this mode = javaAbstractMethod "glFrontFace"


glFrustumf :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glFrustumf object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "glFrustumf" (\() -> (glFrustumf_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4 a5 a6

glFrustumf_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glFrustumf_super object_ a1 a2 a3 a4 a5 a6 = (glFrustumf_impl (javaCast object_ :: GL10)) a1 a2 a3 a4 a5 a6

glFrustumf_impl :: GL10 -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glFrustumf_impl this left right bottom top zNear zFar = javaAbstractMethod "glFrustumf"


glGenTextures :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glGenTextures object_ a1 a2 a3 = jmethod object_ "glGenTextures" (\() -> (glGenTextures_impl (javaCast object_ :: GL10))) () a1 a2 a3

glGenTextures_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glGenTextures_super object_ a1 a2 a3 = (glGenTextures_impl (javaCast object_ :: GL10)) a1 a2 a3

glGenTextures_impl :: GL10 -> Int -> JavaArray (Int) -> Int -> IO (())
glGenTextures_impl this n textures offset = javaAbstractMethod "glGenTextures"


-- Java overload of glGenTextures with a different parameter count: give it a different name
glGenTextures :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glGenTextures object_ a1 a2 = jmethod object_ "glGenTextures" (\() -> (glGenTextures_impl (javaCast object_ :: GL10))) () a1 a2

glGenTextures_super :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glGenTextures_super object_ a1 a2 = (glGenTextures_impl (javaCast object_ :: GL10)) a1 a2

glGenTextures_impl :: GL10 -> Int -> IntBuffer.IntBuffer -> IO (())
glGenTextures_impl this n textures = javaAbstractMethod "glGenTextures"


glGetError :: (JavaObjectClass this_) => this_ -> IO (Int)
glGetError object_ = jmethod object_ "glGetError" (\() -> (glGetError_impl (javaCast object_ :: GL10))) ()

glGetError_super :: (JavaObjectClass this_) => this_ -> IO (Int)
glGetError_super object_ = (glGetError_impl (javaCast object_ :: GL10))

glGetError_impl :: GL10 -> IO (Int)
glGetError_impl this = javaAbstractMethod "glGetError"


glGetIntegerv :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glGetIntegerv object_ a1 a2 a3 = jmethod object_ "glGetIntegerv" (\() -> (glGetIntegerv_impl (javaCast object_ :: GL10))) () a1 a2 a3

glGetIntegerv_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Int) -> Int -> IO (())
glGetIntegerv_super object_ a1 a2 a3 = (glGetIntegerv_impl (javaCast object_ :: GL10)) a1 a2 a3

glGetIntegerv_impl :: GL10 -> Int -> JavaArray (Int) -> Int -> IO (())
glGetIntegerv_impl this pname params offset = javaAbstractMethod "glGetIntegerv"


-- Java overload of glGetIntegerv with a different parameter count: give it a different name
glGetIntegerv :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glGetIntegerv object_ a1 a2 = jmethod object_ "glGetIntegerv" (\() -> (glGetIntegerv_impl (javaCast object_ :: GL10))) () a1 a2

glGetIntegerv_super :: (JavaObjectClass this_) => this_ -> Int -> IntBuffer.IntBuffer -> IO (())
glGetIntegerv_super object_ a1 a2 = (glGetIntegerv_impl (javaCast object_ :: GL10)) a1 a2

glGetIntegerv_impl :: GL10 -> Int -> IntBuffer.IntBuffer -> IO (())
glGetIntegerv_impl this pname params = javaAbstractMethod "glGetIntegerv"


glGetString :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
glGetString object_ a1 = jmethod object_ "glGetString" (\() -> (glGetString_impl (javaCast object_ :: GL10))) () a1

glGetString_super :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
glGetString_super object_ a1 = (glGetString_impl (javaCast object_ :: GL10)) a1

glGetString_impl :: GL10 -> Int -> IO (String)
glGetString_impl this name = javaAbstractMethod "glGetString"


glHint :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glHint object_ a1 a2 = jmethod object_ "glHint" (\() -> (glHint_impl (javaCast object_ :: GL10))) () a1 a2

glHint_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glHint_super object_ a1 a2 = (glHint_impl (javaCast object_ :: GL10)) a1 a2

glHint_impl :: GL10 -> Int -> Int -> IO (())
glHint_impl this target mode = javaAbstractMethod "glHint"


glLightModelf :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glLightModelf object_ a1 a2 = jmethod object_ "glLightModelf" (\() -> (glLightModelf_impl (javaCast object_ :: GL10))) () a1 a2

glLightModelf_super :: (JavaObjectClass this_) => this_ -> Int -> Float -> IO (())
glLightModelf_super object_ a1 a2 = (glLightModelf_impl (javaCast object_ :: GL10)) a1 a2

glLightModelf_impl :: GL10 -> Int -> Float -> IO (())
glLightModelf_impl this pname param = javaAbstractMethod "glLightModelf"


glLightModelfv :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glLightModelfv object_ a1 a2 a3 = jmethod object_ "glLightModelfv" (\() -> (glLightModelfv_impl (javaCast object_ :: GL10))) () a1 a2 a3

glLightModelfv_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (Float) -> Int -> IO (())
glLightModelfv_super object_ a1 a2 a3 = (glLightModelfv_impl (javaCast object_ :: GL10)) a1 a2 a3

glLightModelfv_impl :: GL10 -> Int -> JavaArray (Float) -> Int -> IO (())
glLightModelfv_impl this pname params offset = javaAbstractMethod "glLightModelfv"


-- Java overload of glLightModelfv with a different parameter count: give it a different name
glLightModelfv :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glLightModelfv object_ a1 a2 = jmethod object_ "glLightModelfv" (\() -> (glLightModelfv_impl (javaCast object_ :: GL10))) () a1 a2

glLightModelfv_super :: (JavaObjectClass this_) => this_ -> Int -> FloatBuffer.FloatBuffer -> IO (())
glLightModelfv_super object_ a1 a2 = (glLightModelfv_impl (javaCast object_ :: GL10)) a1 a2

glLightModelfv_impl :: GL10 -> Int -> FloatBuffer.FloatBuffer -> IO (())
glLightModelfv_impl this pname params = javaAbstractMethod "glLightModelfv"


glLightf :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glLightf object_ a1 a2 a3 = jmethod object_ "glLightf" (\() -> (glLightf_impl (javaCast object_ :: GL10))) () a1 a2 a3

glLightf_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glLightf_super object_ a1 a2 a3 = (glLightf_impl (javaCast object_ :: GL10)) a1 a2 a3

glLightf_impl :: GL10 -> Int -> Int -> Float -> IO (())
glLightf_impl this light pname param = javaAbstractMethod "glLightf"


glLightfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glLightfv object_ a1 a2 a3 a4 = jmethod object_ "glLightfv" (\() -> (glLightfv_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4

glLightfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glLightfv_super object_ a1 a2 a3 a4 = (glLightfv_impl (javaCast object_ :: GL10)) a1 a2 a3 a4

glLightfv_impl :: GL10 -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glLightfv_impl this light pname params offset = javaAbstractMethod "glLightfv"


-- Java overload of glLightfv with a different parameter count: give it a different name
glLightfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glLightfv object_ a1 a2 a3 = jmethod object_ "glLightfv" (\() -> (glLightfv_impl (javaCast object_ :: GL10))) () a1 a2 a3

glLightfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glLightfv_super object_ a1 a2 a3 = (glLightfv_impl (javaCast object_ :: GL10)) a1 a2 a3

glLightfv_impl :: GL10 -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glLightfv_impl this light pname params = javaAbstractMethod "glLightfv"


glLineWidth :: (JavaObjectClass this_) => this_ -> Float -> IO (())
glLineWidth object_ a1 = jmethod object_ "glLineWidth" (\() -> (glLineWidth_impl (javaCast object_ :: GL10))) () a1

glLineWidth_super :: (JavaObjectClass this_) => this_ -> Float -> IO (())
glLineWidth_super object_ a1 = (glLineWidth_impl (javaCast object_ :: GL10)) a1

glLineWidth_impl :: GL10 -> Float -> IO (())
glLineWidth_impl this width = javaAbstractMethod "glLineWidth"


glLoadIdentity :: (JavaObjectClass this_) => this_ -> IO (())
glLoadIdentity object_ = jmethod object_ "glLoadIdentity" (\() -> (glLoadIdentity_impl (javaCast object_ :: GL10))) ()

glLoadIdentity_super :: (JavaObjectClass this_) => this_ -> IO (())
glLoadIdentity_super object_ = (glLoadIdentity_impl (javaCast object_ :: GL10))

glLoadIdentity_impl :: GL10 -> IO (())
glLoadIdentity_impl this = javaAbstractMethod "glLoadIdentity"


glLoadMatrixf :: (JavaObjectClass this_) => this_ -> JavaArray (Float) -> Int -> IO (())
glLoadMatrixf object_ a1 a2 = jmethod object_ "glLoadMatrixf" (\() -> (glLoadMatrixf_impl (javaCast object_ :: GL10))) () a1 a2

glLoadMatrixf_super :: (JavaObjectClass this_) => this_ -> JavaArray (Float) -> Int -> IO (())
glLoadMatrixf_super object_ a1 a2 = (glLoadMatrixf_impl (javaCast object_ :: GL10)) a1 a2

glLoadMatrixf_impl :: GL10 -> JavaArray (Float) -> Int -> IO (())
glLoadMatrixf_impl this m offset = javaAbstractMethod "glLoadMatrixf"


-- Java overload of glLoadMatrixf with a different parameter count: give it a different name
glLoadMatrixf :: (JavaObjectClass this_) => this_ -> FloatBuffer.FloatBuffer -> IO (())
glLoadMatrixf object_ a1 = jmethod object_ "glLoadMatrixf" (\() -> (glLoadMatrixf_impl (javaCast object_ :: GL10))) () a1

glLoadMatrixf_super :: (JavaObjectClass this_) => this_ -> FloatBuffer.FloatBuffer -> IO (())
glLoadMatrixf_super object_ a1 = (glLoadMatrixf_impl (javaCast object_ :: GL10)) a1

glLoadMatrixf_impl :: GL10 -> FloatBuffer.FloatBuffer -> IO (())
glLoadMatrixf_impl this m = javaAbstractMethod "glLoadMatrixf"


glLogicOp :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glLogicOp object_ a1 = jmethod object_ "glLogicOp" (\() -> (glLogicOp_impl (javaCast object_ :: GL10))) () a1

glLogicOp_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glLogicOp_super object_ a1 = (glLogicOp_impl (javaCast object_ :: GL10)) a1

glLogicOp_impl :: GL10 -> Int -> IO (())
glLogicOp_impl this opcode = javaAbstractMethod "glLogicOp"


glMaterialf :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glMaterialf object_ a1 a2 a3 = jmethod object_ "glMaterialf" (\() -> (glMaterialf_impl (javaCast object_ :: GL10))) () a1 a2 a3

glMaterialf_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glMaterialf_super object_ a1 a2 a3 = (glMaterialf_impl (javaCast object_ :: GL10)) a1 a2 a3

glMaterialf_impl :: GL10 -> Int -> Int -> Float -> IO (())
glMaterialf_impl this face pname param = javaAbstractMethod "glMaterialf"


glMaterialfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glMaterialfv object_ a1 a2 a3 a4 = jmethod object_ "glMaterialfv" (\() -> (glMaterialfv_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4

glMaterialfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glMaterialfv_super object_ a1 a2 a3 a4 = (glMaterialfv_impl (javaCast object_ :: GL10)) a1 a2 a3 a4

glMaterialfv_impl :: GL10 -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glMaterialfv_impl this face pname params offset = javaAbstractMethod "glMaterialfv"


-- Java overload of glMaterialfv with a different parameter count: give it a different name
glMaterialfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glMaterialfv object_ a1 a2 a3 = jmethod object_ "glMaterialfv" (\() -> (glMaterialfv_impl (javaCast object_ :: GL10))) () a1 a2 a3

glMaterialfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glMaterialfv_super object_ a1 a2 a3 = (glMaterialfv_impl (javaCast object_ :: GL10)) a1 a2 a3

glMaterialfv_impl :: GL10 -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glMaterialfv_impl this face pname params = javaAbstractMethod "glMaterialfv"


glMatrixMode :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glMatrixMode object_ a1 = jmethod object_ "glMatrixMode" (\() -> (glMatrixMode_impl (javaCast object_ :: GL10))) () a1

glMatrixMode_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glMatrixMode_super object_ a1 = (glMatrixMode_impl (javaCast object_ :: GL10)) a1

glMatrixMode_impl :: GL10 -> Int -> IO (())
glMatrixMode_impl this mode = javaAbstractMethod "glMatrixMode"


glMultMatrixf :: (JavaObjectClass this_) => this_ -> JavaArray (Float) -> Int -> IO (())
glMultMatrixf object_ a1 a2 = jmethod object_ "glMultMatrixf" (\() -> (glMultMatrixf_impl (javaCast object_ :: GL10))) () a1 a2

glMultMatrixf_super :: (JavaObjectClass this_) => this_ -> JavaArray (Float) -> Int -> IO (())
glMultMatrixf_super object_ a1 a2 = (glMultMatrixf_impl (javaCast object_ :: GL10)) a1 a2

glMultMatrixf_impl :: GL10 -> JavaArray (Float) -> Int -> IO (())
glMultMatrixf_impl this m offset = javaAbstractMethod "glMultMatrixf"


-- Java overload of glMultMatrixf with a different parameter count: give it a different name
glMultMatrixf :: (JavaObjectClass this_) => this_ -> FloatBuffer.FloatBuffer -> IO (())
glMultMatrixf object_ a1 = jmethod object_ "glMultMatrixf" (\() -> (glMultMatrixf_impl (javaCast object_ :: GL10))) () a1

glMultMatrixf_super :: (JavaObjectClass this_) => this_ -> FloatBuffer.FloatBuffer -> IO (())
glMultMatrixf_super object_ a1 = (glMultMatrixf_impl (javaCast object_ :: GL10)) a1

glMultMatrixf_impl :: GL10 -> FloatBuffer.FloatBuffer -> IO (())
glMultMatrixf_impl this m = javaAbstractMethod "glMultMatrixf"


glMultiTexCoord4f :: (JavaObjectClass this_) => this_ -> Int -> Float -> Float -> Float -> Float -> IO (())
glMultiTexCoord4f object_ a1 a2 a3 a4 a5 = jmethod object_ "glMultiTexCoord4f" (\() -> (glMultiTexCoord4f_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4 a5

glMultiTexCoord4f_super :: (JavaObjectClass this_) => this_ -> Int -> Float -> Float -> Float -> Float -> IO (())
glMultiTexCoord4f_super object_ a1 a2 a3 a4 a5 = (glMultiTexCoord4f_impl (javaCast object_ :: GL10)) a1 a2 a3 a4 a5

glMultiTexCoord4f_impl :: GL10 -> Int -> Float -> Float -> Float -> Float -> IO (())
glMultiTexCoord4f_impl this target s t r q = javaAbstractMethod "glMultiTexCoord4f"


glNormal3f :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glNormal3f object_ a1 a2 a3 = jmethod object_ "glNormal3f" (\() -> (glNormal3f_impl (javaCast object_ :: GL10))) () a1 a2 a3

glNormal3f_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glNormal3f_super object_ a1 a2 a3 = (glNormal3f_impl (javaCast object_ :: GL10)) a1 a2 a3

glNormal3f_impl :: GL10 -> Float -> Float -> Float -> IO (())
glNormal3f_impl this nx ny nz = javaAbstractMethod "glNormal3f"


glNormalPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Buffer.Buffer -> IO (())
glNormalPointer object_ a1 a2 a3 = jmethod object_ "glNormalPointer" (\() -> (glNormalPointer_impl (javaCast object_ :: GL10))) () a1 a2 a3

glNormalPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Buffer.Buffer -> IO (())
glNormalPointer_super object_ a1 a2 a3 = (glNormalPointer_impl (javaCast object_ :: GL10)) a1 a2 a3

glNormalPointer_impl :: GL10 -> Int -> Int -> Buffer.Buffer -> IO (())
glNormalPointer_impl this type_ stride pointer = javaAbstractMethod "glNormalPointer"


glOrthof :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glOrthof object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "glOrthof" (\() -> (glOrthof_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4 a5 a6

glOrthof_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glOrthof_super object_ a1 a2 a3 a4 a5 a6 = (glOrthof_impl (javaCast object_ :: GL10)) a1 a2 a3 a4 a5 a6

glOrthof_impl :: GL10 -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glOrthof_impl this left right bottom top zNear zFar = javaAbstractMethod "glOrthof"


glPixelStorei :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glPixelStorei object_ a1 a2 = jmethod object_ "glPixelStorei" (\() -> (glPixelStorei_impl (javaCast object_ :: GL10))) () a1 a2

glPixelStorei_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glPixelStorei_super object_ a1 a2 = (glPixelStorei_impl (javaCast object_ :: GL10)) a1 a2

glPixelStorei_impl :: GL10 -> Int -> Int -> IO (())
glPixelStorei_impl this pname param = javaAbstractMethod "glPixelStorei"


glPointSize :: (JavaObjectClass this_) => this_ -> Float -> IO (())
glPointSize object_ a1 = jmethod object_ "glPointSize" (\() -> (glPointSize_impl (javaCast object_ :: GL10))) () a1

glPointSize_super :: (JavaObjectClass this_) => this_ -> Float -> IO (())
glPointSize_super object_ a1 = (glPointSize_impl (javaCast object_ :: GL10)) a1

glPointSize_impl :: GL10 -> Float -> IO (())
glPointSize_impl this size = javaAbstractMethod "glPointSize"


glPolygonOffset :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
glPolygonOffset object_ a1 a2 = jmethod object_ "glPolygonOffset" (\() -> (glPolygonOffset_impl (javaCast object_ :: GL10))) () a1 a2

glPolygonOffset_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
glPolygonOffset_super object_ a1 a2 = (glPolygonOffset_impl (javaCast object_ :: GL10)) a1 a2

glPolygonOffset_impl :: GL10 -> Float -> Float -> IO (())
glPolygonOffset_impl this factor units = javaAbstractMethod "glPolygonOffset"


glPopMatrix :: (JavaObjectClass this_) => this_ -> IO (())
glPopMatrix object_ = jmethod object_ "glPopMatrix" (\() -> (glPopMatrix_impl (javaCast object_ :: GL10))) ()

glPopMatrix_super :: (JavaObjectClass this_) => this_ -> IO (())
glPopMatrix_super object_ = (glPopMatrix_impl (javaCast object_ :: GL10))

glPopMatrix_impl :: GL10 -> IO (())
glPopMatrix_impl this = javaAbstractMethod "glPopMatrix"


glPushMatrix :: (JavaObjectClass this_) => this_ -> IO (())
glPushMatrix object_ = jmethod object_ "glPushMatrix" (\() -> (glPushMatrix_impl (javaCast object_ :: GL10))) ()

glPushMatrix_super :: (JavaObjectClass this_) => this_ -> IO (())
glPushMatrix_super object_ = (glPushMatrix_impl (javaCast object_ :: GL10))

glPushMatrix_impl :: GL10 -> IO (())
glPushMatrix_impl this = javaAbstractMethod "glPushMatrix"


glReadPixels :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glReadPixels object_ a1 a2 a3 a4 a5 a6 a7 = jmethod object_ "glReadPixels" (\() -> (glReadPixels_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4 a5 a6 a7

glReadPixels_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glReadPixels_super object_ a1 a2 a3 a4 a5 a6 a7 = (glReadPixels_impl (javaCast object_ :: GL10)) a1 a2 a3 a4 a5 a6 a7

glReadPixels_impl :: GL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glReadPixels_impl this x y width height format type_ pixels = javaAbstractMethod "glReadPixels"


glRotatef :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (())
glRotatef object_ a1 a2 a3 a4 = jmethod object_ "glRotatef" (\() -> (glRotatef_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4

glRotatef_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (())
glRotatef_super object_ a1 a2 a3 a4 = (glRotatef_impl (javaCast object_ :: GL10)) a1 a2 a3 a4

glRotatef_impl :: GL10 -> Float -> Float -> Float -> Float -> IO (())
glRotatef_impl this angle x y z = javaAbstractMethod "glRotatef"


glRotatex :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glRotatex object_ a1 a2 a3 a4 = jmethod object_ "glRotatex" (\() -> (glRotatex_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4

glRotatex_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glRotatex_super object_ a1 a2 a3 a4 = (glRotatex_impl (javaCast object_ :: GL10)) a1 a2 a3 a4

glRotatex_impl :: GL10 -> Int -> Int -> Int -> Int -> IO (())
glRotatex_impl this angle x y z = javaAbstractMethod "glRotatex"


glSampleCoverage :: (JavaObjectClass this_) => this_ -> Float -> Bool -> IO (())
glSampleCoverage object_ a1 a2 = jmethod object_ "glSampleCoverage" (\() -> (glSampleCoverage_impl (javaCast object_ :: GL10))) () a1 a2

glSampleCoverage_super :: (JavaObjectClass this_) => this_ -> Float -> Bool -> IO (())
glSampleCoverage_super object_ a1 a2 = (glSampleCoverage_impl (javaCast object_ :: GL10)) a1 a2

glSampleCoverage_impl :: GL10 -> Float -> Bool -> IO (())
glSampleCoverage_impl this value invert = javaAbstractMethod "glSampleCoverage"


glScalef :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glScalef object_ a1 a2 a3 = jmethod object_ "glScalef" (\() -> (glScalef_impl (javaCast object_ :: GL10))) () a1 a2 a3

glScalef_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glScalef_super object_ a1 a2 a3 = (glScalef_impl (javaCast object_ :: GL10)) a1 a2 a3

glScalef_impl :: GL10 -> Float -> Float -> Float -> IO (())
glScalef_impl this x y z = javaAbstractMethod "glScalef"


glScalex :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glScalex object_ a1 a2 a3 = jmethod object_ "glScalex" (\() -> (glScalex_impl (javaCast object_ :: GL10))) () a1 a2 a3

glScalex_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glScalex_super object_ a1 a2 a3 = (glScalex_impl (javaCast object_ :: GL10)) a1 a2 a3

glScalex_impl :: GL10 -> Int -> Int -> Int -> IO (())
glScalex_impl this x y z = javaAbstractMethod "glScalex"


glScissor :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glScissor object_ a1 a2 a3 a4 = jmethod object_ "glScissor" (\() -> (glScissor_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4

glScissor_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glScissor_super object_ a1 a2 a3 a4 = (glScissor_impl (javaCast object_ :: GL10)) a1 a2 a3 a4

glScissor_impl :: GL10 -> Int -> Int -> Int -> Int -> IO (())
glScissor_impl this x y width height = javaAbstractMethod "glScissor"


glShadeModel :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glShadeModel object_ a1 = jmethod object_ "glShadeModel" (\() -> (glShadeModel_impl (javaCast object_ :: GL10))) () a1

glShadeModel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glShadeModel_super object_ a1 = (glShadeModel_impl (javaCast object_ :: GL10)) a1

glShadeModel_impl :: GL10 -> Int -> IO (())
glShadeModel_impl this mode = javaAbstractMethod "glShadeModel"


glStencilFunc :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glStencilFunc object_ a1 a2 a3 = jmethod object_ "glStencilFunc" (\() -> (glStencilFunc_impl (javaCast object_ :: GL10))) () a1 a2 a3

glStencilFunc_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glStencilFunc_super object_ a1 a2 a3 = (glStencilFunc_impl (javaCast object_ :: GL10)) a1 a2 a3

glStencilFunc_impl :: GL10 -> Int -> Int -> Int -> IO (())
glStencilFunc_impl this func ref mask = javaAbstractMethod "glStencilFunc"


glStencilMask :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glStencilMask object_ a1 = jmethod object_ "glStencilMask" (\() -> (glStencilMask_impl (javaCast object_ :: GL10))) () a1

glStencilMask_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glStencilMask_super object_ a1 = (glStencilMask_impl (javaCast object_ :: GL10)) a1

glStencilMask_impl :: GL10 -> Int -> IO (())
glStencilMask_impl this mask = javaAbstractMethod "glStencilMask"


glStencilOp :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glStencilOp object_ a1 a2 a3 = jmethod object_ "glStencilOp" (\() -> (glStencilOp_impl (javaCast object_ :: GL10))) () a1 a2 a3

glStencilOp_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glStencilOp_super object_ a1 a2 a3 = (glStencilOp_impl (javaCast object_ :: GL10)) a1 a2 a3

glStencilOp_impl :: GL10 -> Int -> Int -> Int -> IO (())
glStencilOp_impl this fail zfail zpass = javaAbstractMethod "glStencilOp"


glTexCoordPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexCoordPointer object_ a1 a2 a3 a4 = jmethod object_ "glTexCoordPointer" (\() -> (glTexCoordPointer_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4

glTexCoordPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexCoordPointer_super object_ a1 a2 a3 a4 = (glTexCoordPointer_impl (javaCast object_ :: GL10)) a1 a2 a3 a4

glTexCoordPointer_impl :: GL10 -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexCoordPointer_impl this size type_ stride pointer = javaAbstractMethod "glTexCoordPointer"


glTexEnvf :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glTexEnvf object_ a1 a2 a3 = jmethod object_ "glTexEnvf" (\() -> (glTexEnvf_impl (javaCast object_ :: GL10))) () a1 a2 a3

glTexEnvf_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glTexEnvf_super object_ a1 a2 a3 = (glTexEnvf_impl (javaCast object_ :: GL10)) a1 a2 a3

glTexEnvf_impl :: GL10 -> Int -> Int -> Float -> IO (())
glTexEnvf_impl this target pname param = javaAbstractMethod "glTexEnvf"


glTexEnvfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glTexEnvfv object_ a1 a2 a3 a4 = jmethod object_ "glTexEnvfv" (\() -> (glTexEnvfv_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4

glTexEnvfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glTexEnvfv_super object_ a1 a2 a3 a4 = (glTexEnvfv_impl (javaCast object_ :: GL10)) a1 a2 a3 a4

glTexEnvfv_impl :: GL10 -> Int -> Int -> JavaArray (Float) -> Int -> IO (())
glTexEnvfv_impl this target pname params offset = javaAbstractMethod "glTexEnvfv"


-- Java overload of glTexEnvfv with a different parameter count: give it a different name
glTexEnvfv :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glTexEnvfv object_ a1 a2 a3 = jmethod object_ "glTexEnvfv" (\() -> (glTexEnvfv_impl (javaCast object_ :: GL10))) () a1 a2 a3

glTexEnvfv_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glTexEnvfv_super object_ a1 a2 a3 = (glTexEnvfv_impl (javaCast object_ :: GL10)) a1 a2 a3

glTexEnvfv_impl :: GL10 -> Int -> Int -> FloatBuffer.FloatBuffer -> IO (())
glTexEnvfv_impl this target pname params = javaAbstractMethod "glTexEnvfv"


glTexImage2D :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexImage2D object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = jmethod object_ "glTexImage2D" (\() -> (glTexImage2D_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4 a5 a6 a7 a8 a9

glTexImage2D_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexImage2D_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = (glTexImage2D_impl (javaCast object_ :: GL10)) a1 a2 a3 a4 a5 a6 a7 a8 a9

glTexImage2D_impl :: GL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexImage2D_impl this target level internalformat width height border format type_ pixels = javaAbstractMethod "glTexImage2D"


glTexParameterf :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glTexParameterf object_ a1 a2 a3 = jmethod object_ "glTexParameterf" (\() -> (glTexParameterf_impl (javaCast object_ :: GL10))) () a1 a2 a3

glTexParameterf_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
glTexParameterf_super object_ a1 a2 a3 = (glTexParameterf_impl (javaCast object_ :: GL10)) a1 a2 a3

glTexParameterf_impl :: GL10 -> Int -> Int -> Float -> IO (())
glTexParameterf_impl this target pname param = javaAbstractMethod "glTexParameterf"


glTexParameteri :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glTexParameteri object_ a1 a2 a3 = jmethod object_ "glTexParameteri" (\() -> (glTexParameteri_impl (javaCast object_ :: GL10))) () a1 a2 a3

glTexParameteri_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
glTexParameteri_super object_ a1 a2 a3 = (glTexParameteri_impl (javaCast object_ :: GL10)) a1 a2 a3

glTexParameteri_impl :: GL10 -> Int -> Int -> Int -> IO (())
glTexParameteri_impl this target pname param = javaAbstractMethod "glTexParameteri"


glTexSubImage2D :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexSubImage2D object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = jmethod object_ "glTexSubImage2D" (\() -> (glTexSubImage2D_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4 a5 a6 a7 a8 a9

glTexSubImage2D_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexSubImage2D_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = (glTexSubImage2D_impl (javaCast object_ :: GL10)) a1 a2 a3 a4 a5 a6 a7 a8 a9

glTexSubImage2D_impl :: GL10 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glTexSubImage2D_impl this target level xoffset yoffset width height format type_ pixels = javaAbstractMethod "glTexSubImage2D"


glTranslatef :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glTranslatef object_ a1 a2 a3 = jmethod object_ "glTranslatef" (\() -> (glTranslatef_impl (javaCast object_ :: GL10))) () a1 a2 a3

glTranslatef_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glTranslatef_super object_ a1 a2 a3 = (glTranslatef_impl (javaCast object_ :: GL10)) a1 a2 a3

glTranslatef_impl :: GL10 -> Float -> Float -> Float -> IO (())
glTranslatef_impl this x y z = javaAbstractMethod "glTranslatef"


glVertexPointer :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glVertexPointer object_ a1 a2 a3 a4 = jmethod object_ "glVertexPointer" (\() -> (glVertexPointer_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4

glVertexPointer_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glVertexPointer_super object_ a1 a2 a3 a4 = (glVertexPointer_impl (javaCast object_ :: GL10)) a1 a2 a3 a4

glVertexPointer_impl :: GL10 -> Int -> Int -> Int -> Buffer.Buffer -> IO (())
glVertexPointer_impl this size type_ stride pointer = javaAbstractMethod "glVertexPointer"


glViewport :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glViewport object_ a1 a2 a3 a4 = jmethod object_ "glViewport" (\() -> (glViewport_impl (javaCast object_ :: GL10))) () a1 a2 a3 a4

glViewport_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
glViewport_super object_ a1 a2 a3 a4 = (glViewport_impl (javaCast object_ :: GL10)) a1 a2 a3 a4

glViewport_impl :: GL10 -> Int -> Int -> Int -> Int -> IO (())
glViewport_impl this x y width height = javaAbstractMethod "glViewport"


glBegin :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glBegin object_ a1 = jmethod object_ "glBegin" (\() -> (glBegin_impl (javaCast object_ :: GL10))) () a1

glBegin_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
glBegin_super object_ a1 = (glBegin_impl (javaCast object_ :: GL10)) a1

glBegin_impl :: GL10 -> Int -> IO (())
glBegin_impl this i = javaAbstractMethod "glBegin"


glEnd :: (JavaObjectClass this_) => this_ -> IO (())
glEnd object_ = jmethod object_ "glEnd" (\() -> (glEnd_impl (javaCast object_ :: GL10))) ()

glEnd_super :: (JavaObjectClass this_) => this_ -> IO (())
glEnd_super object_ = (glEnd_impl (javaCast object_ :: GL10))

glEnd_impl :: GL10 -> IO (())
glEnd_impl this = javaAbstractMethod "glEnd"


glVertex3f :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glVertex3f object_ a1 a2 a3 = jmethod object_ "glVertex3f" (\() -> (glVertex3f_impl (javaCast object_ :: GL10))) () a1 a2 a3

glVertex3f_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (())
glVertex3f_super object_ a1 a2 a3 = (glVertex3f_impl (javaCast object_ :: GL10)) a1 a2 a3

glVertex3f_impl :: GL10 -> Float -> Float -> Float -> IO (())
glVertex3f_impl this f f2 f3 = javaAbstractMethod "glVertex3f"


glPolygonMode :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glPolygonMode object_ a1 a2 = jmethod object_ "glPolygonMode" (\() -> (glPolygonMode_impl (javaCast object_ :: GL10))) () a1 a2

glPolygonMode_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
glPolygonMode_super object_ a1 a2 = (glPolygonMode_impl (javaCast object_ :: GL10)) a1 a2

glPolygonMode_impl :: GL10 -> Int -> Int -> IO (())
glPolygonMode_impl this i i1 = javaAbstractMethod "glPolygonMode"


