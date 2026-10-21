{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.animation
module PathParser where

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
import qualified FixedPoint -- same package or java.lang
import qualified PGUtil -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil

data PathParser = PathParser
    { header_ :: JavaHeader
    }

instance JavaNull PathParser where
    javaNull = javaNullRecord "PathParser"

instance JavaEquals PathParser where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathParser where
    (==) = jrecordEquals

instance JavaObjectClass PathParser where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PathParser
newRecord_ = do
    header_ <- newJavaHeader
    let this = PathParser header_
    jregisterLevel header_ this
    pure this

initFields_ :: PathParser -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PathParser
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PathParser -> IO ()
init_ this = do
    initFields_ this


tokenize :: String -> IO (JavaArray (String))
tokenize d = do
        tokens <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        sb <- (StringBuffer.new_)
        forM_ [0 .. (Prelude.length d) - 1] $ \i -> javaIteration (pure ()) $ do
            let c = (d Prelude.!! i)
            if (((((c == ' ') || (c == ',')) || (c == '\t')) || (c == '\n')) || (c == '\r')) then do
                when ((jio (StringBuffer.length sb)) > 0) $ do
                    Control.Monad.void (BasicArrayList.add tokens (jio (StringBuffer.toString sb)))
                    Control.Monad.void (StringBuffer.setLength sb 0)
            else if ((((((((((c == 'M') || (c == 'm')) || (c == 'L')) || (c == 'l')) || (c == 'V')) || (c == 'v')) || (c == 'C')) || (c == 'c')) || (c == 'Z')) || (c == 'z')) then do
                when ((jio (StringBuffer.length sb)) > 0) $ do
                    Control.Monad.void (BasicArrayList.add tokens (jio (StringBuffer.toString sb)))
                    Control.Monad.void (StringBuffer.setLength sb 0)
                Control.Monad.void (BasicArrayList.add tokens (javaToString c))
            else do
                Control.Monad.void (StringBuffer.append sb c)
        when ((jio (StringBuffer.length sb)) > 0) $ do
            Control.Monad.void (jio (BasicArrayList.add tokens (jio (StringBuffer.toString sb))))
        let res = (jnewArray ((jio (BasicArrayList.size tokens))) javaNull)
        Control.Monad.void (BasicArrayList.toArrayType tokens res)
        pure (res)


parsePath :: String -> JavaArray (Int) -> JavaArray (Int) -> Int -> IO (Int)
parsePath d outX outY maxPoints = do
        tokens <- (PathParser.tokenize d)
        let count = (jarrayFromList [0])
        fixedPoint <- (FixedPoint.getInstance)
        curX <- newIORef (0)
        curY <- newIORef (0)
        startX <- newIORef (0)
        startY <- newIORef (0)
        idx <- newIORef (0)
        fix $ \loop -> when ((jget idx) < (jlength tokens)) $ javaIteration (loop) $ do
            let tok = (jindex tokens ((jpostIncrement idx (+ 1))))
            let cmd = (tok Prelude.!! 0)
            if ((cmd == 'M') || (cmd == 'm')) then do
                x <- newIORef =<< (FixedPoint.toFixed fixedPoint (Prelude.read (jindex tokens ((jpostIncrement idx (+ 1))))))
                y <- newIORef =<< (FixedPoint.toFixed fixedPoint (Prelude.read (jindex tokens ((jpostIncrement idx (+ 1))))))
                when (cmd == 'm') $ do
                    jset x (((jget x) + (jget curX)))
                    jset y (((jget y) + (jget curY)))
                jset curX ((jget x))
                jset curY ((jget y))
                jset startX ((jget x))
                jset startY ((jget y))
                jsetIndex outX ((jindex count (0))) ((jget curX))
                jsetIndex outY ((jindex count (0))) ((jget curY))
                jsetIndex count (0) ((jindex count (0)) + 1)
            else if ((cmd == 'L') || (cmd == 'l')) then do
                x <- newIORef =<< (FixedPoint.toFixed fixedPoint (Prelude.read (jindex tokens ((jpostIncrement idx (+ 1))))))
                y <- newIORef =<< (FixedPoint.toFixed fixedPoint (Prelude.read (jindex tokens ((jpostIncrement idx (+ 1))))))
                when (cmd == 'l') $ do
                    jset x (((jget x) + (jget curX)))
                    jset y (((jget y) + (jget curY)))
                jset curX ((jget x))
                jset curY ((jget y))
                jsetIndex outX ((jindex count (0))) ((jget curX))
                jsetIndex outY ((jindex count (0))) ((jget curY))
                jsetIndex count (0) ((jindex count (0)) + 1)
            else if ((cmd == 'V') || (cmd == 'v')) then do
                y <- newIORef =<< (FixedPoint.toFixed fixedPoint (Prelude.read (jindex tokens ((jpostIncrement idx (+ 1))))))
                when (cmd == 'v') $ do
                    jset y (((jget y) + (jget curY)))
                jset curY ((jget y))
                jsetIndex outX ((jindex count (0))) ((jget curX))
                jsetIndex outY ((jindex count (0))) ((jget curY))
                jsetIndex count (0) ((jindex count (0)) + 1)
            else if ((cmd == 'C') || (cmd == 'c')) then do
                x1 <- newIORef =<< (FixedPoint.toFixed fixedPoint (Prelude.read (jindex tokens ((jpostIncrement idx (+ 1))))))
                y1 <- newIORef =<< (FixedPoint.toFixed fixedPoint (Prelude.read (jindex tokens ((jpostIncrement idx (+ 1))))))
                x2 <- newIORef =<< (FixedPoint.toFixed fixedPoint (Prelude.read (jindex tokens ((jpostIncrement idx (+ 1))))))
                y2 <- newIORef =<< (FixedPoint.toFixed fixedPoint (Prelude.read (jindex tokens ((jpostIncrement idx (+ 1))))))
                x3 <- newIORef =<< (FixedPoint.toFixed fixedPoint (Prelude.read (jindex tokens ((jpostIncrement idx (+ 1))))))
                y3 <- newIORef =<< (FixedPoint.toFixed fixedPoint (Prelude.read (jindex tokens ((jpostIncrement idx (+ 1))))))
                when (cmd == 'c') $ do
                    jset x1 (((jget x1) + (jget curX)))
                    jset y1 (((jget y1) + (jget curY)))
                    jset x2 (((jget x2) + (jget curX)))
                    jset y2 (((jget y2) + (jget curY)))
                    jset x3 (((jget x3) + (jget curX)))
                    jset y3 (((jget y3) + (jget curY)))
                Control.Monad.void (PGUtil.flattenCubicBezier ((jio (PGUtil.getInstance))) (jget curX) (jget curY) (jget x1) (jget y1) (jget x2) (jget y2) (jget x3) (jget y3) outX outY count maxPoints)
                jset curX ((jget x3))
                jset curY ((jget y3))
            else when ((cmd == 'Z') || (cmd == 'z')) $ do
                jset curX ((jget startX))
                jset curY ((jget startY))
                jsetIndex outX ((jindex count (0))) ((jget curX))
                jsetIndex outY ((jindex count (0))) ((jget curY))
                jsetIndex count (0) ((jindex count (0)) + 1)
            fix $ \loop -> when (((jget idx) < (jlength tokens)) && (Prelude.not (jio (PathParser.isCommand (jindex tokens ((jget idx))))))) $ javaIteration (loop) $ do
                if ((((cmd == 'M') || (cmd == 'm')) || (cmd == 'L')) || (cmd == 'l')) then do
                    x <- newIORef =<< (FixedPoint.toFixed fixedPoint (Prelude.read (jindex tokens ((jpostIncrement idx (+ 1))))))
                    y <- newIORef =<< (FixedPoint.toFixed fixedPoint (Prelude.read (jindex tokens ((jpostIncrement idx (+ 1))))))
                    when ((cmd == 'm') || (cmd == 'l')) $ do
                        jset x (((jget x) + (jget curX)))
                        jset y (((jget y) + (jget curY)))
                    jset curX ((jget x))
                    jset curY ((jget y))
                    jsetIndex outX ((jindex count (0))) ((jget curX))
                    jsetIndex outY ((jindex count (0))) ((jget curY))
                    jsetIndex count (0) ((jindex count (0)) + 1)
                else when ((cmd == 'V') || (cmd == 'v')) $ do
                    y <- newIORef =<< (FixedPoint.toFixed fixedPoint (Prelude.read (jindex tokens ((jpostIncrement idx (+ 1))))))
                    when (cmd == 'v') $ do
                        jset y (((jget y) + (jget curY)))
                    jset curY ((jget y))
                    jsetIndex outX ((jindex count (0))) ((jget curX))
                    jsetIndex outY ((jindex count (0))) ((jget curY))
                    jsetIndex count (0) ((jindex count (0)) + 1)
        pure ((jindex count (0)))


isCommand :: String -> IO (Bool)
isCommand tok = do
        let c = (tok Prelude.!! 0)
        pure (((jstringIndexOf "MmLlVvCcZz" c 0) >= 0))


