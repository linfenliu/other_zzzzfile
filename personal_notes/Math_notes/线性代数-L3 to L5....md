# 线性代数-L3 to L5...

**1.矩阵相乘的五种方法**
(1)行 点乘 列,获取单个元素方法
$$
\begin{bmatrix} 1&&2&&3 \\ 4&&5&&6 \\ 7&&8&&9 \end{bmatrix}
\begin{bmatrix} 10&&11 \\ 12&&13 \\ 14&&15 \end{bmatrix}=
\begin{bmatrix} 1*10+2*12+3*14 && 1*11+2*13+3*15 \\
...&&...\\...&&...
\end{bmatrix}
$$

(2)列 点乘 行，获取m*p矩阵后再相加
$$
\begin{bmatrix} 1&&2&&3 \\ 4&&5&&6 \\ 7&&8&&9 \end{bmatrix}
\begin{bmatrix} 10&&11 \\ 12&&13 \\ 14&&15 \end{bmatrix}=
\begin{bmatrix} 1\\4\\7 \end{bmatrix}\begin{bmatrix} 10&&11 \end{bmatrix}+
\begin{bmatrix} 2\\5\\8 \end{bmatrix}\begin{bmatrix} 12&&13 \end{bmatrix}+
\begin{bmatrix} 3\\6\\9 \end{bmatrix}\begin{bmatrix} 14&&15 \end{bmatrix}
$$

(3)行向量的线性叠加
$$
\begin{bmatrix} 1&&2&&3 \\ 4&&5&&6 \\ 7&&8&&9 \end{bmatrix}
\begin{bmatrix} 10&&11 \\ 12&&13 \\ 14&&15 \end{bmatrix}=
\begin{bmatrix} 1*[10&&11]+2*[12&&13]+3*[14&&15] \\ 4*[10&&11]+5*[12&&13]+6*[14&&15] \\ 7*[10&&11]+8*[12&&13]+9*[14&&15] \end{bmatrix}
$$

(4)列向量的线性叠加
$$
\begin{bmatrix} 1&&2&&3 \\ 4&&5&&6 \\ 7&&8&&9 \end{bmatrix}
\begin{bmatrix} 10&&11 \\ 12&&13 \\ 14&&15 \end{bmatrix}\\=\\
10*\begin{bmatrix} 1\\4\\7 \end{bmatrix}+12*\begin{bmatrix} 2\\5\\8 \end{bmatrix}+14*\begin{bmatrix} 3\\6\\9 \end{bmatrix}为第一列；\\
11*\begin{bmatrix} 1\\4\\7 \end{bmatrix}+13*\begin{bmatrix} 2\\5\\8 \end{bmatrix}+15*\begin{bmatrix} 3\\6\\9 \end{bmatrix}为第二列；\\
$$

(5)分块乘法(扩展)
$$
\begin{bmatrix} A1&&A2\\A3&&A4 \end{bmatrix}
\begin{bmatrix} B1&&B2\\B3&&B4 \end{bmatrix}=
\begin{bmatrix} A1*B1+A2*B3&&A1*B2+A2*B4\\...&&... \end{bmatrix}
$$

**2.逆矩阵**
$$
A^{-1}A=I=AA^{-1}\\
对于方阵，左乘逆矩阵和右乘逆矩阵是同一矩阵。
$$
(1)如果存在一个非零向量X，左乘矩阵A后得出零向量，则矩阵A为不可逆矩阵，即为奇异矩阵：
$$
AX=0
$$

(2)什么是不可逆矩阵
$$
\begin{bmatrix} 1&&2\\3&&6 \end{bmatrix}为不可逆矩阵。\\
用列向量的线性叠加可以解释，因为AA^{-1}=I，\\
无论矩阵A^{-1}是什么，都只是让A的列向量线性叠加，\\
因为A的列向量共线，所以无论如何线性组合都组合不出单位矩阵的列向量。
$$

(3)求解逆矩阵——高斯-若尔当思想
$$
AA^{-1}=I\\
其中A=\begin{bmatrix} 1&&2\\3&&7 \end{bmatrix}，求A^{-1}\\
\begin{bmatrix} 1&&2&&|&&1&&0&&\\3&&7&&|&&0&&1&& \end{bmatrix}\\
对于上方的增广矩阵，对左边进行下三角消元后再进行上三角消元可得单位矩阵\\
则右边变化后的矩阵就为逆矩阵。
$$

(4)逆矩阵运算规则
$$
ABB^{-1}A^{-1}=I\\
证明方法就是根据结合律，有A(BB^{-1})A^{-1}=AIA^{-1}=I
$$
$$
A=LU——(L为下三角矩阵)\\
\begin{bmatrix} 2&&1\\8&&7 \end{bmatrix}=
\begin{bmatrix} 1&&0\\4&&1 \end{bmatrix}
\begin{bmatrix} 2&&1\\0&&3 \end{bmatrix}\\
可转换为:\\
\begin{bmatrix} 2&&1\\8&&7 \end{bmatrix}=
\begin{bmatrix} 1&&0\\4&&1 \end{bmatrix}
\begin{bmatrix} 2&&0\\0&&3 \end{bmatrix}
\begin{bmatrix} 1&&1/2\\0&&1 \end{bmatrix}\\
这样就转换成了很完美的格式：左边下三角矩阵L，中间对角线矩阵D，右边上三角矩阵U。
$$

(5)转置矩阵的性质
$$
有AA^{-1}=I,两边进行转置后得:\\
(A^{-1})^TA^T=I\\
由于(A^T)^{-1}A^T=I\\
因此(A^{-1})^T = (A^T)^{-1}
$$

(6)为什么采用A=LU而不用EA=U
$$
因为如果消元时不需要行交换，那么消元系数可以直接写入L的矩阵中。\\
如果用这种思想进行消元，则对A进行第一次消元后得到的U以及写入消元\\
系数的L即可进行余下的消元，从而不需要A矩阵的信息了，因为L和U包括了A信息。
$$

(7)置换矩阵P(交换行与行)的性质
$$
P^{-1}=P^T\\
置换矩阵的逆矩阵是其转置矩阵。
$$

(8)向量空间
向量加法封闭(任取一向量，加另一任意向量的结果仍在集合中)、向量数乘封闭(任取一向量，乘任意常数后结果仍在集合中)。简单描述，所有线性组合仍然在空间中。

(9)向量子空间
$$
若有A=\begin{bmatrix} 1&&3\\2&&3\\4&&1 \end{bmatrix}\\
则C(A)为列空间，因为列1和列2向量属于R^3，它们线性组合后的向量仍然在R^3。\\
例如R^3为三维实数空间(x,y,z)。\\
它的子空间有:它自身，穿过原点的平面，穿过原点的直线，原点。
$$