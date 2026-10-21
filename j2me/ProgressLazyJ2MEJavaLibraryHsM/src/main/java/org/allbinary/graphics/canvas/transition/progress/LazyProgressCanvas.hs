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
-- package org.allbinary.graphics.canvas.transition.progress
module LazyProgressCanvas (module LazyProgressCanvas, module ProgressCanvas) where

import ProgressCanvas hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, start, start_super, start_impl, end, end_super, end_impl, inGame, inGame_super, inGame_impl, endFromInitialLazyLoadingComplete, endFromInitialLazyLoadingComplete_super, endFromInitialLazyLoadingComplete_impl, endIfPaintedSinceStart, endIfPaintedSinceStart_super, endIfPaintedSinceStart_impl)
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
import qualified LogUtil -- same package or java.lang
import qualified Paintable -- same package or java.lang
import qualified PaintableInterface -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Processor -- org.allbinary.canvas.Processor
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable
import qualified ImageCacheFactory -- org.allbinary.image.ImageCacheFactory
import qualified ProgressCanvas

data LazyProgressCanvas = LazyProgressCanvas
    { header_ :: JavaHeader
    , base :: ProgressCanvas.ProgressCanvas
    }

instance JavaNull LazyProgressCanvas where
    javaNull = javaNullRecord "LazyProgressCanvas"

instance JavaEquals LazyProgressCanvas where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LazyProgressCanvas where
    (==) = jrecordEquals

instance JavaObjectClass LazyProgressCanvas where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO LazyProgressCanvas
newRecord_ = do
    base <- ProgressCanvas.newRecord_
    let header_ = base.header_
    let this = LazyProgressCanvas header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "end" (\() -> end_impl this)
    jregisterMethod header_ "inGame" (\() -> inGame_impl this)
    jregisterMethod header_ "endFromInitialLazyLoadingComplete" (\() -> endFromInitialLazyLoadingComplete_impl this)
    jregisterMethod header_ "endIfPaintedSinceStart" (\() -> endIfPaintedSinceStart_impl this)
    pure this

initFields_ :: LazyProgressCanvas -> IO ()
initFields_ this = do
    pure ()

new_3 :: String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO LazyProgressCanvas
new_3 title backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_3 this title backgroundBasicColor foregroundBasicColor
    pure this

init_3 :: LazyProgressCanvas -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_3 this title backgroundBasicColor foregroundBasicColor = do
        ProgressCanvas.init_3 this.base (title) (backgroundBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


start :: (JavaObjectClass this_) => this_ -> IO (())
start object_ = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: LazyProgressCanvas))) ()

start_super :: (JavaObjectClass this_) => this_ -> IO (())
start_super object_ = (start_impl (javaCast object_ :: LazyProgressCanvas))

start_impl :: LazyProgressCanvas -> IO (())
start_impl this = do
        Control.Monad.void (ProgressCanvas.start_super this.base)
        jset (this).base.hasPainted (False)
        pure ()


end :: (JavaObjectClass this_) => this_ -> IO (())
end object_ = jmethod object_ "end" (\() -> (end_impl (javaCast object_ :: LazyProgressCanvas))) ()

end_super :: (JavaObjectClass this_) => this_ -> IO (())
end_super object_ = (end_impl (javaCast object_ :: LazyProgressCanvas))

end_impl :: LazyProgressCanvas -> IO (())
end_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.base.commonStrings)).eND_METHOD_NAME))
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.base.commonStrings)).eND_METHOD_NAME))
            Control.Monad.void (ProgressCanvas.endActual this)
            jset (this).base.paintable ((jget (this).base.gAUGE_PAINTABLE))
            Control.Monad.void (ImageCache.runTask ((jio (ImageCacheFactory.getInstance))))
            Control.Monad.void (ImageCache.progressEnded ((jio (ImageCacheFactory.getInstance))))
        pure ()


inGame :: (JavaObjectClass this_) => this_ -> IO (())
inGame object_ = jmethod object_ "inGame" (\() -> (inGame_impl (javaCast object_ :: LazyProgressCanvas))) ()

inGame_super :: (JavaObjectClass this_) => this_ -> IO (())
inGame_super object_ = (inGame_impl (javaCast object_ :: LazyProgressCanvas))

inGame_impl :: LazyProgressCanvas -> IO (())
inGame_impl this = do
        assignedValue <- (Processor.getInstance)
        jset (this).base.inGameProcessor (assignedValue)
        pure ()


endFromInitialLazyLoadingComplete :: (JavaObjectClass this_) => this_ -> IO (())
endFromInitialLazyLoadingComplete object_ = jmethod object_ "endFromInitialLazyLoadingComplete" (\() -> (endFromInitialLazyLoadingComplete_impl (javaCast object_ :: LazyProgressCanvas))) ()

endFromInitialLazyLoadingComplete_super :: (JavaObjectClass this_) => this_ -> IO (())
endFromInitialLazyLoadingComplete_super object_ = (endFromInitialLazyLoadingComplete_impl (javaCast object_ :: LazyProgressCanvas))

endFromInitialLazyLoadingComplete_impl :: LazyProgressCanvas -> IO (())
endFromInitialLazyLoadingComplete_impl this = do
        Control.Monad.void (ProgressCanvas.endFromInitialLazyLoadingComplete_super this.base)
        assignedValue <- (NullPaintable.getInstance)
        jset (this).base.paintable (assignedValue)
        pure ()


endIfPaintedSinceStart :: (JavaObjectClass this_) => this_ -> IO (())
endIfPaintedSinceStart object_ = jmethod object_ "endIfPaintedSinceStart" (\() -> (endIfPaintedSinceStart_impl (javaCast object_ :: LazyProgressCanvas))) ()

endIfPaintedSinceStart_super :: (JavaObjectClass this_) => this_ -> IO (())
endIfPaintedSinceStart_super object_ = (endIfPaintedSinceStart_impl (javaCast object_ :: LazyProgressCanvas))

endIfPaintedSinceStart_impl :: LazyProgressCanvas -> IO (())
endIfPaintedSinceStart_impl this = do
        when (((jtoObject (jget (this).base.paintable)) == (jtoObject (jget (this).base.gAUGE_PAINTABLE))) && (jget (this).base.hasPainted)) $ do
            Control.Monad.void (LazyProgressCanvas.endFromInitialLazyLoadingComplete this)
        pure ()


