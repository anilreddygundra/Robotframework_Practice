using System;
using OpenQA.Selenium;
using OpenQA.Selenium.Appium;
using OpenQA.Selenium.Appium.Android;
using OpenQA.Selenium.Appium.Enums;
using OpenQA.Selenium.Remote;


namespace appiumclient
{
    public class GeneralStores
    {
        private AndroidDriver<AndroidElement> _driver;
        [Test()]
        public void TestCase()
        {

            //var capabilities = new DesiredCapabilities();
            var driverOption = new AppiumOptions();
            var apppath = @"/Users/mathew.daion/Downloads/General-Store.apk";

            driverOption.AddAdditionalCapability(MobileCapabilityType.PlatformName, "android");
            driverOption.AddAdditionalCapability(MobileCapabilityType.DeviceName, "Pixel");
            //capabilities.SetCapability(MobileCapabilityType.AutomationName, "UIAutomator2");
            //capabilities.SetCapability(MobileCapabilityType.PlatformVersion, "9");
            //capabilities.SetCapability(MobileCapabilityType.showChromedriverLog, true,);
            driverOption.AddAdditionalCapability(MobileCapabilityType.App, apppath);
            driverOption.AddAdditionalCapability("appActivity", "com.androidsample.generalstore.SplashActivity");
            driverOption.AddAdditionalCapability("chromedriverExecutable", @"/Users/manoj.boya/Downloads/chromedriver");

            _driver = new AndroidDriver<AndroidElement>(new Uri("http://localhost:4723/wd/hub"), driverOption);

            Thread.Sleep(1000);

            _driver.FindElementById("com.androidsample.generalstore:id/nameField").SendKeys("Mnj");
            _driver.FindElementById("com.androidsample.generalstore:id/radioMale").Click();
            _driver.FindElementById("com.androidsample.generalstore:id/spinnerCountry").Click();
            //vertical scrolling
            //_driver.ExecuteScript("mobile:scroll", new Dictionary<string, string> { { "direction", "down" } });
            //AppiumWebElement element = (AppiumWebElement)_driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[6]");
            AppiumWebElement element = (AppiumWebElement)_driver.FindElementByAndroidUIAutomator("new UiScrollable(new UiSelector()).scrollIntoView(text(\"Australia\"));");
            //Point location = element.LocationOnScreenOnceScrolledIntoView;
            IWebElement element1 = _driver.FindElement(By.XPath("//*[@text='Australia']"));
            element1.Click();

            _driver.FindElementById("com.androidsample.generalstore:id/btnLetsShop").Click();
            _driver.FindElement(By.XPath("//*[@text='ADD TO CART']")).Click();

            //_driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[6]").Click();

            _driver.Quit();
        }
    }

}

