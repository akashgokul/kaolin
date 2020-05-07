import os
import matplotlib.pyplot as plt
import numpy as np

# train_loss = np.load(os.getcwd() + "/may4runs/train_loss_full_transf4_512.npy")
# val_loss = np.load(os.getcwd() + "/may4runs/val_loss_full_transf4_512.npy")
# print(train_loss)
# print(train_loss.shape)

train_acc = np.load(os.getcwd() + "/may4runs/train_acc_full_transf4_512.npy")
val_acc = np.load(os.getcwd() + "/may4runs/val_acc_full_transf4_512.npy")
print(val_acc)

plt.figure()
plt.plot(np.array([100*i for i in train_acc]), label='Training Accuracy')
plt.plot(np.array([100 * i for i in val_acc]), label = 'Validation Accuracy')
plt.xlabel("Epoch Number")
plt.ylabel("Accuracy (%)")
plt.legend()
plt.title("Training and Validation Accuracies of Pointnet")
plt.savefig("accuracies_transf4_512.png")

# plt.figure()
# plt.plot(np.array(train_loss), label='Training Loss')
# plt.plot(np.array(val_loss), label = 'Validation Loss')
# plt.xlabel("Epoch Number")
# plt.ylabel("Loss (Cross-Entropy)")
# plt.legend()
# plt.title("Training and Validation Losses of Pointnet")
# plt.savefig("losses_transf4_512.png")