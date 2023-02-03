using OpenQA.Selenium.Appium;
using OpenQA.Selenium.Appium.Android;
using OpenQA.Selenium.Appium.Enums;
using OpenQA.Selenium.Appium.Service;

namespace appiumclient;

public class Tests
{
    private AppiumDriver<AndroidElement> _driver;


    [SetUp]
    public void Setup()

    {
        //AppiumLocalService appiumLocalService = new AppiumServiceBuilder().Build();
        //if (!appiumLocalService.IsRunning)
        //    appiumLocalService.Start();

        //var appPath = @"Users/mathew.daion/Downloads/apkinfo.apk";

        var driver = new AppiumOptions();

        driver.AddAdditionalCapability("platformName", "Android");
        driver.AddAdditionalCapability("deviceName", "pixel2");
        driver.AddAdditionalCapability("appPackage","com.google.android.calculator");
        driver.AddAdditionalCapability("appActivity","com.android.calculator2.Calculator");

        //driver.AddAdditionalCapability("chromedriverExecutable", @"Users/mathew.daion/Documents/chromedriver_mac_arm64/chromedriver");


        _driver = new AndroidDriver<AndroidElement>(new Uri("http://localhost:4723/wd/hub"), driver);

        Thread.Sleep(5000);



        //_driver.FindElementById("android:id/button1").Click();
        _driver.FindElementById("com.google.android.calculator:id/digit_9").Click();
        _driver.FindElementById("com.google.android.calculator:id/digit_4").Click();
        _driver.FindElementById("com.google.android.calculator:id/digit_3").Click();
        _driver.FindElementById("com.google.android.calculator:id/op_add").Click();
        _driver.FindElementById("com.google.android.calculator:id/digit_2").Click();
        _driver.FindElementById("com.google.android.calculator:id/digit_5").Click();
        _driver.FindElementById("com.google.android.calculator:id/digit_3").Click();
        _driver.FindElementById("com.google.android.calculator:id/eq").Click();



        Assert.IsNotNull(_driver.Context);


        _driver.Quit();


    }

    [Test]
    public void Test1()
    {
        Assert.Pass();
    }
}
