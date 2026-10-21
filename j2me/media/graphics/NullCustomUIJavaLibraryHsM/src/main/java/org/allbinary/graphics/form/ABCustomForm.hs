{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
module ABCustomForm (module ABCustomForm, module CustomScreen) where

import CustomScreen hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getAllitems, getAllitems_super, getAllitems_impl, size, size_super, size_impl, setSelectedIndex, setSelectedIndex_super, setSelectedIndex_impl, getSelectedIndex, getSelectedIndex_super, getSelectedIndex_impl, deleteAll, deleteAll_super, deleteAll_impl, delete, delete_super, delete_impl, append, append_super, append_impl, insert, insert_super, insert_impl, set, set_super, set_impl, get, get_super, get_impl, getWidth, getWidth_super, getWidth_impl, paint, paint_super, paint_impl, getTitle, getTitle_super, getTitle_impl, logUtil, commonStrings)
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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified CustomScreen

data ABCustomForm = ABCustomForm
    { header_ :: JavaHeader
    , base :: CustomScreen.CustomScreen
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull ABCustomForm where
    javaNull = javaNullRecord "ABCustomForm"

instance JavaEquals ABCustomForm where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABCustomForm where
    (==) = jrecordEquals

instance JavaObjectClass ABCustomForm where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ABCustomForm
newRecord_ = do
    base <- CustomScreen.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = ABCustomForm header_ base logUtil commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "getAllitems" (\() -> getAllitems_impl this)
    jregisterMethod header_ "size" (\() -> size_impl this)
    jregisterMethod header_ "setSelectedIndex" (\() -> setSelectedIndex_impl this)
    jregisterMethod header_ "getSelectedIndex" (\() -> getSelectedIndex_impl this)
    jregisterMethod header_ "deleteAll" (\() -> deleteAll_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "append" (\() -> append_impl this)
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "getTitle" (\() -> getTitle_impl this)
    pure this

initFields_ :: ABCustomForm -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_4 :: String -> JavaArray (ABCustomItem.ABCustomItem) -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ABCustomForm
new_4 title items backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_4 this title items backgroundBasicColor foregroundBasicColor
    pure this

init_4 :: ABCustomForm -> String -> JavaArray (ABCustomItem.ABCustomItem) -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_4 this title items backgroundBasicColor foregroundBasicColor = do
        CustomScreen.init_ this.base
        initFields_ this
        pure ()
        pure ()


getAllitems :: (JavaObjectClass this_) => this_ -> IO (JavaArray (ABCustomItem.ABCustomItem))
getAllitems object_ = jmethod object_ "getAllitems" (\() -> (getAllitems_impl (javaCast object_ :: ABCustomForm))) ()

getAllitems_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (ABCustomItem.ABCustomItem))
getAllitems_super object_ = (getAllitems_impl (javaCast object_ :: ABCustomForm))

getAllitems_impl :: ABCustomForm -> IO (JavaArray (ABCustomItem.ABCustomItem))
getAllitems_impl this = do
        pure ((jnewArray (0) javaNull))


size :: (JavaObjectClass this_) => this_ -> IO (Int)
size object_ = jmethod object_ "size" (\() -> (size_impl (javaCast object_ :: ABCustomForm))) ()

size_super :: (JavaObjectClass this_) => this_ -> IO (Int)
size_super object_ = (size_impl (javaCast object_ :: ABCustomForm))

size_impl :: ABCustomForm -> IO (Int)
size_impl this = do
        pure (0)


setSelectedIndex :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setSelectedIndex object_ a1 = jmethod object_ "setSelectedIndex" (\() -> (setSelectedIndex_impl (javaCast object_ :: ABCustomForm))) () a1

setSelectedIndex_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setSelectedIndex_super object_ a1 = (setSelectedIndex_impl (javaCast object_ :: ABCustomForm)) a1

setSelectedIndex_impl :: ABCustomForm -> Int -> IO (())
setSelectedIndex_impl this index = do
        pure ()


getSelectedIndex :: (JavaObjectClass this_) => this_ -> IO (Int)
getSelectedIndex object_ = jmethod object_ "getSelectedIndex" (\() -> (getSelectedIndex_impl (javaCast object_ :: ABCustomForm))) ()

getSelectedIndex_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSelectedIndex_super object_ = (getSelectedIndex_impl (javaCast object_ :: ABCustomForm))

getSelectedIndex_impl :: ABCustomForm -> IO (Int)
getSelectedIndex_impl this = do
        pure (0)


deleteAll :: (JavaObjectClass this_) => this_ -> IO (())
deleteAll object_ = jmethod object_ "deleteAll" (\() -> (deleteAll_impl (javaCast object_ :: ABCustomForm))) ()

deleteAll_super :: (JavaObjectClass this_) => this_ -> IO (())
deleteAll_super object_ = (deleteAll_impl (javaCast object_ :: ABCustomForm))

deleteAll_impl :: ABCustomForm -> IO (())
deleteAll_impl this = do
        pure ()


delete :: (JavaObjectClass this_) => this_ -> Int -> IO (())
delete object_ a1 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: ABCustomForm))) () a1

