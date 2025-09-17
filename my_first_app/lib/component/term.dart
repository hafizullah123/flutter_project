import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'اپلیکیشن درمان',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),
      home: const Directionality(
        textDirection: TextDirection.rtl, // 🔹 راست به چپ
        child: PolicyPage(),
      ),
    );
  }
}

class PolicyPage extends StatelessWidget {
  const PolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.blue.shade700,
          title: const Text(
            "اپلیکیشن درمان",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: "سیاست حریم خصوصی"),
              Tab(text: "شرایط استفاده"),
            ],
          ),
        ),
        body: const TabBarView(children: [PrivacyPolicy(), TermsOfUse()]),
      ),
    );
  }
}

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            """
🛡 سیاست حفظ حریم خصوصی

اپلیکیشن درمان به حفظ و امنیت اطلاعات شخصی کاربران متعهد است. 
با نصب و استفاده از این برنامه، شما با موارد زیر موافقت می‌کنید:

۱. اطلاعاتی که جمع‌آوری می‌کنیم
- اطلاعات شخصی مانند نام، شماره تماس، ایمیل.
- اطلاعات مرتبط با استفاده از خدمات، شامل جستجوی داکترها، نوبت‌دهی و پیام‌ها.
- موقعیت مکانی (در صورت فعال‌سازی توسط کاربر) برای نمایش داکترهای نزدیک.
- اطلاعات پرداخت در صورت انجام تراکنش از طریق حساب پی، مومو و سایر درگاه‌های امن.

۲. نحوه استفاده از اطلاعات
- برای ایجاد حساب کاربری و ارائه خدمات نوبت‌دهی و ارتباط با داکترها.
- برای پردازش پرداخت‌های آنلاین از طریق درگاه‌های پرداخت معتبر.
- برای بهبود کیفیت خدمات و اطلاع‌رسانی (از طریق اعلان یا ایمیل).

۳. اشتراک‌گذاری اطلاعات
- اطلاعات شما فقط با داکتر انتخاب‌شده به اشتراک گذاشته می‌شود.
- ما اطلاعات شخصی شما را با هیچ شخص یا نهاد دیگری به‌اشتراک نمی‌گذاریم مگر در صورت الزام قانونی.

۴. امنیت اطلاعات
- اطلاعات کاربران با روش‌های امنیتی (رمزگذاری و دسترسی محدود) محافظت می‌شود.
- اطلاعات پرداخت از طریق درگاه‌های امن پردازش می‌شود و در اپلیکیشن ذخیره نمی‌شود.

۵. حقوق کاربران
- کاربران می‌توانند درخواست ویرایش یا حذف حساب خود را داشته باشند.
- کاربران حق دارند در هر زمان استفاده از خدمات را متوقف کنند.
- کاربران می‌توانند درخواست حذف کامل اطلاعات خود را به پشتیبانی ارسال کنند.

۶. کوکی‌ها و تحلیل داده‌ها
- ممکن است از ابزارهای تحلیلی مانند Google Analytics یا Firebase برای بهبود تجربه کاربری استفاده شود.

۷. تغییرات در سیاست
- ممکن است این سیاست به‌روز شود. تغییرات از طریق اپلیکیشن یا وبسایت به اطلاع کاربران خواهد رسید.

۸. تماس با ما
- برای سوالات یا درخواست‌های مرتبط با حریم خصوصی، لطفاً با تیم پشتیبانی تماس بگیرید: support@doctoryab.com
            """,
            style: TextStyle(fontSize: 16, height: 1.6),
            textAlign: TextAlign.right,
          ),
        ),
      ),
    );
  }
}

class TermsOfUse extends StatelessWidget {
  const TermsOfUse({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            """
📜 شرایط استفاده

با نصب و استفاده از اپلیکیشن درمان، شما با شرایط زیر موافقت می‌کنید:

۱. پذیرش شرایط
- استفاده از این برنامه به معنای پذیرش کامل این شرایط است.
- در صورت عدم موافقت، لطفاً از اپلیکیشن استفاده نکنید.

۲. خدمات
- داکتر یاب صرفاً یک پلتفرم برای معرفی و برقراری ارتباط بین کاربران و داکترهاست.
- کیفیت و صحت خدمات پزشکی ارائه‌شده بر عهده داکتر مربوطه است.

۳. پرداخت‌ها و بازگشت وجه
- پرداخت‌ها از طریق درگاه‌های پرداخت امن انجام می‌شود.
- اپلیکیشن اطلاعات بانکی شما را ذخیره نمی‌کند.
- بازگشت وجه تنها طبق قوانین درگاه پرداخت یا توافق بین کاربر و داکتر امکان‌پذیر است.

۴. مسئولیت‌های کاربر
- کاربر موظف است اطلاعات درست و کامل وارد کند.
- مسئولیت حفظ حساب کاربری و رمز عبور بر عهده خود کاربر است.

۵. مسئولیت‌های داکتر
- داکتر موظف است اطلاعات دقیق (نام، تخصص، زمان حضور، تماس) درج کند.
- داکتر باید در چارچوب قوانین و اصول اخلاقی خدمات ارائه دهد.

۶. محدودیت مسئولیت
- درمان مسئول خطاهای پزشکی یا کیفیت خدمات ارائه‌شده توسط داکترها نیست.
- اپلیکیشن فقط واسطه‌ای برای معرفی و برقراری ارتباط است.

۷. مالکیت معنوی
- کلیه حقوق اپلیکیشن (طراحی، کدها، داده‌ها و نام تجاری) متعلق به تیم توسعه‌دهنده است.
- هرگونه کپی‌برداری یا استفاده غیرمجاز ممنوع است.

۸. تغییرات در شرایط
- این شرایط ممکن است تغییر کند. نسخه به‌روز از طریق اپلیکیشن یا وبسایت اعلام خواهد شد.

۹. تماس و پشتیبانی
- برای پشتیبانی و حل مشکلات: support@doctoryab.com
            """,
            style: TextStyle(fontSize: 16, height: 1.6),
            textAlign: TextAlign.right,
          ),
        ),
      ),
    );
  }
}
