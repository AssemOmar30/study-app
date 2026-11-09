طريقة 1 (أونلاين بدون تنصيب حاجة):
1) اعمل حساب على github.com وأنشئ Repository جديد.
2) ارفع كل محتويات المجلد ده (بما فيها مجلد .github).
3) افتح تبويب Actions ثم Build APK ثم Run workflow.
4) بعد دقائق نزّل مجلد mozakrty-apk من Artifacts، فيه app-debug.apk.
5) انقله للتليفون وثبّته (فعّل "التثبيت من مصادر غير معروفة").

طريقة 2 (على الكمبيوتر): محتاج Node 20 و JDK 17 و Android SDK، وبعدين شغّل: bash build-apk.sh
