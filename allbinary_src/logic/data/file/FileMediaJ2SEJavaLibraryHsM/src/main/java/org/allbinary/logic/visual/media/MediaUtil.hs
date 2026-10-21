{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.logic.visual.media
module MediaUtil where

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
import qualified ImageIOUtil -- same package or java.lang
import qualified MediaData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified BasicArrayList -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified RenderedImage -- java.awt.image.RenderedImage
import qualified HashMap -- java.util.HashMap
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LogConfigTypeFactory -- org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
import qualified LogConfigTypes -- org.allbinary.logic.communication.log.config.type.LogConfigTypes
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified ImageUtil -- org.allbinary.media.image.ImageUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels

data MediaUtil = MediaUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull MediaUtil where
    javaNull = javaNullRecord "MediaUtil"

instance JavaEquals MediaUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MediaUtil where
    (==) = jrecordEquals

instance JavaObjectClass MediaUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MediaUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = MediaUtil header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "saveImageFile" (\() -> saveImageFile_impl this)
    pure this

initFields_ :: MediaUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (MediaUtil)
getInstance = do
        pure (MediaUtil.instance_)

new_ :: IO MediaUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MediaUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
saveImageFile :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> String -> String -> MediaData.MediaData -> Int -> Int -> IO (())
saveImageFile object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "saveImageFile" (\() -> (saveImageFile_impl (javaCast object_ :: MediaUtil))) () a1 a2 a3 a4 a5 a6

saveImageFile_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> String -> String -> MediaData.MediaData -> Int -> Int -> IO (())
saveImageFile_super object_ a1 a2 a3 a4 a5 a6 = (saveImageFile_impl (javaCast object_ :: MediaUtil)) a1 a2 a3 a4 a5 a6

saveImageFile_impl :: MediaUtil -> AbFile.AbFile -> String -> String -> MediaData.MediaData -> Int -> Int -> IO (())
saveImageFile_impl this originalImageFile newImageFileName category mediaData newWidth newHeight = do
        when ((originalImageFile == javaNull) || (Prelude.not (jio (AbFile.isFile originalImageFile)))) $ do
            javaThrow ((JavaException "Exception" "Original Image File Does Not Exist."))
        bufferedImage <- (ImageIOUtil.read originalImageFile)
        when (bufferedImage == javaNull) $ do
            javaThrow ((JavaException "Exception" "Unable to find ImageReader for this file."))
        when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).vIEW))) $ do
            hashMap <- (MediaUtil.getImageBufferPropertyHashMap this bufferedImage)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Image Properties: " ++ (jio (HashMap.toString hashMap))) this "saveImageFile()")
        imageFile <- (AbFile.createAbFile (category ++ newImageFileName))
        Control.Monad.void (AbFile.createNewFile imageFile)
        imageUtil <- (ImageUtil.getInstance)
        newBufferedImage <- (ImageUtil.createBufferedImageForSave imageUtil bufferedImage newWidth newHeight)
        isWritten <- (ImageIOUtil.write (javaCast newBufferedImage :: RenderedImage.RenderedImage) (jio (MediaData.getName mediaData)) imageFile)
        when (Prelude.not isWritten) $ do
            javaThrow ((JavaException "Exception" "Unable to write."))
        when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).vIEW))) $ do
            commonLabels <- (CommonLabels.getInstance)
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Get Path: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath originalImageFile)))
            Control.Monad.void (StringMaker.append stringBuffer "\nNewImageFileName: ")
            Control.Monad.void (StringMaker.append stringBuffer newImageFileName)
            Control.Monad.void (StringMaker.append stringBuffer "\nCategory: ")
            Control.Monad.void (StringMaker.append stringBuffer category)
            Control.Monad.void (StringMaker.append stringBuffer "\nSave File Type: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (MediaData.getName mediaData)))
            Control.Monad.void (StringMaker.append ((jio (StringMaker.append stringBuffer "\nNew"))) (jget (commonLabels).wIDTH_LABEL))
            Control.Monad.void (StringMaker.appendint stringBuffer newWidth)
            Control.Monad.void (StringMaker.append ((jio (StringMaker.append stringBuffer "\nNew"))) (jget (commonLabels).hEIGHT_LABEL))
            Control.Monad.void (StringMaker.appendint stringBuffer newHeight)
            Control.Monad.void (StringMaker.append stringBuffer "\nFile Length: ")
            Control.Monad.void (StringMaker.appendlong stringBuffer (Prelude.fromIntegral (jio (AbFile.length originalImageFile))))
            Control.Monad.void (StringMaker.append stringBuffer "\nNew File Length: ")
            Control.Monad.void (StringMaker.appendlong stringBuffer (Prelude.fromIntegral (jio (AbFile.length imageFile))))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "saveImageFile()")
        pure ()


getImageBufferPropertyHashMap :: BufferedImage.BufferedImage -> IO (HashMap.HashMap)
getImageBufferPropertyHashMap bufferedImage = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        propertyStringArray <- (BufferedImage.getPropertyNames bufferedImage)
        when (propertyStringArray /= javaNull) $ do
            forM_ [0 .. (jlength propertyStringArray) - 1] $ \index -> javaIteration (pure ()) $ do
                propertyObject <- (BufferedImage.getProperty bufferedImage (jindex propertyStringArray (index)))
                Control.Monad.void (HashMap.put hashMap (jindex propertyStringArray (index)) (jio (Any.toString propertyObject)))
        pure (hashMap)


