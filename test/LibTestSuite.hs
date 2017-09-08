module LibTestSuite where

import Lib
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)

libTestSuite :: TestTree
libTestSuite = testGroup "Lib" [someFuncTestSuite]

-- First problem test suite
someFuncTestSuite :: TestTree
someFuncTestSuite = testGroup "someFunc" [someFuncTest]

someFuncTest = testCase "someFunc" $ assertEqual [] "someFunc" someFunc
