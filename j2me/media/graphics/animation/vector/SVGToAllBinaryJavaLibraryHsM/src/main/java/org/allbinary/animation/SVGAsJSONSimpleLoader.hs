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
-- package org.allbinary.animation
module SVGAsJSONSimpleLoader where

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
import qualified ShapeTypeFactory -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified ShapeType -- same package or java.lang
import qualified Enumeration -- java.util.Enumeration
import qualified GraphicsStrings -- org.allbinary.graphics.GraphicsStrings
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified PositionStrings -- org.allbinary.math.PositionStrings
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified JSONArray -- org.json.me.JSONArray
import qualified JSONException -- org.json.me.JSONException
import qualified JSONObject -- org.json.me.JSONObject

data SVGAsJSONSimpleLoader = SVGAsJSONSimpleLoader
    { header_ :: JavaHeader
    , graphicsStrings :: IORef (GraphicsStrings.GraphicsStrings)
    , shapeTypeFactory :: IORef (ShapeTypeFactory.ShapeTypeFactory)
    , kEY_SVG :: IORef (String)
    , kEY_X1 :: IORef (String)
    , kEY_Y1 :: IORef (String)
    , kEY_X2 :: IORef (String)
    , kEY_Y2 :: IORef (String)
    , kEY_CX :: IORef (String)
    , kEY_CY :: IORef (String)
    , kEY_R :: IORef (String)
    , kEY_X :: IORef (String)
    , kEY_Y :: IORef (String)
    , eRROR_PARSE_SVG_JSON :: IORef (String)
    , eRROR_MISSING_KEY_PREFIX :: IORef (String)
    , eRROR_INVALID_NUMBER_PREFIX :: IORef (String)
    , eRROR_EXPECTED_OBJECT_PREFIX :: IORef (String)
    , eMPTY_POINTS :: IORef (JavaArray (JavaArray (Int)))
    , sHAPE_SEPARATOR :: IORef (JavaArray (Int))
    , cIRCLE_SEGMENTS :: IORef (Int)
    }

instance JavaNull SVGAsJSONSimpleLoader where
    javaNull = javaNullRecord "SVGAsJSONSimpleLoader"

instance JavaEquals SVGAsJSONSimpleLoader where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SVGAsJSONSimpleLoader where
    (==) = jrecordEquals

instance JavaObjectClass SVGAsJSONSimpleLoader where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SVGAsJSONSimpleLoader
newRecord_ = do
    header_ <- newJavaHeader
    graphicsStrings <- newIORef javaNull
    shapeTypeFactory <- newIORef javaNull
    kEY_SVG <- newIORef ""
    kEY_X1 <- newIORef ""
    kEY_Y1 <- newIORef ""
    kEY_X2 <- newIORef ""
    kEY_Y2 <- newIORef ""
    kEY_CX <- newIORef ""
    kEY_CY <- newIORef ""
    kEY_R <- newIORef ""
    kEY_X <- newIORef ""
    kEY_Y <- newIORef ""
    eRROR_PARSE_SVG_JSON <- newIORef ""
    eRROR_MISSING_KEY_PREFIX <- newIORef ""
    eRROR_INVALID_NUMBER_PREFIX <- newIORef ""
    eRROR_EXPECTED_OBJECT_PREFIX <- newIORef ""
    eMPTY_POINTS <- newIORef javaNull
    sHAPE_SEPARATOR <- newIORef javaNull
    cIRCLE_SEGMENTS <- newIORef 0
    let this = SVGAsJSONSimpleLoader header_ graphicsStrings shapeTypeFactory kEY_SVG kEY_X1 kEY_Y1 kEY_X2 kEY_Y2 kEY_CX kEY_CY kEY_R kEY_X kEY_Y eRROR_PARSE_SVG_JSON eRROR_MISSING_KEY_PREFIX eRROR_INVALID_NUMBER_PREFIX eRROR_EXPECTED_OBJECT_PREFIX eMPTY_POINTS sHAPE_SEPARATOR cIRCLE_SEGMENTS
    jregisterLevel header_ this
    jregisterMethod header_ "load" (\() -> load_impl this)
    jregisterMethod header_ "addShapes" (\() -> addShapes_impl this)
    jregisterMethod header_ "addShape" (\() -> addShape_impl this)
    jregisterMethod header_ "addLine" (\() -> addLine_impl this)
    jregisterMethod header_ "addCircle" (\() -> addCircle_impl this)
    jregisterMethod header_ "addRectangle" (\() -> addRectangle_impl this)
    jregisterMethod header_ "addPoint" (\() -> addPoint_impl this)
    jregisterMethod header_ "addSeparator" (\() -> addSeparator_impl this)
    jregisterMethod header_ "readInt" (\() -> readInt_impl this)
    jregisterMethod header_ "readInt_3" (\() -> readInt_3_impl this)
    jregisterMethod header_ "toInt" (\() -> toInt_impl this)
    jregisterMethod header_ "asObject" (\() -> asObject_impl this)
    jregisterMethod header_ "toPoints" (\() -> toPoints_impl this)
    pure this

