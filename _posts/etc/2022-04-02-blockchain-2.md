---
title: "[blockchain #02] 비트코인이란 무엇인가? (Bitcoin: A Peer-to-Peer Electronic Cash System 논문 리뷰)"
excerpt: ""

categories: 
  - blockchain
tags: 
  - blockchain
  - bitcoin
# 목차
toc: true  
toc_sticky: true 

---

> **Bitcoin: A Peer-to-Peer Electronic Cash System [[paper]](https://bitcoin.org/bitcoin.pdf)**
> 
> - 유명하디 유명한 사토시 나카모토의 논문
> - 논문이 이해하기 쉽고 간단하게 적혀있어서 한번쯤은 읽어보는 것을 추천한다.



## 1. BitCoin

- 기존 온라인 금융 시스템은 전자 거래의 신뢰성을 보장해주는 제 3자 금융기관이 필요했고, 이 때문에 user들은 소액 거래에도 많은 cost를 지불해야했음
- ⭐️ 비트코인은 신뢰(trust)가 아닌 **암호학적인 증명(cryptographic proof)에 기반을 둔 전자 금융 시스템**(electronic payment system)으로, 중간 매개체 없이 당사자들끼리 거래를 할 수 있게 하였음 (p2p transaction)
- ⭐️ 비트코인은 **거래를 시간 별로(time stamp) 분산 시스템에 저장**하여 돈이 이중으로 지불되는 문제를 해결
    - 기존 금융 시스템은 거래의 reversible(철회가능)한 속성을 신용으로써 보장을 했다면, 비트코인은 비가역적인 시스템을 만들어서 판매자가 사기당할 위험이 없도록 보장하였다.

## 2. Transactions

> electronic coin = a chain of digital signatures


거래는 다음의 과정을 통해 이뤄진다.

<p align='center'><img src='https://github.com/happy-jihye/happy-jihye.github.io/blob/master/_posts/images/etc/blockchain-2/Untitled.png?raw=1' width = '600' ></p>

만약 owner 1의 coin을 owner 2에게 넘겨준다고 한다면,

- owner 1이 이 coin을 소유하게 될 때까지의 `과거 거래(transaction)내역`과
- 새로운 owner인 owner2의 `public key`를

같이 암호화 (by hash func)한다. 

이후, 이전 소유(owner 1)이 서명(signature)를 진행하면 이 coin은 owner2의 소유가 된다.

---

이때, owner1가 해당 coin을 중복으로 사용할 수도 있다. (owner2에게도 팔고~~ owner3에게도 팔 수도 있음)

이를 방지하기 위해서 비트코인은 `현 거래가 해당 코인을 이용한 첫 거래`임을 증명하고자 거래가 언제 이루어지는지, 그 시점에 대해서도 함께 기록한다. 우리는 이를 기록하는 서버를 **timestamp server** 라고 부른다.

## 3. Timestamp Server

<p align='center'><img src='https://github.com/happy-jihye/happy-jihye.github.io/blob/master/_posts/images/etc/blockchain-2/Untitled%201.png?raw=1' width = '600' ></p>

Timestamp server에서는 특정 시점에서 거래되고 있는 수많은 item을 block화 한 후, 이 block들에 대해 hash를 취해 해당 거래들에 대한 시점을 기록해둔다. (이 hash 함수들은 널리 배포됨 + 각각의 time stamp는 이전 time stamp를 포함하고 있기 때문에 `-chain 형식-` 시간이 지날 수록 hash값는 강화된다; serial하게 hash값을 생성하기 때문에 block간의 순서가 바뀔 수 없음)

즉, 타임스탬프는 거래가 “언제” 이루어졌는지를 보증해주는 역할을 하기 때문에 블록체인을 활용하는 user들은 거래하고자 하는 coin이 “언제” 처음으로 거래되었는지를 확인할 수 있다.

## 4. Proof-of-Work

- 이 과정에 대한 자세한 설명은 [다음 글](https://m.blog.daum.net/rhaoslikesan/414?category=1281110)을 참고하시길 바랍니다 :)

time stamp는 각각의 거래들에 대한(block에 대한) 순서를 보장해주는 역할을 한다. 그러나 만약 어떤 이가 모든 블록에 대한 생성권리를 가지고 있다면, time stamp의 순서를 마음대로 바꿀 수 있다. 따라서 블록 생성에 대한 권리를 모두가 공평하게 가져야 각각의 block에 대한 독립성이 생기며, time stamp가 유지될 것이다.

비트코인에서는 각 노드들이 가지고 있는 CPU 갯수에 따라 블록을 생성할 권리를 random으로 준다. (`one-CPU-one-vote`)

- ~~비트코인 채굴장에 수많은 컴퓨터들이 있는 것도 이런 이유~~

때문에 중앙기관이 없음에도 불구하고, 각 노드에 비교적 골고루 블록체인의 생성권한을 배분할 수 있게 된다.

- 작업 증명 과정(Proof-of-Work)에서는 `sha256` 같은 해시함수를 사용해서, 연속된 0(zero) 값으로 이루어지는 비트열로 시작되는 해시값을 찾는 과정이 포함되는데, 이 과정에서 굉장히 많은 시간과 CPU가 소요되므로 누군가가 블록 생성에 대한 권한을 독점하기가 어렵다.

<p align='center'><img src='https://github.com/happy-jihye/happy-jihye.github.io/blob/master/_posts/images/etc/blockchain-2/Untitled%202.png?raw=1' width = '600' ></p>

비트코인을 해킹하려면, 이를 시도하는 사람(attacker)이 과거의 원하는 block을 수정해야할 뿐만 아니라 이로부터 생성되는 수많은 이후 block들도 전부 수정을 해야한다. (각각의 block이 serial한 chain으로 구성되어있기 때문에 원하는 block 이후의 모든 block들에 대해서 작업증명을 해야함)

따라서 공격자가 자원을 엄~~청 많이 갖고 있어서 특정 block을 수정할 수 있다고 해도, 그 이후의 모든 block까지 수정을 해야하기 때문에 이를 해킹하는 것은 매우 어렵다. 


> **To modify a past block, an attacker would have to redo the proof-of-work of the block and all blocks after it and then catch up with and surpass the work of the honest nodes.** We will show later that the probability of a slower attacker catching up diminishes exponentially as subsequent blocks are added.


또, 하나 특이한 점은 작업증명의 난이도(difficulty)를 계속해서 조절한다는 점이다.

- 만약 특정 시기에 비트코인 채굴(mining)을 시도하는 컴퓨터가 많다면 작업 증명의 난이도를 높이고,
- 컴퓨터가 적다면, 이 난이도를 낮춰서

시간 당 생성해내는 block의 수를 계속해서 조절한다.

## 5. Network

1. 새로운 거래들은 모든 노드에 브로드캐스트된다.
2. 각 노드는 새로운 거래들을 모아 블록에 넣는다.
3. 각 노드는 해당 블록에 대한 작업증명(proof-of-work)을 찾는 과정을 수행한다.
4. 어떤 노드가 작업증명을 찾았다면, 해당 블록을 모든 노드에게 브로드캐스트한다.
5. 노드들은, 브로드캐스트 받은 블록에 대해서, 블록 내 모든 거래가 유효하고 중복 사용되지 않았을 때, 해당 블록을 승인한다.
6. 노드들은, 그들이 해당 블록을 승인했다는 것을, 해당 블록의 해시를 이용해서 그다음 블록생성을 시작함으로써 암묵적으로 나타낸다.

노드들은 항상 최장길이의 chain이 옳은 것으로 간주하며, 만약에 2개의 node가 다음 block을 각각 broadcast 했다면, 일단 이 두 block에 대해서 작업을 수행한 후 향후 chain의 길이가 길다고 작업증명이 된 block만 남게된다.

## 6. Incentive

> (1) block내 첫번째 거래(transaction)에 대해 coin을 줌

이렇게 하면

- 수많은 computing resource를 제공하는 사람들에게 보상을 줄 수 있으며,
- 시장에 계속해서 일정량의 coin을 발행할 수 있다.

> (2) transaction fees


다만.. 화폐를 계속해서 찍어내는 방식으로 incentive를 주다보면 인플레이션 문제가 생길 수도 있다.

비트코인에서는 이 문제를 해결하기 위해 거래를 만드는 댓가로 블록 생성자에게 수수료를 지급하기도 하며, 거래자가 수수료를 높게 측정할수록 block에 해당 거래가 빨리 기록될 확률이 높아진다.

- coin의 유통량이 어느정도 수준을 넘어가고 나면, incentive는 transaction fees로만 운영

## 7. Reclaiming Disk Space

비트코인 시스템에서는 거래가 일어날 때마다 각각의 hash function이 필요하며, 이 때 생성되는 모든 hash function을 저장하려면 엄청 많은 용량이 필요하다. 이러한 문제점을 관리하기 위해 저자는 hash값들로 `머클 트리(Merkle Tree)`를 구성하였다. 이렇게 하면, block내의 모든 hash를 저장할 필요가 없게 되며, root hash만 저장하면 된다.

- 나중에 거래의 무결성을 증명하고자 할 때(특정 block이 작업증명이 된 정당한 block인지 확인하고자 할 때), block 내 모든 hash를 이용하여 머클 루트값을 계산한 후 저장된 머클 루트값과 비교하면 됨

<p align='center'><img src='https://github.com/happy-jihye/happy-jihye.github.io/blob/master/_posts/images/etc/blockchain-2/Untitled%203.png?raw=1' width = '600' ></p>

이와 같이 디스크 용량을 조절하다보면, 매년 1.2GB정도의 메모리만이 필요하다고 한다.

## 8. Simplified Payment Verification

블록체인을 통해 한 거래가 올바른 거래인지 확인할 때, 꼭 full network node가 필요한 것은 아니다. 

만약 user가 가장 긴 작업증명 chain의 block header의 복사본을 가지고 있다면, 확인하고자 하는 거래에 대한 타임 스탬핑이 되어있는 block의 merkle root값을 확인해보면 된다.

- 본인의 거래의 hash 값들을 통해 merkle root hash값을 계산한 후, block의 hash값과 비교!

<p align='center'><img src='https://github.com/happy-jihye/happy-jihye.github.io/blob/master/_posts/images/etc/blockchain-2/Untitled%204.png?raw=1' width = '600' ></p>

이런한 검증 방식은 attacker가 network 정보를 장악하고 있어 node들이 조작되어 있는 경우, 잘못된 결과를 내보낼 수 있다. 따라서 빈번하게 거래를 해야하는 사업의 경우 독자적으로 노드를 운영해서 검수를 받는 것이 좋을 것이다.

## 9. Combining and Splitting Value

비트코인에서는 송금 시스템이 약간 특이하다.

- 입금금액은 우리가 알고 있는 것처럼 여러 곳에서 보내온 돈이라고 생각하면 되고,
- 출금의 경우에는 상대방에게 주는 금액(A)와 나에게 보내는 금액(잔고-A)의 두 출금이 있다.
- 입금액이 출금액보다 큰 경우에 이 값은 수수료이다.
    - 수수료  = 입금액 - 출금액

<p align='center'><img src='https://github.com/happy-jihye/happy-jihye.github.io/blob/master/_posts/images/etc/blockchain-2/Untitled%205.png?raw=1' width = '350' ></p>

## 10. Privacy

<p align='center'><img src='https://github.com/happy-jihye/happy-jihye.github.io/blob/master/_posts/images/etc/blockchain-2/Untitled%206.png?raw=1' width = '750' ></p>

기존의 banking system은 거래와 관련된 정보들을 신뢰기관에게 전달하여 개인 정보를 보호하면서도, 거래의 유효성을 보장받고자 하였다.

<p align='center'><img src='https://github.com/happy-jihye/happy-jihye.github.io/blob/master/_posts/images/etc/blockchain-2/Untitled%207.png?raw=1' width = '600' ></p>

비트코인 시스템에서는 이러한 방식 대신 public key를 사용하는 방식을 채택하였다. 모든 거래는 public key를 통해 이뤄지므로 거래가 진행되고 있는 과정은 확인할 수 있지만, 거래를 하고 있는 주체가 실제로 누구인지는 확인할 수 없다. (익명)

## 11. Calculation

attackers가 아주 큰 computing resource를 가지고 있어서 정직한 chain보다 빠르게 chain을 만들어낸다고 해도 과거의 블럭을 수정하기는 어려움을 확률적으로 증명 파트(자세한 내용 생략)

---

**Reference**

['프로그래밍/블록체인' 카테고리의 글 목록](https://m.blog.daum.net/rhaoslikesan/category/%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%B0%8D/%EB%B8%94%EB%A1%9D%EC%B2%B4%EC%9D%B8)