import LibTestSuite
import Test.Tasty (TestTree, defaultMain, testGroup)

main = defaultMain tests

tests :: TestTree
tests = testGroup "Fractalidi tests" [libTestSuite]
