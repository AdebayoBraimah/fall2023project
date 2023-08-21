# fall2023project

Project repository for Fall 2023.

Additional project updates and ideas are tracked [here](https://docs.google.com/document/d/1dAC3PbRFhyn5d6C20mu9IZUByrOPYdFOuoT-tBWvpok/edit) in this Google document.


## Mon., 21 Aug 2023

Results are located in ``sandbox4`` notebook. At the moment, not all tasks assigned from last week have been completed. So far:
- Add option to store gradient norm of each layer, stored separately
- [X] Change linear layers to: CNN + 1 linear layer
- [X] Make deep model (5 layers), and train it to perfection (up to 99% or higher train accuracy)
- [X] Save the model (we’ll call this the “ground model”) (if time, create 5 ground models)
- Then, create 10 models per noise level (pick 10 noise levels, between totally destroyed and basically no impact) (also loop through which layer)→ turns into 500 models. Make them noisy, measure all the things above (robustness, generalization.1, try generalization.2)
- Can experiment with gradcam (interesting but not most important)

## Mon., 14 Aug 2023

Current results are located in the ``sandbox3`` notebook. The results mainly include a function whose input is a model and it returns a dictionary of gradients for both the weights and the bias(es). The dataset used was the ``MNIST`` dataset. The model used was a simple 5-layer neural network.