initFields_ :: SVGAsJSONSimpleLoader -> IO ()
initFields_ this = do
    jset this.graphicsStrings =<< (GraphicsStrings.getInstance)
    jset this.shapeTypeFactory =<< (ShapeTypeFactory.getInstance)
    jset this.kEY_SVG ("svg")
    jset this.kEY_X1 ("x1")
    jset this.kEY_Y1 ("y1")
    jset this.kEY_X2 ("x2")
    jset this.kEY_Y2 ("y2")
    jset this.kEY_CX ("cx")
    jset this.kEY_CY ("cy")
    jset this.kEY_R ("r")
    jset this.kEY_X ((jget ((jio (PositionStrings.getInstance))).x))
    jset this.kEY_Y ((jget ((jio (PositionStrings.getInstance))).y))
    jset this.eRROR_PARSE_SVG_JSON ("Unable to parse SVG JSON")
    jset this.eRROR_MISSING_KEY_PREFIX ("Missing key: ")
    jset this.eRROR_INVALID_NUMBER_PREFIX ("Invalid number for key: ")
    jset this.eRROR_EXPECTED_OBJECT_PREFIX ("Expected object for: ")
    jset this.eMPTY_POINTS =<< (PrimitiveIntUtil.getTwoDimensionalArrayInstance)
    jset this.sHAPE_SEPARATOR ((jarrayFromList [1000, 1000]))
    jset this.cIRCLE_SEGMENTS (16)
    pure ()

new_ :: IO SVGAsJSONSimpleLoader
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SVGAsJSONSimpleLoader -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (SVGAsJSONSimpleLoader)
getInstance = do
        pure (SVGAsJSONSimpleLoader.instance_)


-- throws Exception
load :: (JavaObjectClass this_) => this_ -> String -> IO (JavaArray (JavaArray (Int)))
load object_ a1 = jmethod object_ "load" (\() -> (load_impl (javaCast object_ :: SVGAsJSONSimpleLoader))) () a1

load_super :: (JavaObjectClass this_) => this_ -> String -> IO (JavaArray (JavaArray (Int)))
load_super object_ a1 = (load_impl (javaCast object_ :: SVGAsJSONSimpleLoader)) a1

load_impl :: SVGAsJSONSimpleLoader -> String -> IO (JavaArray (JavaArray (Int)))
load_impl this svgAsJson = do
    javaCatchReturn $ do
        when (svgAsJson == javaNull) $ do
            javaReturn ((jget this.eMPTY_POINTS))
        handle (\(e :: JavaException) -> do
            javaThrow ((JavaException "IllegalArgumentException" (jget this.eRROR_PARSE_SVG_JSON) e))
            ) $ do
            root <- (JSONObject.new_1 svgAsJson)
            svgValue <- (JSONObject.opt root (jget this.kEY_SVG))
            let svg = (if (svgValue == javaNull) then root else (jio (SVGAsJSONSimpleLoader.asObject this svgValue (jget this.kEY_SVG))))
            pointVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            keys <- (JSONObject.keys svg)
            fix $ \loop -> when (jio (Enumeration.hasMoreElements keys)) $ javaIteration (loop) $ do
                let key = (javaCast (jio (Enumeration.nextElement keys)) :: String)
                value <- (JSONObject.opt svg key)
                if ((jget ((jget (this).shapeTypeFactory)).kEY_LINE) == key) then do
                    Control.Monad.void (SVGAsJSONSimpleLoader.addShapes this pointVector value (jget ((jget (this).shapeTypeFactory)).lINE))
                else if (jio (ShapeTypeFactory.equals ((jget (this).shapeTypeFactory)) key)) then do
                    Control.Monad.void (SVGAsJSONSimpleLoader.addShapes this pointVector value (jget ((jget (this).shapeTypeFactory)).cIRCLE))
                else when (((jget ((jget (this).shapeTypeFactory)).kEY_RECT) == key) || ((jget ((jget (this).shapeTypeFactory)).kEY_RECTANGLE) == key)) $ do
                    Control.Monad.void (SVGAsJSONSimpleLoader.addShapes this pointVector value (jget ((jget (this).shapeTypeFactory)).rECTANGLE))
            (SVGAsJSONSimpleLoader.toPoints this pointVector)


