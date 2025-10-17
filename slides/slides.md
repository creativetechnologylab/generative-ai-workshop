---
marp: true
theme: uncover
style: |
  table {
    width: 100%;
    margin: 0 auto;
    margin-top: 1em;
    font-size: 0.75em;
  }
  h1 {
    font-size: 1.5em;
  }
  h2 {
    font-size: 1em;
  }
  p {
    font-size: 0.75em;
  }
---
# Generative AI with Python

---
# Setup

- Open Powershell
- Use command: `wsl.exe --install Ubuntu`
- REBOOT

---
# Setup

- Go to linktr.ee/dolica.ual
- Start the Autolume download
- Go to Start Menu
- Launch Ubuntu
- Pick a simple/memorable password like `ual`

---
# WSL Setup

Go to "WSL Setup" in linktree.

```
>> git clone git@github.com:creativetechnologylab/generative-ai-workshop.git
>> cd generative-ai-workshop
>> chmod +x install.sh env.sh
>> ./install.sh
>> ./env.sh
>> conda activate gen-ai
```

---
# VSCode Setup

- Start VSCode
- Go to extensions menu (left hand side)
- Install these extensions:
  - WSL
  - Python
  - Jupyter
- Open the `generative-ai-workshop` folder as a project

---
# Generative AI
![bg left:40%](../pictures/art-competition-winner.webp)

_Generative artificial intelligence (AI) describes algorithms that can be used to create new content, including audio, code, images, text, videos, and other data._

---
- ChatGPT
- StableDiffusion
- Midjourney
- Dall-E
- Claude
- Deepseek
- Etc...

---
# Image Generation I
## Diffusion Models

---
# Diffusion Models

* trained on lots and lots of images (in the millions)
* prompt-driven
* designed to generate _anything_ (although if the model hasn't seen very many examples of the thing you're asking for, the more it's going to "hallucinate")

Examples: Midjourney, Dall-E, Stable Diffusion

![bg right:30%](../pictures/pope-drip.webp)

---
# How Diffusion Works

* We take an image and gradually add "fog" to it
* The original content of our image becomes harder and harder to see
* Eventually, we can't see what the original image looked like at all
* An "unfogger" is trained to _reverse_ this and go from a foggy image to a clear one

---
# How Diffusion Works

![](../pictures/diffusion-1.png)

---
# How Diffusion Works

![](../pictures/diffusion-2.png)

---
# How Diffusion Works

![](../pictures/diffusion-3.png)

---
# How Diffusion Works

![](../pictures/diffusion-4.png)

---
# How Diffusion Works

![](../pictures/diffusion-5.png)

---
# How Diffusion Works

![](../pictures/diffusion-8.png)

---
# How Diffusion Works

![](../pictures/diffusion-final.png)

---
# How Diffusion Works

The knowledge on how to go from complete fog, to less foggy fog, and then to a fog-less image, is our **model.**

---

## Head over to the notebook.

---
# Text Generation: Large Language Models (LLMs)

---
# Ollama & GPT4ALL
![bg left](../pictures/ollama.png)

- allows running LLMs locally
- free
- better privacy
- offline functionality
- can easily run on both Mac/Win

---

## Head over to the notebook.

---
# Image Generation II
## Generative Adversarial Networks (GANs)

---
# How do GANs compare to Stable Diffusion?

* trained on a smaller, hand-picked dataset (< 20000)
  - but you can get away with even smaller datasets (100s)
* generates new instances of what it has been trained on and nothing else
* more trial-and-error involved
* greater freedom to customise/control your model
* more ethical compared to diffusion models

---
# GANs in Action - This Person Does Not Exist

https://thispersondoesnotexist.com/

![height:400](../pictures/does-not-exist.webp)

---
# GANs in Action - This Person Should Not Exist

![height:350](../pictures/should-not-exist.png)

---
# How a GAN Learns

Two "AI players" try to see who can outsmart who:

- **Generator** - Creates fake images.
- **Discriminator** - Is given a mix of fake images and real ones, and attempts to spot the fakes.

---
# How a GAN Learns

![](../pictures/gans-metaphor.png)

---
# How a GAN Learns

* The Criminal "wins" a round of the game if it fools the Detective with its fakes.
* The Detective "wins" a round of the game if it spots the fakes.
* The loser then goes away and tries to improve their _strategy_. The game is repeated for several rounds. 
* Hopefully, with enough time, the Criminal learns to create masterpieces that the Detective can't tell apart from the real thing. 
* This is called **convergence.**

---
# How a GAN Learns

We want our Detective to become smarter as time goes on, so the Criminal is forced to become really good at creating fake paintings. We want our Criminal to become smarter as time goes on, so that its fakes are actually convincing. 

Ideally, both the Criminal and the Detective grow smarter at around the same pace as the game progresses, otherwise...

---
# GAN Challenges

If we have a Detective that is far too ahead of the Criminal, or a Criminal who is far too ahead of the Detective, this can lead to a scenario called **convergence failure.**

If our Criminal becomes very good at creating just _one type_ of fake painting, we call this **mode collapse**.

---
# GAN Challenges - Convergence Failure

![height:450](../pictures/convergence-failure-ribs.png)

---
# GAN Challenges - Mode Collapse

![width:700px](../pictures/mode-collapse.png)

---
# GAN Challenges - Mode Collapse

![height:500](../pictures/mode-collapse-faces.webp)

---
# Autolume
## GANs Made Easy

![bg right](../pictures/autolume.webp)

---
# Autolume Features

- latent space navigation
- model mixing
- OSC communication
- video generation
- and some other interesting things...

---
![height:450](../pictures/interpolation.gif)

---
## Now let's take a look at Autolume

---
# GANs vs. Stable Diffusion

![height:550px](../pictures/diffusion-and-gans.jpg)

---
# Other Considerations

---
# AI Bias

---
# Visual "Hallucination"

https://www.bing.com/images/create

---
# Visual "Hallucination"

![height:500](../pictures/arabic-text-dall-e.jpeg)

---
# Copyright

https://www.bing.com/images/create

---
# Copyright

![height:500](../pictures/dall-e-sonic.jpeg)

---
# Peverse AI

## ChatGPT Romance

https://www.youtube.com/watch?v=hEk0Tas7xgE

---
# These Accounts Make a Surprising Amount of Money

https://www.youtube.com/watch?v=VA1jS9KgVM0

<!-- # Note to Self
- StyleGAN2-ADA Playlist: https://youtube.com/playlist?list=PLWuCzxqIpJs8ViuBIUtAk-dsAtdrApYoy&si=BaFkx0Jl_VBV4GFy
- Autolume Thesis: https://summit.sfu.ca/item/36414 -->
