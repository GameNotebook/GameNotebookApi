using FluentAssertions;
using Xunit;

namespace GameNotebookApi.Business.Tests
{
    public class SampleTest
    {
        [Fact]
        public void Test()
        {
            var value = true;

            value
                .Should().BeTrue();
        }
    }
}
