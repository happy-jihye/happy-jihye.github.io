---
title: "Natural-Language-Processing"
permalink: /nlp/
toc_sticky: true
toc_ads : true
layout: single
---

<p align='right'> 
 <a href='https://github.com/happy-jihye/Natural-Language-Processing' role='button' target='_blank'> <img class='notebook-badge-image' src='/assets/badges/github.svg' alt='View On GitHub'> </a> 
</p>

Pytorch를 활용하여 자연어 처리에 대해 공부한 글입니다. 
궁금한 점이 있다면 댓글 남겨주세요 :)

## Papers

자연어처리 관련 paper들과 해당 논문 review입니다. 읽는 순서대로 업데이트할 예정입니다.


- [Sequence to Sequence Learning with Neural Networks](https://arxiv.org/abs/1409.3215)(2014) : [Review](https://happy-jihye.github.io/nlp/nlp-6/) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/happy-jihye/Natural-Language-Processing/blob/main/code/1_Sequence_to_Sequence_Learning_with_Neural_Networks.ipynb)

- [Learning Phrase Representations using RNN Encoder-Decoder for Statistical Machine Translation](https://arxiv.org/abs/1406.1078)(2014) : [Review](https://happy-jihye.github.io/nlp/nlp-7/) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/happy-jihye/Natural-Language-Processing/blob/main/code/2_Learning_Phrase_Representations_using_RNN_Encoder_Decoder_for_Statistical_Machine_Translation.ipynb)

- [Transformer : Attention is All you need](https://arxiv.org/abs/1706.03762)(2017) : [Review](https://happy-jihye.github.io/nlp/nlp-8/) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/happy-jihye/Natural-Language-Processing/blob/main/code/6_Attention_is_All_You_Need.ipynb)

- [Reformer: The Efficient Transformer](https://arxiv.org/abs/2001.04451)(2020) : [Review](https://happy-jihye.github.io/nlp/nlp-10/)

- [Visual Transformer(ViT) : An Image is Worth 16X16 Words: Transformers for Image Recognition at Scale](https://arxiv.org/abs/2010.11929)(2020) : [Review](https://happy-jihye.github.io/nlp/nlp-9/)

- [ELMo : Deep contextualized word representations](https://arxiv.org/abs/1802.05365)(2018)

- [BERT : Pre-training of Deep Bidirectional Transformers for Language Understanding](https://arxiv.org/abs/1810.04805)(2019)



## Tutorials

- bentrevett의 pytorch tutorial을 통해 학습한 내용입니다. 


**감정 분석 모델(Sentiment Analysis)** 


1 - [RNN을 이용한 간단한 감정 분석 모델](https://happy-jihye.github.io/nlp/nlp-1/) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/happy-jihye/Natural-Language-Processing/blob/main/1_Simple_Sentiment_Analysis.ipynb)

  - Pytorch의 torchtext를 이용한 간단한 프로젝트입니다. 
  - torchtext의 인터넷 영화 데이터베이스(IMDb dataset)을 Recurrent Neural network(RNN)를 통해 학습시켜 영화의 review가 긍정적인 리뷰인지, 부정적인 리뷰인지를 판단합니다. 
  - 이 튜토리얼에서는 load data, create train/test/validation splits, build a vocabulary, create data iterators, define a model and implement the train/evaluate/test loop 를 배울 수 있습니다. 
  - 머신러닝 파이프라인을 간략하게나마 학습하기 위한 튜토리얼이므로 performance가 좋지 않습니다.  

2 - [다양한 RNN architecture(LSTM, Bidirectional RNN, multilayer RNN 등)을 이용한 감정 분석 모델](https://happy-jihye.github.io/nlp/nlp-2/) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/happy-jihye/Natural-Language-Processing/blob/main/2_Updated_Sentiment_Analysis.ipynb)

  - 1에서 구현한 workflow를 변형하여 정확도를 높인 모델입니다. 
  - 1과 마찬가지로 IMDB dataset을 이용하였습니다.
  - computation 속도를 높이기 위해 Packed padded Sequence의 방식을 사용하였고, pre-trained word embeddings과 다양한 RNN model을 사용하여 performance를 향상시켰습니다. 
  - 이 model에서는 LSTM, bidirectional-RNN, multi-layer RNN 등을 공부할 수 있습니다.

3 - [FastText model을 이용한 감정 분석 모델](https://happy-jihye.github.io/nlp/nlp-3/) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/happy-jihye/Natural-Language-Processing/blob/main/3_Faster_Sentiment_Analysis.ipynb)

  - RNN을 사용하지 않고 [Bag of Tricks for Efficient Text Classification](https://arxiv.org/abs/1607.01759) 논문의 FastText model을 활용하여 computation speed를 향상시켰습니다. 
  - 2개의 layer(embedding layer와 linear layer)로 구현된 모델로, 2보다 더 간단하지만 속도는 빠르고 성능 또한 괜찮은 모델입니다.
  - tutorial1, 2 마찬가지로 IMDB dataset을 이용하였습니다.

4 - [Convolutional neural network을 이용한 문장 분류 모델](https://happy-jihye.github.io/nlp/nlp-4/) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/happy-jihye/Natural-Language-Processing/blob/main/4_Convolutional_Sentiment_Analysis.ipynb)

  - 컴퓨터 비전 분야에서 자주 사용되는 네트워크인 Convolutional neural network(CNN)를 사용하여 감정 분석을 하였습니다.
  - [Convolutional Neural Networks for Sentence Classification paper](https://arxiv.org/abs/1408.5882)의 model을 사용하였습니다.

5 - [Convolutional neural network을 이용한 다중 클래스 분류 모델(pytorch)](https://happy-jihye.github.io/nlp/nlp-5/) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/happy-jihye/Natural-Language-Processing/blob/main/5_Multi_class_Sentiment_Analysis.ipynb)

  - 이전까지의 tutorial에서는 이진 분류에 대해서 학습하였다면, tutorial5에서는 여러 개의 클래스를 가진 데이터세트에 대해 분류하는 법을 학습하였습니다. 
  - Convolutional Neural Network를 사용하여 model을 구현했습니다.


**Seq2Seq Model**
- 1 - [Seq2Seq Model - Sequence to Sequence Learning with Neural Networks 논문 리뷰 및 코드 실습](https://happy-jihye.github.io/nlp/nlp-6/) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/happy-jihye/Natural-Language-Processing/blob/main/1_Sequence_to_Sequence_Learning_with_Neural_Networks.ipynb)

  - NMT 분야에 최초로 Seq2Seq model을 적용한 논문인 [Sequence to Sequence Learning with Neural Networks](https://arxiv.org/abs/1409.3215) paper의 모델을 간단하게 구현하였습니다.
  - 이 notebook에서는 Encoder-Decoder 구조에 대해 학습할 수 있으며, 독일어를 영어로 번역하는 간단한 예제를 만들어볼 수 있습니다.

- 2 - [Learning Phrase Representations using RNN Encoder-Decoder for Statistical Machine Translation 논문 리뷰 및 코드 실습](https://happy-jihye.github.io/nlp/nlp-7/) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/happy-jihye/Natural-Language-Processing/blob/main/2_Learning_Phrase_Representations_using_RNN_Encoder_Decoder_for_Statistical_Machine_Translation.ipynb)

  - Seq2Seq model과 GRU model을 최초로 제안한 논문인 [Sequence to Sequence Learning with Neural Networks](https://arxiv.org/abs/1409.3215) paper의 모델을 간단하게 구현하였습니다.

- 3 - [Transformer : Attention is All You Need 논문 분석 및 코드 실습](https://happy-jihye.github.io/nlp/nlp-8/) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/happy-jihye/Natural-Language-Processing/blob/main/code/6_Attention_is_All_You_Need.ipynb)

  - 대표적인 nlp 모델인 Transformer 설명 및 코드 실습입니다.


## Reference 
- [https://github.com/bentrevett/pytorch-sentiment-analysis](https://github.com/bentrevett/pytorch-sentiment-analysis)


