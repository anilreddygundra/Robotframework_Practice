using Newtonsoft.Json.Linq;
using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Appium;
using OpenQA.Selenium.Appium.Android;
using OpenQA.Selenium.Appium.Enums;
using OpenQA.Selenium.Appium.Interfaces;
using OpenQA.Selenium.Appium.Service;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Interactions;
using System;
using System.Drawing;
using System.Xml.Linq;

namespace Application
{
    [TestFixture()]
    public class browser1
    {
        private AndroidDriver<AndroidElement> driver;
        [Test()]
        public void TestCase()
        {
            
            var _driver = new AppiumOptions();
            _driver.AddAdditionalCapability(MobileCapabilityType.PlatformName, MobilePlatform.Android);
            _driver.AddAdditionalCapability(MobileCapabilityType.DeviceName, "Pixel");
            _driver.AddAdditionalCapability(MobileCapabilityType.PlatformVersion, "13.0");
            _driver.AddAdditionalCapability(AndroidMobileCapabilityType.AppPackage, "com.google.android.gm");
            _driver.AddAdditionalCapability(AndroidMobileCapabilityType.AppActivity, "com.google.android.gm.ConversationListActivityGmail");
            _driver.AddAdditionalCapability("chromedriverExecutable", @"/Users/manoj.boya/Downloads/chromedriver");

            Thread.Sleep(1000);
            //AppiumDriver<AndroidElement> driver = new AndroidDriver<AndroidElement>(new Uri(""), _driver);

            driver = new AndroidDriver<AndroidElement>(new Uri("http://localhost:4723/wd/hub"), _driver);
            // Create a new Appium driver using the desired capabilities
            driver.FindElementById("com.android.permissioncontroller:id/permission_allow_button").Click();
            Thread.Sleep(1000);
            driver.FindElementById("com.google.android.gm:id/welcome_tour_got_it").Click();
            Thread.Sleep(2000);
            driver.FindElementById("com.google.android.gm:id/action_done").Click();
            driver.Manage().Timeouts().ImplicitWait = TimeSpan.FromSeconds(10);
            driver.FindElementById("com.google.android.gm:id/dismiss_button").Click();
            Thread.Sleep(1000);
            driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.view.ViewGroup[2]").Click();
            driver.FindElementByXPath("(//android.widget.ImageView[@content-desc=\"More options\"])[2]").Click();
            driver.FindElementByXPath("//*[@text='Mark not important']").Click();
            driver.FindElementByXPath("//*[@text='Undo']").Click();

            driver.Quit();



        }

    }
}