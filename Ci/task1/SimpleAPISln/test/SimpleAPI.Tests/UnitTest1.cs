using Sysytem;
using Xunit;
using SimpleAPI.Controllers;

public class UnitTest1
{

	ValuesController controller = new ValuesController();
	[Fact]
	public void GetReturnsCorrectNumber()
	{
	  var returnValue = controller.Get(1);
	  Assert.Equal("Les Jackson", returnValue.Value);
	}
    [Fact]
    public void Test1()
    {

    }
}