-- throws Exception
addShapes :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> BasicArrayList.BasicArrayList -> o2 -> ShapeType.ShapeType -> IO (())
addShapes object_ a1 a2 a3 = jmethod object_ "addShapes" (\() -> (addShapes_impl (javaCast object_ :: SVGAsJSONSimpleLoader))) () a1 (jtoObject a2) a3

addShapes_super :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> BasicArrayList.BasicArrayList -> o2 -> ShapeType.ShapeType -> IO (())
addShapes_super object_ a1 a2 a3 = (addShapes_impl (javaCast object_ :: SVGAsJSONSimpleLoader)) a1 (jtoObject a2) a3

addShapes_impl :: SVGAsJSONSimpleLoader -> BasicArrayList.BasicArrayList -> JavaObject -> ShapeType.ShapeType -> IO (())
addShapes_impl this pointVector valueObject_ shapeType = do
        let value = jtoObject valueObject_
        if (javaInstanceOf value "JSONArray") then do
            let array = (javaCast value :: JSONArray.JSONArray)
            size <- (JSONArray.length array)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (SVGAsJSONSimpleLoader.addShape this pointVector (jio (JSONArray.opt array index)) shapeType)
        else do
            Control.Monad.void (SVGAsJSONSimpleLoader.addShape this pointVector value shapeType)
        pure ()


-- throws Exception
addShape :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> BasicArrayList.BasicArrayList -> o2 -> ShapeType.ShapeType -> IO (())
addShape object_ a1 a2 a3 = jmethod object_ "addShape" (\() -> (addShape_impl (javaCast object_ :: SVGAsJSONSimpleLoader))) () a1 (jtoObject a2) a3

addShape_super :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> BasicArrayList.BasicArrayList -> o2 -> ShapeType.ShapeType -> IO (())
addShape_super object_ a1 a2 a3 = (addShape_impl (javaCast object_ :: SVGAsJSONSimpleLoader)) a1 (jtoObject a2) a3

addShape_impl :: SVGAsJSONSimpleLoader -> BasicArrayList.BasicArrayList -> JavaObject -> ShapeType.ShapeType -> IO (())
addShape_impl this pointVector valueObject_ shapeType = do
        let value = jtoObject valueObject_
        shape <- (SVGAsJSONSimpleLoader.asObject this value (jio (ShapeType.getName shapeType)))
        if (shapeType == (jget ((jget (this).shapeTypeFactory)).lINE)) then do
            Control.Monad.void (SVGAsJSONSimpleLoader.addLine this pointVector shape)
        else if (shapeType == (jget ((jget (this).shapeTypeFactory)).cIRCLE)) then do
            Control.Monad.void (SVGAsJSONSimpleLoader.addCircle this pointVector shape)
        else do
            Control.Monad.void (SVGAsJSONSimpleLoader.addRectangle this pointVector shape)
        pure ()


-- throws Exception
addLine :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> JSONObject.JSONObject -> IO (())
addLine object_ a1 a2 = jmethod object_ "addLine" (\() -> (addLine_impl (javaCast object_ :: SVGAsJSONSimpleLoader))) () a1 a2

addLine_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> JSONObject.JSONObject -> IO (())
addLine_super object_ a1 a2 = (addLine_impl (javaCast object_ :: SVGAsJSONSimpleLoader)) a1 a2

