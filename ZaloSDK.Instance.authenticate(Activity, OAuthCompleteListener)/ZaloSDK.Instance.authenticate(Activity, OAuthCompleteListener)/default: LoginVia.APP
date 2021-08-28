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
12
OAuthCompleteListener listener = new OAuthCompleteListener() {
    @Override
    public void onAuthenError(int errorCode, String message) {
        //Đăng nhập thất bại..
    }
 
    @Override
    public void onGetOAuthComplete(OauthResponse response) {
        String code = response.getOauthCode()
         //Đăng nhập thành công..
    }
};
