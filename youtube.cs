using System;
using OpenQA.Selenium.Appium;
using OpenQA.Selenium.Appium.Android;
using OpenQA.Selenium.Appium.Enums;
using OpenQA.Selenium.Remote;

namespace appiumclient
{
	public class Youtube
	{
        private AndroidDriver<AndroidElement> driver;
        [Test()]
        public void TestCase()
        {
            var _driver = new AppiumOptions();
            _driver.AddAdditionalCapability(MobileCapabilityType.PlatformName, MobilePlatform.Android);
            _driver.AddAdditionalCapability(MobileCapabilityType.DeviceName, "Pixel 4");
            //_driver.AddAdditionalCapability(MobileCapabilityType.PlatformVersion, "12.0");
            _driver.AddAdditionalCapability(AndroidMobileCapabilityType.AppPackage, "com.google.android.youtube");
            _driver.AddAdditionalCapability(AndroidMobileCapabilityType.AppActivity, "com.google.android.apps.youtube.app.WatchWhileActivity");
            _driver.AddAdditionalCapability("chromedriverExecutable", @"Users/mathew.daion/Downloads/chromedriver");




            driver = new AndroidDriver<AndroidElement>(new Uri("http://localhost:4723/wd/hub"), _driver);
            int DefaultWait = driver.Manage().Timeouts().ImplicitWait.Seconds;
            driver.Manage().Timeouts().ImplicitWait = TimeSpan.FromSeconds(60);

            

            AndroidElement SearchButton = driver.FindElementByAccessibilityId("Search");
            //AndroidElement SearchButton = driver.FindElementByXPath("//android.widget.ImageView[@content-desc=\"Search\"]");
            SearchButton.Click();
            AndroidElement SendSearch = driver.FindElementById("com.google.android.youtube:id/search_edit_text");
            SendSearch.SendKeys("another love");
            AndroidElement ClickText = driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[1]/android.widget.TextView");
            ClickText.Click();


            //AppiumWebElement Scroll = (AppiumWebElement)driver.FindElementByAndroidUIAutomator("new UiScrollable(new UiSelector()).scrollIntoView(text(\"Halsey - Without Me (Lyrics)\"));");
            AndroidElement ClickVideo = driver.FindElementByXPath("//android.view.ViewGroup[@content-desc=\"Tom Odell - Another Love (Official Video) – 4 minutes, 8 seconds – Go to channel – TomOdellVEVO - 63 crore views - 10 years ago – play video\"]");
            ClickVideo.Click();
            AndroidElement ClickSkip = driver.FindElementByXPath("//android.view.ViewGroup[@content-desc=\"Expand Mini Player\"]/android.widget.RelativeLayout[2]/android.widget.LinearLayout[2]/android.widget.FrameLayout");
            ClickSkip.Click();


            driver.Quit();





        }
    }
}

