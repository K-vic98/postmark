import Testing

struct SmokeTests {
    @Test func testChainRuns() {
        #expect(1 + 1 == 2)
    }
}
