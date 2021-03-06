/**
 * Copyright IBM Corporation 2017
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

#if os(OSX)
    import XCTest
    
    class VerifyLinuxTestCount: XCTestCase {
        func testVerifyLinuxTestCount() {
            var linuxCount: Int = 0
            var darwinCount: Int = 0
            
            linuxCount = TestAlias.allTests.count
            darwinCount = Int(TestAlias.defaultTestSuite().testCaseCount)
            XCTAssertEqual(linuxCount, darwinCount, "\(darwinCount - linuxCount) tests are missing from TestAlias.allTests")

            linuxCount = TestInsert.allTests.count
            darwinCount = Int(TestInsert.defaultTestSuite().testCaseCount)
            XCTAssertEqual(linuxCount, darwinCount, "\(darwinCount - linuxCount) tests are missing from TestInsert.allTests")

            linuxCount = TestJoin.allTests.count
            darwinCount = Int(TestJoin.defaultTestSuite().testCaseCount)
            XCTAssertEqual(linuxCount, darwinCount, "\(darwinCount - linuxCount) tests are missing from TestJoin.allTests")

            linuxCount = TestParameters.allTests.count
            darwinCount = Int(TestParameters.defaultTestSuite().testCaseCount)
            XCTAssertEqual(linuxCount, darwinCount, "\(darwinCount - linuxCount) tests are missing from TestParameters.allTests")

            linuxCount = TestSchema.allTests.count
            darwinCount = Int(TestSchema.defaultTestSuite().testCaseCount)
            XCTAssertEqual(linuxCount, darwinCount, "\(darwinCount - linuxCount) tests are missing from TestSchema.allTests")

            linuxCount = TestSelect.allTests.count
            darwinCount = Int(TestSelect.defaultTestSuite().testCaseCount)
            XCTAssertEqual(linuxCount, darwinCount, "\(darwinCount - linuxCount) tests are missing from TestSelect.allTests")

            linuxCount = TestSubquery.allTests.count
            darwinCount = Int(TestSubquery.defaultTestSuite().testCaseCount)
            XCTAssertEqual(linuxCount, darwinCount, "\(darwinCount - linuxCount) tests are missing from TestSubquery.allTests")

            linuxCount = TestTransaction.allTests.count
            darwinCount = Int(TestTransaction.defaultTestSuite().testCaseCount)
            XCTAssertEqual(linuxCount, darwinCount, "\(darwinCount - linuxCount) tests are missing from TestTransaction.allTests")

            linuxCount = TestTypes.allTests.count
            darwinCount = Int(TestTypes.defaultTestSuite().testCaseCount)
            XCTAssertEqual(linuxCount, darwinCount, "\(darwinCount - linuxCount) tests are missing from TestTypes.allTests")

            linuxCount = TestUpdate.allTests.count
            darwinCount = Int(TestUpdate.defaultTestSuite().testCaseCount)
            XCTAssertEqual(linuxCount, darwinCount, "\(darwinCount - linuxCount) tests are missing from TestUpdate.allTests")

            linuxCount = TestWith.allTests.count
            darwinCount = Int(TestWith.defaultTestSuite().testCaseCount)
            XCTAssertEqual(linuxCount, darwinCount, "\(darwinCount - linuxCount) tests are missing from TestWith.allTests")
        }
    }
#endif
