# Imagine de bază cu suport pentru TensorFlow și Jupyter Notebook
FROM tensorflow/tensorflow:latest-jupyter

# Setează directorul de lucru în container
WORKDIR /app C:\Users\necul\OneDrive\Desktop\Articol fraude\CombinatDLML

# Copiază toate fișierele din directorul curent în container
COPY . /app  

# Instalează biblioteci suplimentare necesare
RUN pip install pandas seaborn numpy matplotlib

# Expune portul pentru Jupyter Notebook
EXPOSE 8888

# Comandă pentru a porni Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
