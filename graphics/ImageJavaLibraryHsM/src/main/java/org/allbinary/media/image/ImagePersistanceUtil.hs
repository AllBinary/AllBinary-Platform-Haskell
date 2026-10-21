{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
-- Generated Code Do Not Modify
-- package org.allbinary.media.image
module ImagePersistanceUtil where

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
import qualified File -- java.io.File
import qualified IOException -- java.io.IOException
import qualified Iterator -- java.util.Iterator
import qualified IIOImage -- javax.imageio.IIOImage
import qualified ImageIO -- javax.imageio.ImageIO
import qualified ImageWriteParam -- javax.imageio.ImageWriteParam
import qualified ImageWriter -- javax.imageio.ImageWriter
import qualified ImageOutputStream -- javax.imageio.stream.ImageOutputStream
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbFileOutputStream -- org.allbinary.logic.io.AbFileOutputStream
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified PNGImageWriter -- org.apache.batik.ext.awt.image.codec.png.PNGImageWriter

data ImagePersistanceUtil = ImagePersistanceUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull ImagePersistanceUtil where
    javaNull = javaNullRecord "ImagePersistanceUtil"

instance JavaEquals ImagePersistanceUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImagePersistanceUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImagePersistanceUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImagePersistanceUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = ImagePersistanceUtil header_ logUtil commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "saveWithBatik" (\() -> saveWithBatik_impl this)
    jregisterMethod header_ "saveWithImageIO_overload1" (\() -> saveWithImageIO_overload1_impl this)
    jregisterMethod header_ "saveWithImageIO_overload2" (\() -> saveWithImageIO_overload2_impl this)
    pure this

initFields_ :: ImagePersistanceUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO ImagePersistanceUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImagePersistanceUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ImagePersistanceUtil)
getInstance = do
        pure (ImagePersistanceUtil.instance_)


-- throws Exception
saveWithBatik :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> BufferedImage.BufferedImage -> IO (())
saveWithBatik object_ a1 a2 = jmethod object_ "saveWithBatik" (\() -> (saveWithBatik_impl (javaCast object_ :: ImagePersistanceUtil))) () a1 a2

saveWithBatik_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> BufferedImage.BufferedImage -> IO (())
saveWithBatik_super object_ a1 a2 = (saveWithBatik_impl (javaCast object_ :: ImagePersistanceUtil)) a1 a2

saveWithBatik_impl :: ImagePersistanceUtil -> AbFile.AbFile -> BufferedImage.BufferedImage -> IO (())
saveWithBatik_impl this file bufferedImage = do
        batikPNGImageWriter <- (PNGImageWriter.new_)
        fileOutputStream <- (AbFileOutputStream.createFromAbFile file)
        flip finally (do
            Control.Monad.void (AbFileOutputStream.flush fileOutputStream)
            Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) fileOutputStream)
            ) $ do
            Control.Monad.void (PNGImageWriter.writeImage batikPNGImageWriter bufferedImage fileOutputStream)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Wrote Image: " ++ javaToString (jio (AbFile.getAbsolutePath file))) this (jget ((jget (this).commonStrings)).sAVE))
        pure ()


-- Java overloads of saveWithImageIO: calls the overload for the types of the arguments
saveWithImageIO :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> BufferedImage.BufferedImage -> IO (())
saveWithImageIO this a1 a2
    | jisInstanceOf a1 (javaNull :: String) = saveWithImageIO_overload1 this (javaCast a1 :: String) a2
    | jisInstanceOf a1 (javaNull :: File.File) = saveWithImageIO_overload2 this (javaCast a1 :: File.File) a2
    | otherwise = saveWithImageIO_overload2 this (javaCast a1 :: File.File) a2

saveWithImageIO_overload1 :: (JavaObjectClass this_) => this_ -> String -> BufferedImage.BufferedImage -> IO (())
saveWithImageIO_overload1 object_ a1 a2 = jmethod object_ "saveWithImageIO_overload1" (\() -> (saveWithImageIO_overload1_impl (javaCast object_ :: ImagePersistanceUtil))) () a1 a2