addLine_impl :: SVGAsJSONSimpleLoader -> BasicArrayList.BasicArrayList -> JSONObject.JSONObject -> IO (())
addLine_impl this pointVector line = do
        Control.Monad.void (SVGAsJSONSimpleLoader.addPoint this pointVector (jio (SVGAsJSONSimpleLoader.readInt this line (jget this.kEY_X1))) (jio (SVGAsJSONSimpleLoader.readInt this line (jget this.kEY_Y1))))
        Control.Monad.void (SVGAsJSONSimpleLoader.addPoint this pointVector (jio (SVGAsJSONSimpleLoader.readInt this line (jget this.kEY_X2))) (jio (SVGAsJSONSimpleLoader.readInt this line (jget this.kEY_Y2))))
        Control.Monad.void (SVGAsJSONSimpleLoader.addSeparator this pointVector)
        pure ()


-- throws Exception
addCircle :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> JSONObject.JSONObject -> IO (())
addCircle object_ a1 a2 = jmethod object_ "addCircle" (\() -> (addCircle_impl (javaCast object_ :: SVGAsJSONSimpleLoader))) () a1 a2

addCircle_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> JSONObject.JSONObject -> IO (())
addCircle_super object_ a1 a2 = (addCircle_impl (javaCast object_ :: SVGAsJSONSimpleLoader)) a1 a2

addCircle_impl :: SVGAsJSONSimpleLoader -> BasicArrayList.BasicArrayList -> JSONObject.JSONObject -> IO (())
addCircle_impl this pointVector circle = do
        cx <- (SVGAsJSONSimpleLoader.readInt this circle (jget this.kEY_CX))
        cy <- (SVGAsJSONSimpleLoader.readInt this circle (jget this.kEY_CY))
        radius <- (SVGAsJSONSimpleLoader.readInt this circle (jget this.kEY_R))
        forM_ [0 .. (jget this.cIRCLE_SEGMENTS)] $ \index -> javaIteration (pure ()) $ do
            let angle = ((((Math.pI * 2.0) * index)) / (jget this.cIRCLE_SEGMENTS))
            let x = (Prelude.fromInteger (jnumericInteger (Prelude.round (cx + (((Prelude.cos angle) * radius))))))
            let y = (Prelude.fromInteger (jnumericInteger (Prelude.round (cy + (((Prelude.sin angle) * radius))))))
            Control.Monad.void (SVGAsJSONSimpleLoader.addPoint this pointVector x y)
        Control.Monad.void (SVGAsJSONSimpleLoader.addSeparator this pointVector)
        pure ()


-- throws Exception
addRectangle :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> JSONObject.JSONObject -> IO (())
addRectangle object_ a1 a2 = jmethod object_ "addRectangle" (\() -> (addRectangle_impl (javaCast object_ :: SVGAsJSONSimpleLoader))) () a1 a2

addRectangle_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> JSONObject.JSONObject -> IO (())
addRectangle_super object_ a1 a2 = (addRectangle_impl (javaCast object_ :: SVGAsJSONSimpleLoader)) a1 a2

addRectangle_impl :: SVGAsJSONSimpleLoader -> BasicArrayList.BasicArrayList -> JSONObject.JSONObject -> IO (())
addRectangle_impl this pointVector rectangle = do
        x <- (SVGAsJSONSimpleLoader.readInt_3 this rectangle (jget this.kEY_X) 0)
        y <- (SVGAsJSONSimpleLoader.readInt_3 this rectangle (jget this.kEY_Y) 0)
        width <- (SVGAsJSONSimpleLoader.readInt this rectangle (jget ((jget this.graphicsStrings)).wIDTH))
        height <- (SVGAsJSONSimpleLoader.readInt this rectangle (jget ((jget this.graphicsStrings)).hEIGHT))
        Control.Monad.void (SVGAsJSONSimpleLoader.addPoint this pointVector x y)
        Control.Monad.void (SVGAsJSONSimpleLoader.addPoint this pointVector (x + width) y)
        Control.Monad.void (SVGAsJSONSimpleLoader.addPoint this pointVector (x + width) (y + height))
        Control.Monad.void (SVGAsJSONSimpleLoader.addPoint this pointVector x (y + height))
        Control.Monad.void (SVGAsJSONSimpleLoader.addPoint this pointVector x y)
        Control.Monad.void (SVGAsJSONSimpleLoader.addSeparator this pointVector)
        pure ()


