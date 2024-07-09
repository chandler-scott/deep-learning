# src/deep_learning/main.py

import torch
import torchvision

def main():
    print(f"PyTorch version: {torch.__version__}")
    print(f"Torchvision version: {torchvision.__version__}")

    # Sample tensor operation
    x = torch.tensor([[1, 2], [3, 4]])
    print(f"Tensor:\n{x}")

    y = torch.sum(x)
    print(f"Sum of elements: {y}")

if __name__ == "__main__":
    main()