delete_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
delete_super object_ a1 = (delete_impl (javaCast object_ :: ABCustomForm)) a1

delete_impl :: ABCustomForm -> Int -> IO (())
delete_impl this itemNum = do
        pure ()


append :: (JavaObjectClass this_) => this_ -> ABCustomItem.ABCustomItem -> IO (Int)
append object_ a1 = jmethod object_ "append" (\() -> (append_impl (javaCast object_ :: ABCustomForm))) () a1

append_super :: (JavaObjectClass this_) => this_ -> ABCustomItem.ABCustomItem -> IO (Int)
append_super object_ a1 = (append_impl (javaCast object_ :: ABCustomForm)) a1

append_impl :: ABCustomForm -> ABCustomItem.ABCustomItem -> IO (Int)
append_impl this item = do
        pure ((Prelude.negate 1))


insert :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> IO (())
insert object_ a1 a2 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: ABCustomForm))) () a1 a2

insert_super :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> IO (())
insert_super object_ a1 a2 = (insert_impl (javaCast object_ :: ABCustomForm)) a1 a2

insert_impl :: ABCustomForm -> Int -> ABCustomItem.ABCustomItem -> IO (())
insert_impl this itemNum item = do
        pure ()


set :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> IO (())
set object_ a1 a2 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: ABCustomForm))) () a1 a2

set_super :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> IO (())
set_super object_ a1 a2 = (set_impl (javaCast object_ :: ABCustomForm)) a1 a2

set_impl :: ABCustomForm -> Int -> ABCustomItem.ABCustomItem -> IO (())
set_impl this itemNum item = do
        pure ()


get :: (JavaObjectClass this_) => this_ -> Int -> IO (ABCustomItem.ABCustomItem)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: ABCustomForm))) () a1

get_super :: (JavaObjectClass this_) => this_ -> Int -> IO (ABCustomItem.ABCustomItem)
get_super object_ a1 = (get_impl (javaCast object_ :: ABCustomForm)) a1

get_impl :: ABCustomForm -> Int -> IO (ABCustomItem.ABCustomItem)
get_impl this itemNum = do
        (ABCustomItem.getNullInstance)


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: ABCustomForm))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: ABCustomForm))

getWidth_impl :: ABCustomForm -> IO (Int)
getWidth_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: ABCustomForm))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: ABCustomForm)) a1

paint_impl :: ABCustomForm -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        pure ()


getTitle :: (JavaObjectClass this_) => this_ -> IO (String)
getTitle object_ = jmethod object_ "getTitle" (\() -> (getTitle_impl (javaCast object_ :: ABCustomForm))) ()

getTitle_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTitle_super object_ = (getTitle_impl (javaCast object_ :: ABCustomForm))

getTitle_impl :: ABCustomForm -> IO (String)
getTitle_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


