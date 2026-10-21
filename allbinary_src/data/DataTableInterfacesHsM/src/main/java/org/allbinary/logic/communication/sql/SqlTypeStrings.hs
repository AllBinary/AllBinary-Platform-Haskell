{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.logic.communication.sql
module SqlTypeStrings where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data SqlTypeStrings = SqlTypeStrings
    { header_ :: JavaHeader
    , cHAR_COLUMN :: IORef (String)
    , iNT_COLUMN :: IORef (String)
    , mAX_SIZE :: IORef (String)
    , sIXTY_SIZE :: IORef (String)
    , nOT_NULL :: IORef (String)
    , oNE_SIZE :: IORef (String)
    , tWO_SIZE :: IORef (String)
    , tHREE_SIZE :: IORef (String)
    , sIX_SIZE :: IORef (String)
    , eLEVEN_SIZE :: IORef (String)
    , tWELVE_SIZE :: IORef (String)
    , oNE_KB_CHAR_COLUMN :: IORef (String)
    , mAX_CHAR_COLUMN :: IORef (String)
    , mAX_CHAR_COLUMN_NOT_NULL :: IORef (String)
    , sIXTY_CHAR_COLUMN_NOT_NULL :: IORef (String)
    , oNE_CHAR_COLUMN_NOT_NULL :: IORef (String)
    , sIX_CHAR_COLUMN_NOT_NULL :: IORef (String)
    , tWELVE_CHAR_COLUMN_NOT_NULL :: IORef (String)
    , tWO_INT_NOT_NULL :: IORef (String)
    , tHREE_INT_NOT_NULL :: IORef (String)
    , fOUR_INT_NOT_NULL :: IORef (String)
    , mAX_INT_NOT_NULL :: IORef (String)
    , mAX_INT_UNSIGNED :: IORef (String)
    , mAX_INT_UNSIGNED_NOT_NULL :: IORef (String)
    , mAX_BIG_INT_NOT_NULL :: IORef (String)
    , mAX_BIG_INT_UNSIGNED :: IORef (String)
    , mAX_BIG_INT_UNSIGNED_NOT_NULL :: IORef (String)
    , mAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL :: IORef (String)
    , lONG_BLOB :: IORef (String)
    , bLOB :: IORef (String)
    , bLOB_NOT_NULL :: IORef (String)
    }

instance JavaNull SqlTypeStrings where
    javaNull = javaNullRecord "SqlTypeStrings"

instance JavaEquals SqlTypeStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SqlTypeStrings where
    (==) = jrecordEquals

instance JavaObjectClass SqlTypeStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SqlTypeStrings
newRecord_ = do
    header_ <- newJavaHeader
    cHAR_COLUMN <- newIORef ""
    iNT_COLUMN <- newIORef ""
    mAX_SIZE <- newIORef ""
    sIXTY_SIZE <- newIORef ""
    nOT_NULL <- newIORef ""
    oNE_SIZE <- newIORef ""
    tWO_SIZE <- newIORef ""
    tHREE_SIZE <- newIORef ""
    sIX_SIZE <- newIORef ""
    eLEVEN_SIZE <- newIORef ""
    tWELVE_SIZE <- newIORef ""
    oNE_KB_CHAR_COLUMN <- newIORef ""
    mAX_CHAR_COLUMN <- newIORef ""
    mAX_CHAR_COLUMN_NOT_NULL <- newIORef ""
    sIXTY_CHAR_COLUMN_NOT_NULL <- newIORef ""
    oNE_CHAR_COLUMN_NOT_NULL <- newIORef ""
    sIX_CHAR_COLUMN_NOT_NULL <- newIORef ""
    tWELVE_CHAR_COLUMN_NOT_NULL <- newIORef ""
    tWO_INT_NOT_NULL <- newIORef ""
    tHREE_INT_NOT_NULL <- newIORef ""
    fOUR_INT_NOT_NULL <- newIORef ""
    mAX_INT_NOT_NULL <- newIORef ""
    mAX_INT_UNSIGNED <- newIORef ""
    mAX_INT_UNSIGNED_NOT_NULL <- newIORef ""
    mAX_BIG_INT_NOT_NULL <- newIORef ""
    mAX_BIG_INT_UNSIGNED <- newIORef ""
    mAX_BIG_INT_UNSIGNED_NOT_NULL <- newIORef ""
    mAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL <- newIORef ""
    lONG_BLOB <- newIORef ""
    bLOB <- newIORef ""
    bLOB_NOT_NULL <- newIORef ""
    let this = SqlTypeStrings header_ cHAR_COLUMN iNT_COLUMN mAX_SIZE sIXTY_SIZE nOT_NULL oNE_SIZE tWO_SIZE tHREE_SIZE sIX_SIZE eLEVEN_SIZE tWELVE_SIZE oNE_KB_CHAR_COLUMN mAX_CHAR_COLUMN mAX_CHAR_COLUMN_NOT_NULL sIXTY_CHAR_COLUMN_NOT_NULL oNE_CHAR_COLUMN_NOT_NULL sIX_CHAR_COLUMN_NOT_NULL tWELVE_CHAR_COLUMN_NOT_NULL tWO_INT_NOT_NULL tHREE_INT_NOT_NULL fOUR_INT_NOT_NULL mAX_INT_NOT_NULL mAX_INT_UNSIGNED mAX_INT_UNSIGNED_NOT_NULL mAX_BIG_INT_NOT_NULL mAX_BIG_INT_UNSIGNED mAX_BIG_INT_UNSIGNED_NOT_NULL mAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL lONG_BLOB bLOB bLOB_NOT_NULL
    jregisterLevel header_ this
    pure this

initFields_ :: SqlTypeStrings -> IO ()
initFields_ this = do
    jset this.cHAR_COLUMN ("VARCHAR")
    jset this.iNT_COLUMN ("VARCHAR")
    jset this.mAX_SIZE ("(255)")
    jset this.sIXTY_SIZE ("(60)")
    jset this.nOT_NULL ("NOT NULL")
    jset this.oNE_SIZE ("(1)")
    jset this.tWO_SIZE ("(2)")
    jset this.tHREE_SIZE ("(3)")
    jset this.sIX_SIZE ("(6)")
    jset this.eLEVEN_SIZE ("(11)")
    jset this.tWELVE_SIZE ("(12)")
    jset this.oNE_KB_CHAR_COLUMN =<< (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) (jget this.cHAR_COLUMN)))) "(1024)"))) (jget ((jio (CommonSeps.getInstance))).cOMMA_SEP)))))
    jset this.mAX_CHAR_COLUMN =<< (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) (jget this.cHAR_COLUMN)))) (jget this.mAX_SIZE)))) (jget ((jio (CommonSeps.getInstance))).cOMMA_SEP)))))
    jset this.mAX_CHAR_COLUMN_NOT_NULL =<< (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) (jget this.cHAR_COLUMN)))) (jget this.mAX_SIZE)))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) (jget this.nOT_NULL)))) (jget ((jio (CommonSeps.getInstance))).cOMMA_SEP)))))
    jset this.sIXTY_CHAR_COLUMN_NOT_NULL =<< (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) (jget this.cHAR_COLUMN)))) (jget this.sIXTY_SIZE)))) (jget this.nOT_NULL)))) (jget ((jio (CommonSeps.getInstance))).cOMMA_SEP)))))
    jset this.oNE_CHAR_COLUMN_NOT_NULL =<< (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) (jget this.cHAR_COLUMN)))) (jget this.oNE_SIZE)))) (jget this.nOT_NULL)))) (jget ((jio (CommonSeps.getInstance))).cOMMA_SEP)))))
    jset this.sIX_CHAR_COLUMN_NOT_NULL =<< (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) (jget this.cHAR_COLUMN)))) (jget this.sIX_SIZE)))) (jget this.nOT_NULL)))) (jget ((jio (CommonSeps.getInstance))).cOMMA_SEP)))))
    jset this.tWELVE_CHAR_COLUMN_NOT_NULL =<< (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) (jget this.cHAR_COLUMN)))) (jget (this).tWELVE_SIZE)))) (jget this.nOT_NULL)))) (jget ((jio (CommonSeps.getInstance))).cOMMA_SEP)))))
    jset this.tWO_INT_NOT_NULL (" INT(2) NOT NULL, ")
    jset this.tHREE_INT_NOT_NULL (" INT(3) NOT NULL, ")
    jset this.fOUR_INT_NOT_NULL (" INT(4) NOT NULL, ")
    jset this.mAX_INT_NOT_NULL (" INT(11) NOT NULL, ")
    jset this.mAX_INT_UNSIGNED (" INT(11) UNSIGNED, ")
    jset this.mAX_INT_UNSIGNED_NOT_NULL (" INT(11) UNSIGNED NOT NULL, ")
    jset this.mAX_BIG_INT_NOT_NULL (" BIGINT(19) NOT NULL, ")
    jset this.mAX_BIG_INT_UNSIGNED (" BIGINT(19) UNSIGNED, ")
    jset this.mAX_BIG_INT_UNSIGNED_NOT_NULL (" BIGINT(19) UNSIGNED NOT NULL, ")
    jset this.mAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL (" BIGINT(19) UNSIGNED AUTO_INCREMENT NOT NULL,")
    jset this.lONG_BLOB (" LONGBLOB, ")
    jset this.bLOB (" BLOB, ")
    jset this.bLOB_NOT_NULL (" BLOB NOT NULL, ")
    pure ()

new_ :: IO SqlTypeStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SqlTypeStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (SqlTypeStrings)
getInstance = do
        pure (SqlTypeStrings.instance_)


