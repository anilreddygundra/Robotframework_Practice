using System;
using System.IO;
using OpenQA.Selenium;
using OpenQA.Selenium.Appium;
using OpenQA.Selenium.Appium.Android;
using OpenQA.Selenium.Appium.Enums;

namespace appiumclient
{
    public class Hybrid
    {


        private AndroidDriver<AndroidElement> driver;
        [Test()]
        public void TestCase()
        {
            var _driver = new AppiumOptions();
            _driver.AddAdditionalCapability(MobileCapabilityType.PlatformName, MobilePlatform.Android);
            _driver.AddAdditionalCapability(MobileCapabilityType.DeviceName, "Pixel 4");
            //_driver.AddAdditionalCapability(MobileCapabilityType.PlatformVersion, "12.0");
            //_driver.AddAdditionalCapability(MobileCapabilityType.App, @"/Users/mathew.daion/Downloads/firefox.apk");
            //driver.AddAdditionalCapability("appActivity", "com.androidsample.generalstore.SplashActivity");
            //driver.AddAdditionalCapability(AndroidMobileCapabilityType.AppActivity, "org.chromium.chrome.browser.document.ChromeLauncherActivity");
            _driver.AddAdditionalCapability(AndroidMobileCapabilityType.AppPackage, "com.google.android.gm");
            _driver.AddAdditionalCapability(AndroidMobileCapabilityType.AppActivity, "com.google.android.gm.ConversationListActivityGmail");
            //driver.AddAdditionalCapability(ChromeOptions.Capability, JObject.Parse("{'w3c':false}"));
            _driver.AddAdditionalCapability("chromedriverExecutable", @"Users/mathew.daion/Downloads/chromedriver");




            driver = new AndroidDriver<AndroidElement>(new Uri("http://localhost:4723/wd/hub"), _driver);


            driver.StartRecordingScreen(
                         AndroidStartScreenRecordingOptions.GetAndroidStartScreenRecordingOptions()
                            .WithTimeLimit(TimeSpan.FromSeconds(10))
                            .WithBitRate(500000)
                            .WithVideoSize("720x1280"));



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
            AndroidElement ComposeButton = driver.FindElementById("com.google.android.gm:id/compose_button");
            ComposeButton.Click();
            Thread.Sleep(5000);
            AndroidElement ToField = driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.RelativeLayout[1]/android.widget.RelativeLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.widget.EditText");
            ToField.SendKeys("robotframework14@gmail.com");
            Thread.Sleep(1000);
            AndroidElement NameClick = driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.support.v7.widget.RecyclerView/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[2]");
            NameClick.Click();
            Thread.Sleep(1000);


            // Find the "Subject" field and enter the subject
            AndroidElement subjectField = driver.FindElementById("com.google.android.gm:id/subject");
            subjectField.SendKeys("Automated email from Appium");
            Thread.Sleep(1000);
            // Find the "Body" field and enter the body text
            AndroidElement bodyField = driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.view.View[2]");
            //AndroidElement bodyField1 = driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.RelativeLayout[2]/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView");
            Thread.Sleep(1000);
            bodyField.Click();
            Thread.Sleep(1000);
            driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.RelativeLayout[2]/android.widget.LinearLayout/android.webkit.WebView/android.webkit.WebView/android.widget.EditText").SendKeys("This is an automated email sent using Appium and C#");
            Thread.Sleep(1000);
            
            // Find the "Send" button and click it
            AndroidElement sendButton = driver.FindElementById("com.google.android.gm:id/send");
            sendButton.Click();
            //driver.FindElementById("com.google.android.gm:id/description_text");

            driver.Close();







        }
    }

}