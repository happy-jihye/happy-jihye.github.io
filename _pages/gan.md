---
title: " 🦓 GAN-Zoos! "
permalink: /gan/
toc_sticky: true
toc_ads : true
layout: single
---
  

---

<span style='background-color: #E5EBF7;'> **GAN Basics** </span>

- [GAN: Generative Adversarial Networks](https://happy-jihye.github.io/gan/gan-1/) (2014) : [Paper](https://arxiv.org/abs/1406.2661)

- [DCGAN: Unsupervised Representation Learning with Deep Convolutional Generative Adversarial Networks](https://happy-jihye.github.io/gan/gan-2/) (2015) : [Paper](https://arxiv.org/abs/1511.06434)

<span style='background-color: #E5EBF7;'> **Conditional GAN** </span>

- [CGAN: Conditional Generative Adversarial Nets](https://happy-jihye.github.io/gan/gan-3/) (2014) : [Paper](https://arxiv.org/abs/1411.1784)

- [ACGAN: Conditional Image Synthesis With Auxiliary Classifier GANs](https://happy-jihye.github.io/gan/gan-13/) (ICML 2017) : [Paper](https://arxiv.org/abs/1610.09585)

- **Pair Dataset** 

  - [Pix2Pix: Image-to-Image Translation with Conditional Adversarial Networks](https://happy-jihye.github.io/gan/gan-8/) (CVPR 2017) : [Paper](https://arxiv.org/abs/1611.07004)

  - [SPADE: Semantic Image Synthesis with Spatially Adaptive Normalization](https://happy-jihye.github.io/gan/gan-9/) (CVPR 2019) : [Paper](https://arxiv.org/abs/1903.07291)

- **Unpair Dataset** 

  - [CycleGAN: Unpaired Image-to-Image Translation using Cycle-Consistent Adversarial Networks](https://happy-jihye.github.io/gan/gan-10/) (ICCV 2017) : [Paper](https://arxiv.org/abs/1703.10593)

- **Multi Domain**
  - [StarGAN: Unified Generative Adversarial Networks for Multi-Domain Image-to-Image Translation](https://happy-jihye.github.io/gan/gan-12/) (CVPR 2018) : [Paper](https://arxiv.org/abs/1711.09020)

  - [MUNIT : Multi-Modal Unsupervised Image-to-Image Translation](https://happy-jihye.github.io/gan/gan-14/) (ECCV 2018) : [Paper](https://arxiv.org/abs/1804.04732)


<span style='background-color: #E5EBF7;'> **GAN Architecture** </span>

- [Progressive GAN: Progressive Growing of GANs for Improved Quality, Stability, and Variation](https://happy-jihye.github.io/gan/gan-5/) (2018) : [Paper](https://arxiv.org/abs/1710.10196)

- [StyleGAN: A Style-Based Generator Architecture for Generative Adversarial Networks](https://happy-jihye.github.io/gan/gan-6/) (2019) : [Paper](https://arxiv.org/abs/1812.04948)

  - [StyleGAN2: Analyzing and Improving the Image Quality of StyleGAN](https://happy-jihye.github.io/gan/gan-7/) (2020) : [Paper](https://arxiv.org/abs/1912.04958)
  
  - Training Generative Adversarial Networks with Limited Data [#01](https://happy-jihye.github.io/gan/gan-19/), [#02](https://happy-jihye.github.io/gan/gan-20/) (NeurlPS 2020) : [Paper](https://arxiv.org/abs/2006.06676)

<span style='background-color: #E5EBF7;'> **Text-to-Image** </span>

- [Generative Adversarial Text to Image Synthesis](https://happy-jihye.github.io/gan/gan-4/) (2016) : [Paper](https://arxiv.org/abs/1605.05396)

- [StyleCLIP: Text-Driven Manipulation of StyleGAN Imagery](https://happy-jihye.github.io/gan/gan-15/) (arXiv 2021) : [Paper](https://arxiv.org/abs/2103.17249)

<span style='background-color: #E5EBF7;'> **Improved Training Techniques** </span>

- [SS-GAN: Self-Supervised GANs via Auxiliary Rotation Loss](https://happy-jihye.github.io/gan/gan-16/) (CVPR 2019) : [Paper](https://openaccess.thecvf.com/content_CVPR_2019/papers/Chen_Self-Supervised_GANs_via_Auxiliary_Rotation_Loss_CVPR_2019_paper.pdf)

- [CR-GAN: Consistency Regularization for Generative Adversarial Networks](https://happy-jihye.github.io/gan/gan-17/) (ICLR 2020) : [Paper](https://arxiv.org/abs/1910.12027)

- [ICR-GAN: Improved Consistency Regularization for GANs](https://happy-jihye.github.io/gan/gan-18/) (AAAI 2021) : [Paper](https://arxiv.org/abs/2002.04724)

<span style='background-color: #E5EBF7;'> **GAN Inversion** </span>

1. **Latent Optimization**
   - [Image2stylegan: How to embed images into the stylegan latent space?](https://happy-jihye.github.io/gan/gan-23/) (ICCV 2019) : [Paper](https://arxiv.org/abs/1904.03189)
   - Image2stylegan++: How to edit the embedded images?
2. **Encoder**
   - ALAE: Adversarial latent autoencoders ([github](https://github.com/podgorskiy/ALAE))
   - [pSp: Encoding in Style: a StyleGAN Encoder for Image-to-Image Translation](https://happy-jihye.github.io/gan/gan-23/) (CVPR 2021) : [Paper](https://arxiv.org/abs/2008.00951)
3. **Hybrid approach**
   - stylegan-encoder : [Github](https://github.com/pbaylies/stylegan-encoder)
   - [IdInvert : In-Domain GAN Inversion for Real Image Editing](https://happy-jihye.github.io/gan/gan-23/) (ECCV 2020) : [Paper](https://arxiv.org/abs/2004.00049)

<span style='background-color: #E5EBF7;'> **Disentangled Manipulation** </span>

- GANSpace: Discovering Interpretable GAN Controls (NeurIPS 2020) : [arxiv](https://arxiv.org/abs/2004.02546), [code](https://github.com/harskish/ganspace)
- GAN-Latent-Discovery: Unsupervised Discovery of Interpretable Directions in the GAN Latent Space (2020) : [arxiv](https://arxiv.org/abs/2002.03754), [code](https://github.com/anvoynov/GANLatentDiscovery)
- Editing in style: Uncovering the Local Semantics of GANs (CVPR 2020) : [arxiv](https://arxiv.org/abs/2004.14367), [code](https://github.com/IVRL/GANLocalEditing)
- InterFaceGAN Interpreting the Disentangled Face Representation Learned by GANs (TPAMI 2020) : [arxiv](https://arxiv.org/abs/2005.09635)
- StyleSpace: StyleSpace Analysis: Disentangled Controls for StyleGAN Image Generation (2021) : [arxiv](https://arxiv.org/abs/2011.12799), [code](https://github.com/xrenaa/StyleSpace-pytorch), [code2](https://github.com/happy-jihye/GAN/tree/main/StyleSpace)


<span style='background-color: #E5EBF7;'> **Image Editing** </span>

- [StyleCLIP: Text-Driven Manipulation of StyleGAN Imagery](https://happy-jihye.github.io/gan/gan-15/) (arXiv 2021) : [arxiv](https://arxiv.org/abs/2103.17249), [code](https://github.com/orpatashnik/StyleCLIP)
- sefa: Closed-Form Factorization of Latent Semantics in GANs (CVPR 2021) : [arxiv](https://arxiv.org/abs/2007.06600), [code](https://github.com/happy-jihye/GAN/tree/main/SEFA)
- EigenGAN: Layer-Wise Eigen-Learning for GANs : [arxiv](https://arxiv.org/abs/2104.12476), [code](https://github.com/bryandlee/eigengan-pytorch)
- StyleMapGAN: Exploiting Spatial Dimensions of Latent in GAN for Real-time Image Editing (CVPR 2021) : [arxiv](https://arxiv.org/abs/2104.14754), [code](https://github.com/naver-ai/StyleMapGAN)
- SEAN: Image Synthesis with Semantic Region-Adaptive Normalization (CVPR 2020) : [arxiv](https://arxiv.org/abs/1911.12861), [code](https://github.com/ZPdesu/SEAN)
- [CD3D: Cross-Domain and Disentangled Face Manipulation with 3D Guidance](https://happy-jihye.github.io/gan/gan-24/) (2021) : [arxiv](https://arxiv.org/abs/2104.11228), [code](https://github.com/cassiePython/cddfm3d), [project](https://cassiepython.github.io/sigasia/cddfm3d.html)


<span style='background-color: #E5EBF7;'> **Talking Head** </span>

- [Few-Shot Adversarial Learning of Realistic Neural Talking Head Models](https://happy-jihye.github.io/gan/gan-22/) (arxiv 2019) : [Paper](https://arxiv.org/abs/1905.08233)
- Neural Head Reenactment with Latent Pose Descriptors (IEEE 2020) : [Paper](https://arxiv.org/abs/2004.12000) 
- FOMM: First Order Motion Model for Image Animation (NeurIPS 2019) : [arxiv](https://arxiv.org/abs/2003.00196), [code](https://github.com/AliaksandrSiarohin/first-order-model)
- Motion Representations for Articulated Animation (CVPR 2021) : [arxiv](https://arxiv.org/abs/2104.11280), [code](https://github.com/snap-research/articulated-animation), [project](https://snap-research.github.io/articulated-animation/)