addPoint :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> Int -> Int -> IO (())
addPoint object_ a1 a2 a3 = jmethod object_ "addPoint" (\() -> (addPoint_impl (javaCast object_ :: SVGAsJSONSimpleLoader))) () a1 a2 a3

addPoint_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> Int -> Int -> IO (())
addPoint_super object_ a1 a2 a3 = (addPoint_impl (javaCast object_ :: SVGAsJSONSimpleLoader)) a1 a2 a3

addPoint_impl :: SVGAsJSONSimpleLoader -> BasicArrayList.BasicArrayList -> Int -> Int -> IO (())
addPoint_impl this pointVector x y = do
        Control.Monad.void (BasicArrayList.add pointVector (jarrayFromList [x, y]))
        pure ()


addSeparator :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addSeparator object_ a1 = jmethod object_ "addSeparator" (\() -> (addSeparator_impl (javaCast object_ :: SVGAsJSONSimpleLoader))) () a1

addSeparator_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addSeparator_super object_ a1 = (addSeparator_impl (javaCast object_ :: SVGAsJSONSimpleLoader)) a1

addSeparator_impl :: SVGAsJSONSimpleLoader -> BasicArrayList.BasicArrayList -> IO (())
addSeparator_impl this pointVector = do
        Control.Monad.void (BasicArrayList.add pointVector (jarrayFromList [(jindex ((jget this.sHAPE_SEPARATOR)) (0)), (jindex ((jget this.sHAPE_SEPARATOR)) (1))]))
        pure ()


-- throws Exception
readInt :: (JavaObjectClass this_) => this_ -> JSONObject.JSONObject -> String -> IO (Int)
readInt object_ a1 a2 = jmethod object_ "readInt" (\() -> (readInt_impl (javaCast object_ :: SVGAsJSONSimpleLoader))) () a1 a2

readInt_super :: (JavaObjectClass this_) => this_ -> JSONObject.JSONObject -> String -> IO (Int)
readInt_super object_ a1 a2 = (readInt_impl (javaCast object_ :: SVGAsJSONSimpleLoader)) a1 a2

readInt_impl :: SVGAsJSONSimpleLoader -> JSONObject.JSONObject -> String -> IO (Int)
readInt_impl this anyType key = do
        value <- (JSONObject.get anyType key)
        when (value == javaNull) $ do
            javaThrow ((JavaException "IllegalArgumentException" ((jget this.eRROR_MISSING_KEY_PREFIX) ++ key)))
        (SVGAsJSONSimpleLoader.toInt this value key)


readInt_3 :: (JavaObjectClass this_) => this_ -> JSONObject.JSONObject -> String -> Int -> IO (Int)
readInt_3 object_ a1 a2 a3 = jmethod object_ "readInt_3" (\() -> (readInt_3_impl (javaCast object_ :: SVGAsJSONSimpleLoader))) () a1 a2 a3

readInt_3_super :: (JavaObjectClass this_) => this_ -> JSONObject.JSONObject -> String -> Int -> IO (Int)
readInt_3_super object_ a1 a2 a3 = (readInt_3_impl (javaCast object_ :: SVGAsJSONSimpleLoader)) a1 a2 a3

readInt_3_impl :: SVGAsJSONSimpleLoader -> JSONObject.JSONObject -> String -> Int -> IO (Int)
readInt_3_impl this anyType key defaultValue = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (hPutStrLn System.IO.stderr (Prelude.show e))
            ) $ do
            when (jio (JSONObject.has anyType key)) $ do
                value <- (JSONObject.get anyType key)
                javaReturn =<< (SVGAsJSONSimpleLoader.toInt this value key)
        pure (defaultValue)


toInt :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> String -> IO (Int)
toInt object_ a1 a2 = jmethod object_ "toInt" (\() -> (toInt_impl (javaCast object_ :: SVGAsJSONSimpleLoader))) () (jtoObject a1) a2

toInt_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> String -> IO (Int)
toInt_super object_ a1 a2 = (toInt_impl (javaCast object_ :: SVGAsJSONSimpleLoader)) (jtoObject a1) a2

