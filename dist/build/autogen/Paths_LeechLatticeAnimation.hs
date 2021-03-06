module Paths_LeechLatticeAnimation (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/michaelklein/Haskell/LeechLatticeAnimation/.cabal-sandbox/bin"
libdir     = "/Users/michaelklein/Haskell/LeechLatticeAnimation/.cabal-sandbox/lib/x86_64-osx-ghc-7.10.2/LeechLatticeAnimation-0.1.0.0-LJSkX8mjcuDKfFngoO9yQu"
datadir    = "/Users/michaelklein/Haskell/LeechLatticeAnimation/.cabal-sandbox/share/x86_64-osx-ghc-7.10.2/LeechLatticeAnimation-0.1.0.0"
libexecdir = "/Users/michaelklein/Haskell/LeechLatticeAnimation/.cabal-sandbox/libexec"
sysconfdir = "/Users/michaelklein/Haskell/LeechLatticeAnimation/.cabal-sandbox/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "LeechLatticeAnimation_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "LeechLatticeAnimation_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "LeechLatticeAnimation_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "LeechLatticeAnimation_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "LeechLatticeAnimation_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
