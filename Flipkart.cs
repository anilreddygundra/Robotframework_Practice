using System;
using OpenQA.Selenium.Appium;
using OpenQA.Selenium.Appium.Android;
using OpenQA.Selenium.Appium.Enums;
using OpenQA.Selenium.Support.UI;

namespace appiumclient
{
	public class Flipkart
	{
        private AndroidDriver<AndroidElement> driver;
        [Test()]
        public void TestCase()
        {
            var _driver = new AppiumOptions();
            _driver.AddAdditionalCapability(MobileCapabilityType.PlatformName, MobilePlatform.Android);
            _driver.AddAdditionalCapability(MobileCapabilityType.DeviceName, "Pixel 4");
            _driver.AddAdditionalCapability(MobileCapabilityType.PlatformVersion, "12.0");
            _driver.AddAdditionalCapability(AndroidMobileCapabilityType.AppPackage, "com.flipkart.android");
            _driver.AddAdditionalCapability(AndroidMobileCapabilityType.AppActivity, "com.flipkart.android.SplashActivity");
            _driver.AddAdditionalCapability("chromedriverExecutable", @"Users/mathew.daion/Downloads/chromedriver");




            driver = new AndroidDriver<AndroidElement>(new Uri("http://localhost:4723/wd/hub"), _driver);
            int DefaultWait = driver.Manage().Timeouts().ImplicitWait.Seconds;
            driver.Manage().Timeouts().ImplicitWait = TimeSpan.FromSeconds(60);

            

            AndroidElement LangEng = driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[4]/android.widget.RelativeLayout");
            LangEng.Click();
            AndroidElement ContinueButton = driver.FindElementById("com.flipkart.android:id/select_btn");
            ContinueButton.Click();
            AndroidElement PopUpCancel = driver.FindElementById("com.google.android.gms:id/cancel");
            PopUpCancel.Click();
            AndroidElement CrossButton = driver.FindElementById("com.flipkart.android:id/custom_back_icon");
            CrossButton.Click();
            AndroidElement SearchBar = driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView");
            SearchBar.Click();
            AndroidElement SearchBar1 = driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.EditText");
            SearchBar1.SendKeys("poco f4");
            AndroidElement ProductSearch = driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[1]");
            ProductSearch.Click();
            AndroidElement NotNowButton = driver.FindElementById("com.flipkart.android:id/not_now_button");
            NotNowButton.Click();
            AndroidElement ProductClick = driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]");
            ProductClick.Click();
            driver.Manage().Timeouts().ImplicitWait = TimeSpan.FromSeconds(DefaultWait);
            Thread.Sleep(5000);
            AndroidElement AddToCart = driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup");
            AddToCart.Click();
            Thread.Sleep(1000);
            AndroidElement GoToCart = driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView");
            GoToCart.Click();
            driver.Manage().Timeouts().ImplicitWait = TimeSpan.FromSeconds(60);
            AndroidElement RemoveButton = driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[6]/android.view.ViewGroup");
            RemoveButton.Click();
            //AndroidElement RemovePop = driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[6]/android.view.ViewGroup");
            //RemovePop.Click();


            driver.Quit();

        }
    }
}