toInt_impl :: SVGAsJSONSimpleLoader -> JavaObject -> String -> IO (Int)
toInt_impl this valueObject_ key = do
    let value = jtoObject valueObject_
    javaCatchReturn $ do
        when (javaInstanceOf value "Number") $ do
            javaReturn ((Prelude.fromInteger (jnumericInteger (Prelude.round (jio (doubleValue (((javaCast value :: Number.Number)))))))))
        when (javaInstanceOf value "String") $ do
            javaReturn ((Prelude.fromInteger (jnumericInteger (Prelude.round (Prelude.read (javaCast value :: String))))))
        javaThrow ((JavaException "IllegalArgumentException" ((jget this.eRROR_INVALID_NUMBER_PREFIX) ++ key)))


asObject :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> String -> IO (JSONObject.JSONObject)
asObject object_ a1 a2 = jmethod object_ "asObject" (\() -> (asObject_impl (javaCast object_ :: SVGAsJSONSimpleLoader))) () (jtoObject a1) a2

asObject_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> String -> IO (JSONObject.JSONObject)
asObject_super object_ a1 a2 = (asObject_impl (javaCast object_ :: SVGAsJSONSimpleLoader)) (jtoObject a1) a2

asObject_impl :: SVGAsJSONSimpleLoader -> JavaObject -> String -> IO (JSONObject.JSONObject)
asObject_impl this valueObject_ name = do
    let value = jtoObject valueObject_
    javaCatchReturn $ do
        when (javaInstanceOf value "JSONObject") $ do
            javaReturn ((javaCast value :: JSONObject.JSONObject))
        javaThrow ((JavaException "IllegalArgumentException" ((jget this.eRROR_EXPECTED_OBJECT_PREFIX) ++ name)))


toPoints :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (JavaArray (JavaArray (Int)))
toPoints object_ a1 = jmethod object_ "toPoints" (\() -> (toPoints_impl (javaCast object_ :: SVGAsJSONSimpleLoader))) () a1

toPoints_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (JavaArray (JavaArray (Int)))
toPoints_super object_ a1 = (toPoints_impl (javaCast object_ :: SVGAsJSONSimpleLoader)) a1

toPoints_impl :: SVGAsJSONSimpleLoader -> BasicArrayList.BasicArrayList -> IO (JavaArray (JavaArray (Int)))
toPoints_impl this pointVector = do
    javaCatchReturn $ do
        when ((jio (BasicArrayList.size pointVector)) == 0) $ do
            javaReturn ((jget this.eMPTY_POINTS))
        let points = (jnewArray2 ((jio (BasicArrayList.size pointVector))) (2) 0)
        forM_ [0 .. (jio (BasicArrayList.size pointVector)) - 1] $ \index -> javaIteration (pure ()) $ do
            let point = (javaCast (jio (BasicArrayList.get pointVector index)) :: JavaArray (Int))
            jsetIndex points (index) (point)
        pure (points)


-- throws Exception
main :: JavaArray (String) -> IO (())
main args = do
        let svgAsJson = ((((((((("{\"svg\": {\n" ++ "    \"rect\": {\n") ++ "        \"width\": 20,\n") ++ "        \"fill\": \"#008c00\",\n") ++ "        \"height\": 20\n") ++ "    },\n") ++ "    \"xmlns\": \"http://www.w3.org/2000/svg\",\n") ++ "    \"width\": 20,\n") ++ "    \"height\": 20\n") ++ "}}\n")
        points <- (SVGAsJSONSimpleLoader.load ((jio (SVGAsJSONSimpleLoader.getInstance))) svgAsJson)
        stringBuilder <- (StringMaker.new_)
        let size = (jlength points)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let size2 = (jlength (jindex points (index)))
            forM_ [0 .. size2 - 1] $ \index2 -> javaIteration (pure ()) $ do
                Control.Monad.void (StringMaker.appendint stringBuilder (Prelude.fromInteger (jnumericInteger (jindex ((jindex points (index))) (index2)))))
                Control.Monad.void (StringMaker.append stringBuilder (jget ((jio (CommonSeps.getInstance))).cOMMA))
        Control.Monad.void (putStrLn (javaToString (jio (StringMaker.toString stringBuilder))))
        pure ()


