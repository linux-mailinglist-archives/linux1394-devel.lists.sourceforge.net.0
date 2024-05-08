Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D838C079F
	for <lists+linux1394-devel@lfdr.de>; Thu,  9 May 2024 01:22:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s4qcU-0007Dp-AM;
	Wed, 08 May 2024 23:22:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s4qcT-0007Dh-6Z
 for linux1394-devel@lists.sourceforge.net;
 Wed, 08 May 2024 23:22:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PqBmtiMR6pS/tekKeSNhOa3yqevNRmTxuIESSK02LFc=; b=DqSdkuhNdDCZIgyHM2WJurnCEW
 jNAWivvqHdzkWWSzHDlJOJwg3PFxhWrrRBQ1TxyN0j5cK4coM/iH8FbUc7FyNc1Y6eSlqmmANP4wo
 g0VkshNH7Mpxyxa16Vd/k3+ssK5qNQ2+qG5YDc2wBATX0F2PTt7BeB0Vzb1aB5M34ThE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PqBmtiMR6pS/tekKeSNhOa3yqevNRmTxuIESSK02LFc=; b=I/DU6nUfO5IxwlMS87gfAtLM8v
 m0WyiYD3RmJixvQlW+KIZ/wtv+Rh9X33SWF0xhx8+JOOsvOgzAlqBD9ogg0qu8wJ/1IwdxchdsE9R
 9LB7FxOwb51pEQmgJvmmM8xngqRlrQUsLYZQBMNoXmIWpgcfdwr7UI++GhwpBxqH+B1s=;
Received: from fhigh4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s4qcT-0003mw-Dp for linux1394-devel@lists.sourceforge.net;
 Wed, 08 May 2024 23:22:41 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id EF2B61140165;
 Wed,  8 May 2024 19:22:29 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Wed, 08 May 2024 19:22:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1715210549; x=
 1715296949; bh=PqBmtiMR6pS/tekKeSNhOa3yqevNRmTxuIESSK02LFc=; b=L
 XoP1o3/MaG7ZKFLGJn9zRvBzslXe0kASTMbNYLTvh9oLGHqcbTTL7JF07E5lkQUd
 kNEJxmCnP4b4xzLcLGQA3sEei0QaXHTghCaItqUPu+7PR7/5ftT5t3x5BxYfhPgn
 oMiGHO/SSoa0Mg9zhABoBocPbMlUaGOBFwhiszLk8FMb7YNb5z0+RqJiYCE+4p58
 LYelow9xtIa5QNJBhxuHuyag7C6oqDvTY/sO0l5i6aZMWmaP7Mj3anjNDJxkfO0P
 ezMdTTn4rgmX9MWS/rq5QXK9yf9ahY2fffvZgJd+h580ykX3Fb58rgI2F9rVNpcR
 eZ7gqVNM7udaX8CDK406A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1715210549; x=1715296949; bh=PqBmtiMR6pS/tekKeSNhOa3yqevN
 RmTxuIESSK02LFc=; b=DamMVyl5VV4JB02JP6Gg309He8zHcpTAouBNipQ07axb
 aJJGxNLmEDgud1NCzenP+OUoRfJfiSuzzwqiXmXpRz4S0obKKbCeFyUg/ngfI7w9
 qPkr3C5TzxlXltuyfSPD8Gq1ufWBpAFAnZI4Mi0XT4+VgNJ36LH/R2QynzYAh5YJ
 VB7JdUyEzcaiviid1DaMu3mSyQlbLoGDgXn4TyujUyzLnb+we4LpT6kN/S3cjCTA
 rSTCUjP24g8xy57qJZnFZXtG0WCEfh8Savy+/AbqiWair7ObowyRkIrejnmU973s
 9Z7bpzmk7QWkhHfo44TV8AUk02/EsEizxPcMV83eUw==
X-ME-Sender: <xms:NQk8Zqs7t7v_OnhC-VlHZmnMu-hqq3MhAWRS219DexdzGyW70ab9mA>
 <xme:NQk8ZvclOiA7V-yrUoH0xe-LxOwwW91oI6QtwdDniKSgnCVeb3Pnb8P2doTuyAyfB
 vx9dNzgRtQLXdyrfLc>
X-ME-Received: <xmr:NQk8Zlxs8h_MenB-tD5zjk97eoAxJ4MFA5OTt7bKyLrcJLoaEhmHW_YhqVxRuKF0pDEgxN-sI8yN_egklIDBmXsSBk-P94lOKQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdefuddgvdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhte
 etgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:NQk8ZlM3RlkRmooEL5722T4VR-7oXnq6lSPQuY8LnmBw_nsvD6RyrA>
 <xmx:NQk8Zq_kYU9F2HkRKzxaNE1MtCMx5DzXi7RuTBTn4cgerCt85tY9_g>
 <xmx:NQk8ZtU0XtRYl4phR9EcREhxl4WtLWYWolfWnAj4gN_2zTh2aurnpQ>
 <xmx:NQk8ZjdujezXgOd5eoCKF464krudlM9tQRTvncRNfMrQmgqhAT8YRw>
 <xmx:NQk8ZsI4vYP--ZOmKsfJKcvixDYopFHPx8pUs4VOgftb7xcP50hCYW8T>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 8 May 2024 19:22:28 -0400 (EDT)
Date: Thu, 9 May 2024 08:22:26 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: obsolete usage of *-objs in Makefile for KUnit
 test
Message-ID: <20240508232226.GA31582@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240508105351.532693-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240508105351.532693-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, May 08, 2024 at 07:53:51PM +0900, Takashi Sakamoto
 wrote: > Nowadays *-objs list is just for user space programs. > > This commit
 obsolete the usage, and simplify Makefile for firewire KUnit > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.155 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1s4qcT-0003mw-Dp
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Wed, May 08, 2024 at 07:53:51PM +0900, Takashi Sakamoto wrote:
> Nowadays *-objs list is just for user space programs.
> 
> This commit obsolete the usage, and simplify Makefile for firewire KUnit
> tests since the tests are not composite objects.
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/Makefile | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/firewire/Makefile b/drivers/firewire/Makefile
> index 013e1f2641bd..75c47d046925 100644
> --- a/drivers/firewire/Makefile
> +++ b/drivers/firewire/Makefile
> @@ -16,8 +16,5 @@ obj-$(CONFIG_FIREWIRE_NET)  += firewire-net.o
>  obj-$(CONFIG_FIREWIRE_NOSY) += nosy.o
>  obj-$(CONFIG_PROVIDE_OHCI1394_DMA_INIT) += init_ohci1394_dma.o
>  
> -firewire-uapi-test-objs += uapi-test.o
> -firewire-packet-serdes-test-objs += packet-serdes-test.o
> -
> -obj-$(CONFIG_FIREWIRE_KUNIT_UAPI_TEST) += firewire-uapi-test.o
> -obj-$(CONFIG_FIREWIRE_KUNIT_PACKET_SERDES_TEST) += firewire-packet-serdes-test.o
> +obj-$(CONFIG_FIREWIRE_KUNIT_UAPI_TEST) += uapi-test.o
> +obj-$(CONFIG_FIREWIRE_KUNIT_PACKET_SERDES_TEST) += packet-serdes-test.o
> -- 
> 2.43.0

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
