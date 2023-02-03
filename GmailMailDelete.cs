using System;
using OpenQA.Selenium;
using OpenQA.Selenium.Appium;
using OpenQA.Selenium.Appium.Android;
using OpenQA.Selenium.Appium.Enums;

namespace appiumclient
{
    public class GmailScreenshot
    {

        private AndroidDriver<AndroidElement> driver;
        [Test()]
        public void TestCase()
        {
            var _driver = new AppiumOptions();
            _driver.AddAdditionalCapability(MobileCapabilityType.PlatformName, MobilePlatform.Android);
            _driver.AddAdditionalCapability(MobileCapabilityType.DeviceName, "Pixel 4");
            _driver.AddAdditionalCapability(MobileCapabilityType.PlatformVersion, "12.0");
            //_driver.AddAdditionalCapability(MobileCapabilityType.App, @"/Users/mathew.daion/Downloads/firefox.apk");
            //driver.AddAdditionalCapability("appActivity", "com.androidsample.generalstore.SplashActivity");
            //driver.AddAdditionalCapability(AndroidMobileCapabilityType.AppActivity, "org.chromium.chrome.browser.document.ChromeLauncherActivity");
            _driver.AddAdditionalCapability(AndroidMobileCapabilityType.AppPackage, "com.google.android.gm");
            _driver.AddAdditionalCapability(AndroidMobileCapabilityType.AppActivity, "com.google.android.gm.ConversationListActivityGmail");
            //driver.AddAdditionalCapability(ChromeOptions.Capability, JObject.Parse("{'w3c':false}"));
            _driver.AddAdditionalCapability("chromedriverExecutable", @"Users/mathew.daion/Downloads/chromedriver");




            driver = new AndroidDriver<AndroidElement>(new Uri("http://localhost:4723/wd/hub"), _driver);


            driver.Manage().Timeouts().ImplicitWait = TimeSpan.FromSeconds(60);

            Thread.Sleep(5000);

            AndroidElement signInButton = driver.FindElementById("com.google.android.gm:id/welcome_tour_got_it");
            signInButton.Click();

            Thread.Sleep(5000);
            driver.FindElementById("com.google.android.gm:id/avatar");
            AndroidElement TakemeButton = driver.FindElementById("com.google.android.gm:id/action_done");
            TakemeButton.Click();
            Thread.Sleep(1000);

           
            AndroidElement DismissButton = driver.FindElementById("com.google.android.gm:id/dismiss_button");
            DismissButton.Click();
            Thread.Sleep(1000);
            
           
            driver.FindElementByXPath("//android.widget.ImageButton[@content-desc=\"Open navigation drawer\"]").Click();
            driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[9]/android.widget.LinearLayout/android.widget.ImageView").Click();
            driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.widget.FrameLayout[2]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.view.ViewGroup[1]").Click();
            driver.FindElementById("com.google.android.gm:id/delete").Click();

            driver.Close();



        }
    }

}

//Screenshot screenshot = ((ITakesScreenshot)driver).GetScreenshot();
//screenshot.SaveAsFile("screenshot.png", ScreenshotImageFormat.Png);