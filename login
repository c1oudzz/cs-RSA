import java.awt.*;
import javax.swing.*;


public class Login {
    public static void main(String[] args) {
        Login login = new Login();
        login.initUI();         //在Login类中调用 initUI（）方法
    }


    public static void initUI() {
        JFrame frame = new JFrame();      //实例化JFrame对象

        frame.setTitle("Login");// 设置窗体的标题
        frame.setSize(400, 650);// 设置窗体的大小，单位是像素px
        frame.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);//  写常量名  尽量不写数字 设置窗体的关闭操作；3表示关闭窗体退出程序； 2、1、0
        frame.setLocationRelativeTo(null);// 设置窗体相对于另一个组件的居中位置，参数null表示窗体相对于屏幕的中央位置
        frame.setResizable(true);// 设置禁止调整窗体大小

        //流式布局，布局窗体 从左至右依次摆放 整体默认居中 ，一行充满 摆放到下一行
        FlowLayout fl = new FlowLayout(FlowLayout.CENTER, 10, 10);

        frame.setLayout(fl);  //frame框架调用流式布局方法；


        // 图片需要调用ImageIcon类  构造方法（文件路径+文件名.格式）
        //图片是内容 不是组件 所以图片对象必须要绑定到组件上才能显示到界面上
        ImageIcon icon = new ImageIcon("/Users/c1oud/Desktop/工程实践/RSA工程实践/1.jpg");
        JLabel labIcon = new JLabel(icon);    // 用标签来接收图片，实例化JLabel标签对象，该对象显示icon图标
        Dimension dim = new Dimension(400, 300);  //调用Dimension类的构造方法，实例化dim对象  尺寸 dimension
        labIcon.setPreferredSize(dim);              //优先考虑尺寸
        frame.add(labIcon);           //将标签对象 labicon加载到窗体frame上


        JLabel labName = new JLabel("账号：");    //实例化标签类 labName对象，显示字符串 “账号"
        frame.add(labName);  //将 labName对象 加载到窗体上

        // 文本输入框
        JTextField nameInput = new JTextField(); //实例化标签类 nameInput对象
        Dimension dim1 = new Dimension(300, 30); //实例化 dim1对象
        nameInput.setPreferredSize(dim1); //调用 setPreferredSize方法 改变文本输入框尺寸
        frame.add(nameInput);  //将文本输入框 加载到窗体上


        JLabel labpass = new JLabel("密码：");  //实例化标签类 labpass对象
        frame.add(labpass);  //将标签对象加载到窗体上

        //Pwd输入框
        JPasswordField pwdInput = new JPasswordField(); //实例化JPasswordField
        pwdInput.setPreferredSize(dim1);//设置组件大小
        frame.add(pwdInput); //将输入框加载到窗体上

        JButton button = new JButton(); //实例化Jbutton
        //Dimension dim2 = new Dimension(100,30);
        button.setText("登录");
        button.setSize(100, 30); //设置组件大小
        frame.add(button);  //将按钮加载到窗体上


        //窗体可视化需要将所有组件加载完再执行
        frame.setVisible(true);// 设置窗体为可见
        //button.setVisible (true);


        // 监听器 ：将实现了ActionListener的类 创建对象 绑定给按钮对象
        LoginListener loginListener = new LoginListener();
        button.addActionListener(loginListener);
/*
        在这里直接获取输入框里面的字符串  但是程序执行到这里 ，界面还没有显示到屏幕上面 不存在用户输入账号密码。
        获取的账号和密码是空的，所以要将输入框对象传入监听器对象中，在监听器方法（点击按钮会自动调用的方法）中使用输入输入框对象，获取文本。

        1.先在监听器中定义两个输入框对象变量名；
        2.监听器对象可以调用输入框对象变量名，对其赋值（实际的输入框对象地址）；

 */
        String username = nameInput.getText();
        String pwd = pwdInput.getText();
        System.out.println("直接在界面初始化当中获取用户名：" + username + " 密码: " + pwd);//先赋一个空值，保证输入框显示能够获取，在输入后，调用getText（）方法覆盖空的值。
        loginListener.textName2 = nameInput;  //将输入框对象传给监听器
        loginListener.textPwd2 = pwdInput;


    }
}
