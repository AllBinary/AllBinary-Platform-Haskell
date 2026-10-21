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
-- package org.allbinary.image
module ImageCacheBase where

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
import qualified ImageFactory -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified InputStream -- java.io.InputStream
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data ImageCacheBase = ImageCacheBase
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , imageFactory :: IORef (ImageFactory.ImageFactory)
    , hashtable :: IORef (ABHashtable.ABHashtable)
    , sIZE :: IORef (Int)
    , widths :: IORef (JavaArray (Int))
    , heights :: IORef (JavaArray (Int))
    , listOfList :: IORef (JavaArray (BasicArrayList.BasicArrayList))
    , availableListOfList :: IORef (JavaArray (BasicArrayList.BasicArrayList))
    , volume :: IORef (Int)
    , nextIndex :: IORef (Int)
    }

instance JavaNull ImageCacheBase where
    javaNull = javaNullRecord "ImageCacheBase"

instance JavaEquals ImageCacheBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageCacheBase where
    (==) = jrecordEquals

instance JavaObjectClass ImageCacheBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageCacheBase
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    imageFactory <- newIORef javaNull
    hashtable <- newIORef javaNull
    sIZE <- newIORef 0
    widths <- newIORef javaNull
    heights <- newIORef javaNull
    listOfList <- newIORef javaNull
    availableListOfList <- newIORef javaNull
    volume <- newIORef 0
    nextIndex <- newIORef 0
    let this = ImageCacheBase header_ logUtil imageFactory hashtable sIZE widths heights listOfList availableListOfList volume nextIndex
    jregisterLevel header_ this
    jregisterMethod header_ "getImage" (\() -> getImage_impl this)
    jregisterMethod header_ "releaseAll" (\() -> releaseAll_impl this)
    jregisterMethod header_ "getIndexWH" (\() -> getIndexWH_impl this)
    jregisterMethod header_ "getFromAvailable" (\() -> getFromAvailable_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getWithKey" (\() -> getWithKey_impl this)
    jregisterMethod header_ "createImage" (\() -> createImage_impl this)
    jregisterMethod header_ "createImageFromInputStream" (\() -> createImageFromInputStream_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getHashtableP" (\() -> getHashtableP_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "initProgress" (\() -> initProgress_impl this)
    pure this

initFields_ :: ImageCacheBase -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.imageFactory =<< (ImageFactory.getInstance)
    jset this.hashtable =<< (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
    jset this.sIZE (128)
    jset this.widths ((jnewArray ((jget (this).sIZE)) 0))
    jset this.heights ((jnewArray ((jget (this).sIZE)) 0))
    jset this.listOfList ((jnewArray ((jget (this).sIZE)) javaNull))
    jset this.availableListOfList ((jnewArray ((jget (this).sIZE)) javaNull))
    jset this.volume (0)
    jset this.nextIndex (0)
    pure ()

new_ :: IO ImageCacheBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageCacheBase -> IO ()
init_ this = do
        initFields_ this
        forM_ [((jlength (jget (this).listOfList)) - 1), ((jlength (jget (this).listOfList)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jsetIndex ((jget (this).listOfList)) (index) (assignedValue)
        forM_ [((jlength (jget (this).availableListOfList)) - 1), ((jlength (jget (this).availableListOfList)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jsetIndex ((jget (this).availableListOfList)) (index) (assignedValue)
        pure ()


getImage :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Image.Image)
getImage object_ a1 = jmethod object_ "getImage" (\() -> (getImage_impl (javaCast object_ :: ImageCacheBase))) () (jtoObject a1)

getImage_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Image.Image)
getImage_super object_ a1 = (getImage_impl (javaCast object_ :: ImageCacheBase)) (jtoObject a1)

getImage_impl :: ImageCacheBase -> JavaObject -> IO (Image.Image)
getImage_impl this resourceIdObject_ = do
    let resourceId = jtoObject resourceIdObject_
    javaCatchReturn $ do
        imageCanBeNull <- (ABHashtable.get ((jget (this).hashtable)) resourceId)
        when (imageCanBeNull == javaNull) $ do
            javaReturn (NullImage.nULL_IMAGE)
        pure ((javaCast imageCanBeNull :: Image.Image))


releaseAll :: (JavaObjectClass this_) => this_ -> IO (())
releaseAll object_ = jmethod object_ "releaseAll" (\() -> (releaseAll_impl (javaCast object_ :: ImageCacheBase))) ()

releaseAll_super :: (JavaObjectClass this_) => this_ -> IO (())
releaseAll_super object_ = (releaseAll_impl (javaCast object_ :: ImageCacheBase))

releaseAll_impl :: ImageCacheBase -> IO (())
releaseAll_impl this = do
        forM_ [((jlength (jget (this).listOfList)) - 1), ((jlength (jget (this).listOfList)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (clear ((jindex ((jget (this).availableListOfList)) (index))))
            Control.Monad.void (addAllList ((jindex ((jget (this).availableListOfList)) (index))) (jindex ((jget (this).listOfList)) (index)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "ImageCache: "))) (jio (ImageCacheBase.toString this))))))) this "releaseAll")
        pure ()


getIndexWH :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
getIndexWH object_ a1 a2 = jmethod object_ "getIndexWH" (\() -> (getIndexWH_impl (javaCast object_ :: ImageCacheBase))) () a1 a2

getIndexWH_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
getIndexWH_super object_ a1 a2 = (getIndexWH_impl (javaCast object_ :: ImageCacheBase)) a1 a2

getIndexWH_impl :: ImageCacheBase -> Int -> Int -> IO (Int)
getIndexWH_impl this width height = do
    javaCatchReturn $ do
        foundIndex <- newIORef ((Prelude.negate 1))
        let size = (jlength (jget (this).widths))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            when (((jindex ((jget (this).widths)) (index)) == width) && ((jindex ((jget (this).heights)) (index)) == height)) $ do
                jset foundIndex (index)
                javaReturn ((jget foundIndex))
        pure ((jget foundIndex))


getFromAvailable :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (Image.Image)
getFromAvailable object_ a1 a2 a3 = jmethod object_ "getFromAvailable" (\() -> (getFromAvailable_impl (javaCast object_ :: ImageCacheBase))) () a1 a2 a3

getFromAvailable_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (Image.Image)
getFromAvailable_super object_ a1 a2 a3 = (getFromAvailable_impl (javaCast object_ :: ImageCacheBase)) a1 a2 a3

getFromAvailable_impl :: ImageCacheBase -> Int -> Int -> Int -> IO (Image.Image)
getFromAvailable_impl this foundIndex width height = do
    javaCatchReturn $ do
        when (foundIndex /= (Prelude.negate 1)) $ do
            when ((jio (size ((jindex ((jget (this).availableListOfList)) (foundIndex))))) > 0) $ do
                let list = (jindex ((jget (this).availableListOfList)) (foundIndex))
                javaReturn ((javaCast (jio (BasicArrayList.removeAt list ((jio (BasicArrayList.size list)) - 1))) :: Image.Image))
        pure (NullImage.nULL_IMAGE)


-- throws Exception
get :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Image.Image)
get object_ a1 a2 a3 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: ImageCacheBase))) () a1 a2 a3

