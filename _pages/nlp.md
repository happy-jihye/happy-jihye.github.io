---
title: "Natural-Language-Processing"
permalink: /nlp/
toc_sticky: true
toc_ads : true
layout: single
---



Pytorch를 활용하여 자연어 처리에 대해 공부한 글입니다. 
궁금한 점이 있다면 댓글을 남겨주세요 :)


### Posts 

**감정 분석 모델(Sentiment Analysis)** 
[GitHub](https://github.com/happy-jihye/Natural-Language-Processing)

1 - [RNN을 이용한 간단한 감정 분석 모델](https://happy-jihye.github.io/nlp/1_Simple_Sentiment_Analysis/) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/happy-jihye/Natural-Language-Processing/blob/main/1_Simple_Sentiment_Analysis.ipynb)

  - Pytorch의 torchtext를 이용한 간단한 프로젝트입니다. 
  - torchtext의 인터넷 영화 데이터베이스(IMDb dataset)을 Recurrent Neural network(RNN)를 통해 학습시켜 영화의 review가 긍정적인 리뷰인지, 부정적인 리뷰인지를 판단합니다. 
  - 이 튜토리얼에서는 load data, create train/test/validation splits, build a vocabulary, create data iterators, define a model and implement the train/evaluate/test loop 를 배울 수 있습니다. 
  - 머신러닝 파이프라인을 간략하게나마 학습하기 위한 튜토리얼이므로 performance가 좋지 않습니다.  

2 - [다양한 RNN architecture(LSTM, Bidirectional RNN, multilayer RNN 등)을 이용한 감정 분석 모델](https://happy-jihye.github.io/nlp/2_Updated_Sentiment_Analysis/) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/happy-jihye/Natural-Language-Processing/blob/main/2_Updated_Sentiment_Analysis.ipynb)

  - 1에서 구현한 workflow를 변형하여 정확도를 높인 모델입니다. 
  - 1과 마찬가지로 IMDB dataset을 이용하였습니다.
  - computation 속도를 높이기 위해 Packed padded Sequence의 방식을 사용하였고, pre-trained word embeddings과 다양한 RNN model을 사용하여 performance를 향상시켰습니다. 
  - 이 model에서는 LSTM, bidirectional-RNN, multi-layer RNN 등을 공부할 수 있습니다.

3 - [FastText model을 이용한 감정 분석 모델](https://happy-jihye.github.io/nlp/3_Faster_Sentiment_Analysis/) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/happy-jihye/Natural-Language-Processing/blob/main/3_Faster_Sentiment_Analysis.ipynb)

  - RNN을 사용하지 않고 [Bag of Tricks for Efficient Text Classification](https://arxiv.org/abs/1607.01759) 논문의 FastText model을 활용하여 computation speed를 향상시켰습니다. 
  - 2개의 layer(embedding layer와 linear layer)로 구현된 모델로, 2보다 더 간단하지만 속도는 빠르고 성능 또한 괜찮은 모델입니다.
  - tutorial1, 2 마찬가지로 IMDB dataset을 이용하였습니다.

4 - [Convolutional neural network을 이용한 문장 분류 모델](https://happy-jihye.github.io/nlp/4_Convolutional_Sentiment_Analysis/) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/happy-jihye/Natural-Language-Processing/blob/main/4_Convolutional_Sentiment_Analysis.ipynb)

  - 컴퓨터 비전 분야에서 자주 사용되는 네트워크인 Convolutional neural network(CNN)를 사용하여 감정 분석을 하였습니다.
  - [Convolutional Neural Networks for Sentence Classification paper](https://arxiv.org/abs/1408.5882)의 model을 사용하였습니다.

5 - [Convolutional neural network을 이용한 다중 클래스 분류 모델(pytorch)](https://happy-jihye.github.io/nlp/5_Multi_class_Sentiment_Analysis/) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/happy-jihye/Natural-Language-Processing/blob/main/5_Multi_class_Sentiment_Analysis.ipynb)

  - 이전까지의 tutorial에서는 이진 분류에 대해서 학습하였다면, tutorial5에서는 여러 개의 클래스를 가진 데이터세트에 대해 분류하는 법을 학습하였습니다. 
  - Convolutional Neural Network를 사용하여 model을 구현했습니다.

## Reference 
- https://github.com/bentrevett/pytorch-sentiment-analysis

