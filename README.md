ZaloSDK.Instance.authenticate(Activity, OAuthCompleteListener) //default: LoginVia.APP
ZaloSDK.Instance.authenticate(Activity, LoginVia, OAuthCompleteListener)
https://oauth.zaloapp.com/v3/permission?app_id={1}&redirect_uri={2}&state={3}
3
4
5
6
7
8
ZaloSDK.Instance.isAuthenticate(new ValidateOAuthCodeCallback() {
    @Override
    public void onValidateComplete(boolean validated, int errorCode, long userId, String oauthCode) {
        if(validated) {
            // oauth code còn hiệu lực...
        }
    }
});
1
2
3
4
5
6
7
8
9
10
11
public static String getApplicationHashKey(Context ctx) throws Exception {
    PackageInfo info = ctx.getPackageManager().getPackageInfo(ctx.getPackageName(), PackageManager.GET_SIGNATURES);
    for (Signature signature : info.signatures) {
        MessageDigest md = MessageDigest.getInstance("SHA");
        md.update(signature.toByteArray());
        String sig = Base64.encodeToString(md.digest(), Base64.DEFAULT).trim();
        if (sig.trim().length() > 0) {
            return sig;
        }
    }
}
