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
module SpriteSplitterUtil where

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
import qualified ImageUtil -- same package or java.lang
import qualified ImageUnifierProperties -- same package or java.lang
import qualified ImageUnifierCell -- same package or java.lang
import qualified ImageUnifierUtil -- same package or java.lang
import qualified ImageProcessorInput -- same package or java.lang
import qualified ImageProcessedVisitor -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data SpriteSplitterUtil = SpriteSplitterUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , aNIMATIONS_LABELS :: IORef (JavaArray (String))
    , dIRECTIONAL_ANIMATIONS :: IORef (String)
    , hORIZONTAL_ANIMATIONS :: IORef (String)
    , hORIZONTAL_SPRITE :: IORef (String)
    , rOW_NAME :: IORef (JavaArray (String))
    , _ROW :: IORef (String)
    }

instance JavaNull SpriteSplitterUtil where
    javaNull = javaNullRecord "SpriteSplitterUtil"

instance JavaEquals SpriteSplitterUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SpriteSplitterUtil where
    (==) = jrecordEquals

instance JavaObjectClass SpriteSplitterUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SpriteSplitterUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonSeps <- newIORef javaNull
    commonStrings <- newIORef javaNull
    aNIMATIONS_LABELS <- newIORef javaNull
    dIRECTIONAL_ANIMATIONS <- newIORef ""
    hORIZONTAL_ANIMATIONS <- newIORef ""
    hORIZONTAL_SPRITE <- newIORef ""
    rOW_NAME <- newIORef javaNull
    _ROW <- newIORef ""
    let this = SpriteSplitterUtil header_ logUtil commonSeps commonStrings aNIMATIONS_LABELS dIRECTIONAL_ANIMATIONS hORIZONTAL_ANIMATIONS hORIZONTAL_SPRITE rOW_NAME _ROW
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: SpriteSplitterUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.aNIMATIONS_LABELS ((jarrayFromList ["Row Total:", "Column Total:", "Column Total:", "Row Total:", "Column Total:", "Row Total:"]))
    jset this.dIRECTIONAL_ANIMATIONS ("Directional DLRU")
    jset this.hORIZONTAL_ANIMATIONS ("Horizontal Animations")
    jset this.hORIZONTAL_SPRITE ("Horizontal A=R=Y F=C=X")
    jset this.rOW_NAME ((jarrayFromList ["idle", "walk", "attack", "defeat"]))
    jset this._ROW ("_row")
    pure ()

new_ :: IO SpriteSplitterUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SpriteSplitterUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (SpriteSplitterUtil)
getInstance = do
        pure (SpriteSplitterUtil.instance_)


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> Int -> Int -> Int -> Int -> Int -> Int -> String -> ImageProcessedVisitor.ImageProcessedVisitor -> IO (())
process object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: SpriteSplitterUtil))) () a1 a2 a3 a4 a5 a6 a7 a8 a9

process_super :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> Int -> Int -> Int -> Int -> Int -> Int -> String -> ImageProcessedVisitor.ImageProcessedVisitor -> IO (())
process_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = (process_impl (javaCast object_ :: SpriteSplitterUtil)) a1 a2 a3 a4 a5 a6 a7 a8 a9