get_super :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Image.Image)
get_super object_ a1 a2 a3 = (get_impl (javaCast object_ :: ImageCacheBase)) a1 a2 a3

get_impl :: ImageCacheBase -> String -> Int -> Int -> IO (Image.Image)
get_impl this caller width height = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
getWithKey :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Image.Image)
getWithKey object_ a1 = jmethod object_ "getWithKey" (\() -> (getWithKey_impl (javaCast object_ :: ImageCacheBase))) () (jtoObject a1)

getWithKey_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Image.Image)
getWithKey_super object_ a1 = (getWithKey_impl (javaCast object_ :: ImageCacheBase)) (jtoObject a1)

getWithKey_impl :: ImageCacheBase -> JavaObject -> IO (Image.Image)
getWithKey_impl this keyObject_ = do
        let key = jtoObject keyObject_
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
createImage :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Image.Image)
createImage object_ a1 a2 a3 = jmethod object_ "createImage" (\() -> (createImage_impl (javaCast object_ :: ImageCacheBase))) () a1 a2 a3

createImage_super :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Image.Image)
createImage_super object_ a1 a2 a3 = (createImage_impl (javaCast object_ :: ImageCacheBase)) a1 a2 a3

createImage_impl :: ImageCacheBase -> String -> Int -> Int -> IO (Image.Image)
createImage_impl this caller width height = do
        (ImageFactory.createImage ((jget (this).imageFactory)) caller width height)