saveWithImageIO_overload1_super :: (JavaObjectClass this_) => this_ -> String -> BufferedImage.BufferedImage -> IO (())
saveWithImageIO_overload1_super object_ a1 a2 = (saveWithImageIO_overload1_impl (javaCast object_ :: ImagePersistanceUtil)) a1 a2

saveWithImageIO_overload1_impl :: ImagePersistanceUtil -> String -> BufferedImage.BufferedImage -> IO (())
saveWithImageIO_overload1_impl this filePath bufferedImage = do
        Control.Monad.void (ImagePersistanceUtil.saveWithImageIO this (jio (File.new_1 filePath)) bufferedImage)
        pure ()


saveWithImageIO_overload2 :: (JavaObjectClass this_) => this_ -> File.File -> BufferedImage.BufferedImage -> IO (())
saveWithImageIO_overload2 object_ a1 a2 = jmethod object_ "saveWithImageIO_overload2" (\() -> (saveWithImageIO_overload2_impl (javaCast object_ :: ImagePersistanceUtil))) () a1 a2

saveWithImageIO_overload2_super :: (JavaObjectClass this_) => this_ -> File.File -> BufferedImage.BufferedImage -> IO (())
saveWithImageIO_overload2_super object_ a1 a2 = (saveWithImageIO_overload2_impl (javaCast object_ :: ImagePersistanceUtil)) a1 a2

saveWithImageIO_overload2_impl :: ImagePersistanceUtil -> File.File -> BufferedImage.BufferedImage -> IO (())
saveWithImageIO_overload2_impl this file bufferedImage = do
    javaCatchReturn $ do
        writer <- newIORef (javaNull)
        ios <- newIORef (javaNull)
        flip finally (do
            handle (\(e2 :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).sAVE) e2)
                ) $ do
                when ((jget ios) /= javaNull) $ do
                    Control.Monad.void (ImageOutputStream.flush ((jget ios)))
                    handle (\(e :: JavaException) -> do
                        Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget this.commonStrings)).eXCEPTION) (jget ios) (jget ((jget this.commonStrings)).cLOSE) e)
                        ) $ do
                        when ((jget ios) /= javaNull) $ do
                            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (ImageOutputStream.toString ((jget ios)))) (jget ios) (jget ((jget (this).commonStrings)).cLOSE))
                            Control.Monad.void (ImageOutputStream.close ((jget ios)))
                when ((jget writer) /= javaNull) $ do
                    Control.Monad.void (ImageWriter.dispose ((jget writer)))
            ) $ handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).sAVE) e)
            ) $ do
            iter <- (ImageIO.getImageWritersByFormatName "jpeg")
            when (Prelude.not (jio (Iterator.hasNext iter))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Unable to save image to jpeg file type." this (jget ((jget (this).commonStrings)).sAVE))
                javaReturn (())
            jset writer ((javaCast (jio (Iterator.next iter)) :: ImageWriter.ImageWriter))
            assignedValue <- (ImageIO.createImageOutputStream file)
            jset ios (assignedValue)
            Control.Monad.void (ImageWriter.setOutput ((jget writer)) (jget ios))
            iwp <- (ImageWriter.getDefaultWriteParam ((jget writer)))
            Control.Monad.void (ImageWriteParam.setCompressionMode iwp (ImageWriteParam.mODE_EXPLICIT))
            Control.Monad.void (ImageWriteParam.setCompressionQuality iwp (0.95))
            Control.Monad.void (ImageWriter.write ((jget writer)) javaNull (jio (IIOImage.new_3 bufferedImage javaNull javaNull)) iwp)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Wrote Image: " ++ javaToString (jio (File.getAbsolutePath file))) this (jget ((jget (this).commonStrings)).sAVE))
    pure ()


