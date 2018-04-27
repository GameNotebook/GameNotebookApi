using FluentAssertions;
using Xunit;

namespace GameNotebookApi.Web.Tests
{
    public class SampleTest
    {
        [Fact]
        public void ItShouldPass()
        {
            var value = true;

            value
                .Should().BeTrue();
        }
    }
}