process_impl :: SpriteSplitterUtil -> ImageProcessorInput.ImageProcessorInput -> Int -> Int -> Int -> Int -> Int -> Int -> String -> ImageProcessedVisitor.ImageProcessedVisitor -> IO (())
process_impl this imageProcessorInput totalFrames totalAnimations widthReduction heightReduction increaseWidth increaseHeight spriteType visitor = do
        bufferedImage <- newIORef (javaNull)
        generatedBufferedImageArray <- newIORef (javaNull)
        bufferedImageArray <- (ImageProcessorInput.getBufferedImageArray imageProcessorInput)
        forM_ [0 .. (jlength bufferedImageArray) - 1] $ \index -> javaIteration (pure ()) $ do
            jset bufferedImage ((jindex bufferedImageArray (index)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) spriteType this (jget ((jget (this).commonStrings)).rUN))
            if (spriteType == (jget (this).hORIZONTAL_SPRITE)) then do
                let cellHeight = ((jio (BufferedImage.getHeight ((jget bufferedImage)))) / totalAnimations)
                let cellWidth = ((jio (BufferedImage.getWidth ((jget bufferedImage)))) / totalFrames)
                let columns = totalFrames
                let rows = totalAnimations
                jset generatedBufferedImageArray ((jnewArray2 (rows) (columns) javaNull))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("Processing Individual Cells columns: " ++ javaToString columns) ++ " rows: ") ++ javaToString rows) this (jget ((jget (this).commonStrings)).rUN))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("Processing Individual Cells cellHeight: " ++ javaToString cellHeight) ++ " cellWidth: ") ++ javaToString cellWidth) this (jget ((jget (this).commonStrings)).rUN))
                imageUtil <- (ImageUtil.getInstance)
                nameEnding <- newIORef (javaNull)
                x <- newIORef (0)
                y <- newIORef (0)
                forM_ [0 .. rows - 1] $ \index2 -> javaIteration (pure ()) $ do
                    jset y ((cellHeight * index2))
                    forM_ [0 .. columns - 1] $ \index3 -> javaIteration (pure ()) $ do
                        jset x ((cellWidth * index3))
                        assignedValue <- (BufferedImage.getSubimage ((jget bufferedImage)) ((jget x) + widthReduction) ((jget y) + heightReduction) (cellWidth - ((widthReduction * 2))) (cellHeight - ((heightReduction * 2))))
                        jsetIndex ((jindex ((jget generatedBufferedImageArray)) (index2))) (index3) (assignedValue)
                        when ((increaseWidth /= 0) || (increaseHeight /= 0)) $ do
                            assignedValue <- (ImageUtil.createBufferedImageAllowTranslate imageUtil (jindex ((jindex ((jget generatedBufferedImageArray)) (index2))) (index3)) (cellWidth + increaseWidth) (cellHeight + increaseHeight) False True)
                            jsetIndex ((jindex ((jget generatedBufferedImageArray)) (index2))) (index3) (assignedValue)
                        assignedValue <- (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.new_))) index2))) (jget ((jget (this).commonSeps)).uNDERSCORE)))) index3))))
                        jset nameEnding (assignedValue)
                        Control.Monad.void (ImageProcessedVisitor.visit visitor (jindex ((jindex ((jget generatedBufferedImageArray)) (index2))) (index3)) (jget nameEnding) index)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Processing Rows from Cells" this (jget ((jget (this).commonStrings)).rUN))
                imageUnifierProperties <- (ImageUnifierProperties.new_)
                Control.Monad.void (ImageUnifierProperties.setRows imageUnifierProperties (javaToString 1))
                Control.Monad.void (ImageUnifierProperties.setColumns imageUnifierProperties (javaToString columns))
                imageUnifierCell <- (ImageUnifierCell.new_2 (javaToString (cellWidth - ((2 * widthReduction)))) (javaToString (cellHeight - ((2 * heightReduction)))))
                Control.Monad.void (ImageUnifierProperties.setImageUnifierCell imageUnifierProperties imageUnifierCell)
                forM_ [0 .. rows - 1] $ \index2 -> javaIteration (pure ()) $ do
                    jset y ((cellHeight * index2))
                    let tempBufferedImageArray = (jnewArray (columns) javaNull)
                    forM_ [0 .. columns - 1] $ \index3 -> javaIteration (pure ()) $ do
                        jsetIndex tempBufferedImageArray (index3) ((jindex ((jindex ((jget generatedBufferedImageArray)) (index2))) (index3)))
                        assignedValue <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.new_))) index2))) (jget ((jget (this).commonSeps)).uNDERSCORE)))) 1))) (jget (this)._ROW)))))
                        jset nameEnding (assignedValue)
                    generatedBufferedImage <- (ImageUnifierUtil.getImage ((jio (ImageUnifierUtil.getInstance))) tempBufferedImageArray imageUnifierProperties)
                    Control.Monad.void (ImageProcessedVisitor.visit visitor generatedBufferedImage (jget nameEnding) index)
            else if (spriteType == (jget this.hORIZONTAL_ANIMATIONS)) then do
                pure ()
            else when (spriteType == (jget (this).dIRECTIONAL_ANIMATIONS)) $ do
                let totalFrames2 = 4
                let cellHeight = ((jio (BufferedImage.getHeight ((jget bufferedImage)))) / totalFrames2)
                let cellWidth = ((jio (BufferedImage.getWidth ((jget bufferedImage)))) / totalAnimations)
                let columns = totalAnimations
                let rows = totalFrames2
                jset generatedBufferedImageArray ((jnewArray2 (rows) (columns) javaNull))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Processing Individual Cells for each Direction" this (jget ((jget (this).commonStrings)).rUN))
                nameEnding <- newIORef (javaNull)
                x <- newIORef (0)
                y <- newIORef (0)
                forM_ [0 .. rows - 1] $ \index2 -> javaIteration (pure ()) $ do
                    jset y ((cellHeight * index2))
                    forM_ [0 .. columns - 1] $ \index3 -> javaIteration (pure ()) $ do
                        jset x ((cellWidth * index3))
                        assignedValue <- (BufferedImage.getSubimage ((jget bufferedImage)) ((jget x) + widthReduction) ((jget y) + heightReduction) (cellWidth - ((widthReduction * 2))) (cellHeight - ((heightReduction * 2))))
                        jsetIndex ((jindex ((jget generatedBufferedImageArray)) (index2))) (index3) (assignedValue)
                        when ((increaseWidth /= 0) || (increaseHeight /= 0)) $ do
                            assignedValue <- (ImageUtil.createBufferedImageAllowTranslate ((jio (ImageUtil.getInstance))) (jindex ((jindex ((jget generatedBufferedImageArray)) (index2))) (index3)) (cellWidth + increaseWidth) (cellHeight + increaseHeight) False True)
                            jsetIndex ((jindex ((jget generatedBufferedImageArray)) (index2))) (index3) (assignedValue)
                        assignedValue <- (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jindex ((jget ((jget (this).commonStrings)).dIRECTION_NAME)) (index2))))) (jget ((jget (this).commonSeps)).uNDERSCORE)))) index3))))
                        jset nameEnding (assignedValue)
                        Control.Monad.void (ImageProcessedVisitor.visit visitor (jindex ((jindex ((jget generatedBufferedImageArray)) (index2))) (index3)) (jget nameEnding) index)
                imageUnifierProperties <- (ImageUnifierProperties.new_)
                Control.Monad.void (ImageUnifierProperties.setRows imageUnifierProperties (javaToString 1))
                Control.Monad.void (ImageUnifierProperties.setColumns imageUnifierProperties (javaToString columns))
                imageUnifierCell <- (ImageUnifierCell.new_2 ((javaToString (cellWidth - ((2 * widthReduction)))) + increaseWidth) (javaToString ((cellHeight - ((2 * heightReduction))) + increaseHeight)))
                Control.Monad.void (ImageUnifierProperties.setImageUnifierCell imageUnifierProperties imageUnifierCell)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Processing Rows from Cells for each Direction" this (jget ((jget (this).commonStrings)).rUN))
                forM_ [0 .. rows - 1] $ \index2 -> javaIteration (pure ()) $ do
                    jset y ((cellHeight * index2))
                    let tempBufferedImageArray = (jnewArray (columns) javaNull)
                    forM_ [0 .. columns - 1] $ \index3 -> javaIteration (pure ()) $ do
                        jsetIndex tempBufferedImageArray (index3) ((jindex ((jindex ((jget generatedBufferedImageArray)) (index2))) (index3)))
                        assignedValue <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jindex ((jget ((jget (this).commonStrings)).dIRECTION_NAME)) (index2))))) (jget ((jget (this).commonSeps)).uNDERSCORE)))) 1))) (jget (this)._ROW)))))
                        jset nameEnding (assignedValue)
                    generatedBufferedImage <- (ImageUnifierUtil.getImage ((jio (ImageUnifierUtil.getInstance))) tempBufferedImageArray imageUnifierProperties)
                    Control.Monad.void (ImageProcessedVisitor.visit visitor generatedBufferedImage (jget nameEnding) index)
        pure ()


