###접두어
```
UITextField *pwText (x)
UITextField *passwordText (o)

UIButton *logBtn (x)
UIButton *loginButton (o)


누구나 알아볼수있도록 변수이름을 명확히 적어주어야 한다
```

### 접근자 메소드
```
- (void)chkBtnHandler:(id)sender{ (x)
- (void)checkButtonHandler:(id)sender{
    (o)

    //터치시 버튼이 내려가는 메소드
    - (void) didsmissk:(UITapGestureRecognizer *)sender (x)
    - (void) downKyebord:(UITapGestureRecognizer *)sender (o)

    의미를 명확하게 하기 위해 조동사("can", "should", "will" 등)를 사용할 수는 있으나 "do"나 "does"는 사용하지 않는다.
    ```

