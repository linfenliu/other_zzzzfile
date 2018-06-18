# 线性代数-L1 and L2

##矩阵
**1.由三条三元方程组：**
$$
x+y+z = 0 \\3x+2y+1z = 2 \\5x-3y+3z = -5
$$
&emsp;导出的矩阵形式为：
$$
\begin{bmatrix} 1&1&1\\3&2&1\\5&-3&3 \end{bmatrix}
\begin{bmatrix} x\\y\\z \end{bmatrix}
= \begin{bmatrix} 0\\2\\-5 \end{bmatrix}\\
AX=b
$$

**2.矩阵左乘列向量的求法：**
$$
\begin{bmatrix} 1&1&1 \\ 3&2&1 \\ 5&-3&3 \end{bmatrix}
\begin{bmatrix} 1\\2\\3 \end{bmatrix}
= 1* \begin{bmatrix} 1\\3\\5 \end{bmatrix} + 
2 * \begin{bmatrix} 1\\2\\-3 \end{bmatrix} +
3 * \begin{bmatrix} 1\\1\\3 \end{bmatrix}
$$

**3.矩阵右乘行向量的求法：**
$$
\begin{bmatrix} 1&&2&&3 \end{bmatrix}
\begin{bmatrix} 1&&1&&1\\3&&2&&1\\5&&-3&&3 \end{bmatrix}
= 1 * \begin{bmatrix} 1&&1&&1 \end{bmatrix}
+ 2 * \begin{bmatrix} 3&&2&&1 \end{bmatrix}
+ 3 * \begin{bmatrix} 5&&-3&&3 \end{bmatrix}
$$

**4.矩阵消元法**
奇异矩阵(主位为0，即对角线元素)，不可逆矩阵不可以采用消元法。
若遇到某行的主位元素为0，可以通过行交换来消除。若最终还是不可以，则该矩阵为奇异矩阵。
$$
\begin{bmatrix} 1&&2&&1 \\ 3&&8&&1 \\ 0&&4&&1 \\ \end{bmatrix}》
\begin{bmatrix} 1&&2&&1 \\ 3-3&&8-6&&1-3 \\ 0&&4&&1 \\ \end{bmatrix}》
\begin{bmatrix} 1&&2&&1 \\ 0&&2&&-2 \\ 0&&4&&1 \\ \end{bmatrix}》
\begin{bmatrix} 1&&2&&1 \\ 0&&2&&-2 \\ 0&&4-4&&1+4 \\ \end{bmatrix}》
\begin{bmatrix} 1&&2&&1 \\ 0&&2&&-2 \\ 0&&0&&5 \\ \end{bmatrix}
$$
最终得到一个上三角形矩阵(**U**)，行列式值为对角线元素相乘，1*2*5=10。

**5.使用左乘矩阵来表示矩阵消元法(使用上述例子,符合矩阵结合律)**
$$
\begin{bmatrix} 1&0&0\\0&1&0\\0&-2&1 \end{bmatrix}
(\begin{bmatrix} 1&&0&&0 \\ -3&&1&&0 \\ 0&&0&&1 \end{bmatrix}
\begin{bmatrix} 1&&2&&1 \\ 3&&8&&1 \\ 0&&4&&1 \\ \end{bmatrix})\\
E_{(3,2)}(E_{2,1}A)\\
==\\
(E_{(3,2)}E_{2,1})A\\
(\begin{bmatrix} 1&0&0\\0&1&0\\0&-2&1 \end{bmatrix}
\begin{bmatrix} 1&&0&&0 \\ -3&&1&&0 \\ 0&&0&&1 \end{bmatrix})
\begin{bmatrix} 1&&2&&1 \\ 3&&8&&1 \\ 0&&4&&1 \\ \end{bmatrix}\\
$$
&emsp;E称为初等矩阵。

**6.置换矩阵(属于初等矩阵的一类)**
$$
\begin{bmatrix} 1&&0&&0 \\ 0&&1&&0 \\ 0&&0&&1 \end{bmatrix}A \\
左乘单位矩阵；\\
\begin{bmatrix} 0&&1&&0 \\ 1&&0&&0 \\ 0&&0&&1 \end{bmatrix} A\\
这个为置换矩阵(P)，置换了第一第二行。
$$
$$
A\begin{bmatrix} 1&&0&&0 \\ 0&&1&&0 \\ 0&&0&&1 \end{bmatrix} \\
右乘单位矩阵\\
A\begin{bmatrix} 0&&1&&0 \\ 1&&0&&0 \\ 0&&0&&1 \end{bmatrix} \\
置换了第一第二列。
$$

**7.逆矩阵**
$$
\begin{bmatrix} 1&&0&&0 \\ 3&&1&&0 \\ 0&&0&&1 \end{bmatrix}
\begin{bmatrix} 1&&0&&0 \\ -3&&1&&0 \\ 0&&0&&1 \end{bmatrix}
= \begin{bmatrix} 1&&0&&0 \\ 0&&1&&0 \\ 0&&0&&1 \end{bmatrix} \\
E^{-1}E=I \\
E^{-1}即为逆矩阵。
$$










