{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.media.image
module ImageProcessedVisitor (module ImageProcessedVisitor, module ImageProcessorInputCompositeInterface) where

import ImageProcessorInputCompositeInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, visit, visit_super, visit_impl, toString)
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
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified IOException -- java.io.IOException
import qualified ImageProcessorInputCompositeInterface

-- Java interface: the classes that implement it have these functions
data ImageProcessedVisitor = ImageProcessedVisitor
    { header_ :: JavaHeader
    }

instance JavaNull ImageProcessedVisitor where
    javaNull = javaNullRecord "ImageProcessedVisitor"

instance JavaEquals ImageProcessedVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageProcessedVisitor where
    (==) = jrecordEquals

instance JavaObjectClass ImageProcessedVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ImageProcessedVisitor
fromHeader_ header = ImageProcessedVisitor header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ImageProcessedVisitor header)
    ImageProcessorInputCompositeInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws IOException
visit :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> String -> Int -> IO (())
visit object_ a1 a2 a3 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: ImageProcessedVisitor))) () a1 a2 a3

visit_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> String -> Int -> IO (())
visit_super object_ a1 a2 a3 = (visit_impl (javaCast object_ :: ImageProcessedVisitor)) a1 a2 a3

visit_impl :: ImageProcessedVisitor -> BufferedImage.BufferedImage -> String -> Int -> IO (())
visit_impl this generatedBufferedImage nameEnding index = javaAbstractMethod "visit"