-- throws Exception
createImageFromInputStream :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> InputStream.InputStream -> IO (Image.Image)
createImageFromInputStream object_ a1 a2 = jmethod object_ "createImageFromInputStream" (\() -> (createImageFromInputStream_impl (javaCast object_ :: ImageCacheBase))) () (jtoObject a1) a2

createImageFromInputStream_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> InputStream.InputStream -> IO (Image.Image)
createImageFromInputStream_super object_ a1 a2 = (createImageFromInputStream_impl (javaCast object_ :: ImageCacheBase)) (jtoObject a1) a2

createImageFromInputStream_impl :: ImageCacheBase -> JavaObject -> InputStream.InputStream -> IO (Image.Image)
createImageFromInputStream_impl this keyObject_ inputStream = do
        let key = jtoObject keyObject_
        (ImageFactory.createImageFromInputStream ((jget (this).imageFactory)) key inputStream)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: ImageCacheBase))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: ImageCacheBase))

toString_impl :: ImageCacheBase -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        forM_ [((jget (this).nextIndex) - 1), ((jget (this).nextIndex) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let width = (jindex ((jget (this).widths)) (index))
            let height = (jindex ((jget (this).heights)) (index))
            total <- (size ((jindex ((jget (this).listOfList)) (index))))
            totalAvailable <- (size ((jindex ((jget (this).availableListOfList)) (index))))
            Control.Monad.void (StringMaker.append stringBuffer " w: ")
            Control.Monad.void (StringMaker.appendint stringBuffer width)
            Control.Monad.void (StringMaker.append stringBuffer " h: ")
            Control.Monad.void (StringMaker.appendint stringBuffer height)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonLabels.getInstance))).tOTAL_LABEL))
            Control.Monad.void (StringMaker.appendint stringBuffer total)
            Control.Monad.void (StringMaker.append stringBuffer " available: ")
            Control.Monad.void (StringMaker.appendint stringBuffer totalAvailable)
        (StringMaker.toString stringBuffer)


getHashtableP :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getHashtableP object_ = jmethod object_ "getHashtableP" (\() -> (getHashtableP_impl (javaCast object_ :: ImageCacheBase))) ()

getHashtableP_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getHashtableP_super object_ = (getHashtableP_impl (javaCast object_ :: ImageCacheBase))

getHashtableP_impl :: ImageCacheBase -> IO (ABHashtable.ABHashtable)
getHashtableP_impl this = do
        pure ((jget (this).hashtable))


init :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ImageCacheBase))) () a1

init_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: ImageCacheBase)) a1

init_impl :: ImageCacheBase -> Image.Image -> IO (())
init_impl this image = do
        pure ()


initProgress :: (JavaObjectClass this_) => this_ -> IO (())
initProgress object_ = jmethod object_ "initProgress" (\() -> (initProgress_impl (javaCast object_ :: ImageCacheBase))) ()

initProgress_super :: (JavaObjectClass this_) => this_ -> IO (())
initProgress_super object_ = (initProgress_impl (javaCast object_ :: ImageCacheBase))

initProgress_impl :: ImageCacheBase -> IO (())
initProgress_impl this = do
        pure ()


