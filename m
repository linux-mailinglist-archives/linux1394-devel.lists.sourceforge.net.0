Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F48E8B76A2
	for <lists+linux1394-devel@lfdr.de>; Tue, 30 Apr 2024 15:11:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s1nGT-0008Hg-PE;
	Tue, 30 Apr 2024 13:11:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s1nGL-0008HP-84
 for linux1394-devel@lists.sourceforge.net;
 Tue, 30 Apr 2024 13:11:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bmnKQg4HJkWbFP4JL8uFAX2dV8OePxoK7bLCssuU2AM=; b=ZWN14lQsAmKn/u84w1HnOtgXw+
 IuKy5R0tK2t1pMlKYeXqMO5fLg6f0qMOoywTJ4ws84xHzDqInCyUmBWdNBRx9IL/xFC2Jg2NEhif9
 +7jvOhurCgn3I9sFxCKdSBgyfF+AyhPLsl2AVYYz/GbwWLupnB9PMR+nPKE0k2RR/wAw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bmnKQg4HJkWbFP4JL8uFAX2dV8OePxoK7bLCssuU2AM=; b=C0X/OTHNFMkck/7W8StXQRvX9q
 pUM9YxJsmMHT9ggoeyiXMvqUSVCE4ULyKD9FmsgN0XMn/Lhmw9ZuBLvv+id06YoVhPaJLjfcQHdUU
 ni6LgXqJuef7YPV8wfuGtpqGZoriMtrg4hgdzwTtKTWNR8di02JbgwvBTu8k/CNCAl2A=;
Received: from wfhigh6-smtp.messagingengine.com ([64.147.123.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1nGJ-00051P-AE for linux1394-devel@lists.sourceforge.net;
 Tue, 30 Apr 2024 13:11:13 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfhigh.west.internal (Postfix) with ESMTP id CBF0D1800125;
 Tue, 30 Apr 2024 09:11:05 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Tue, 30 Apr 2024 09:11:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714482665; x=
 1714569065; bh=bmnKQg4HJkWbFP4JL8uFAX2dV8OePxoK7bLCssuU2AM=; b=L
 Yg6KpbA+V1II8lfo6lP55lmlhmiEuA6l8bX7Dp7maQnHeH0M5GwH8qBVk8thF3ch
 2WD3S2xINi4Xd/j6a4DjlyVNsRz7RdQSlMlfIgeWM6aib9B8C5d54HDHLQKc5PpX
 h7aIpjHA/loWoYLSeoIs5pRL4INvMr0AQlkRYBB8VFDaZjC6mxljYuunqYYGcqTw
 9n2xLi2PHJEfP01utISe6mD22tSGBMNJbjaEfgzKSL9Hmfy+8HaX4xeb6FoghYZ/
 3c3bCtGceKIv8I/hHAzYNKGN9eH49kRgv3DXcI2sXsipVn7KqY+C63inWB3B3OGg
 LtRtW5ObuC7zAJGitU0ZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1714482665; x=1714569065; bh=bmnKQg4HJkWbFP4JL8uFAX2dV8Oe
 PxoK7bLCssuU2AM=; b=HwktPQ2okoRBy4AHIGDduYT6OvhyROLH4YRWdPWm4NG8
 DHkNpR4kICMaVH/HIFjmSsG00Ro/rw3I8SSLcp/ZqW4Z4D0OZmM5FZxhKfDtw3pr
 CPu7c7G9s0m/CCAG6PmtrNMjqTN0PAxB2yruOneWIqN6klClNCi97WnnU49WbZtd
 RexK50EohYPO3JzY6rzHWeL83cK5jAPjTo/iiiOpZRuvDRttIgIoaIdu75zZvUVR
 30uOz96aZ2P5hlelTdlOmeRVs4C+AgrkEJHOCAYbr0dN7Nf1b5LIILwSC2GqOu0v
 oh5brEsXDE8bF3t336pXZrdbpOyDdUjUp5EL0JtrNQ==
X-ME-Sender: <xms:6O0wZiRYlb0qMSGVf1T-YeVK0nPqyVpQ7jMn8EEufqdCnbeFGywnig>
 <xme:6O0wZnz77KYaJAq0AuWNGuMy0iXAuLqi-lJEvYn2N27-hZftzNCBtQl5x8MSiySra
 yDRjGMKztQZ_3SfDT8>
X-ME-Received: <xmr:6O0wZv3TiFKuiTXhC1gnfllexyVXN-H7qm-NaOUAqjJYmG26aP2Ym3bfe6gtEPwbqXY_C5h46-cMtKSWS1n6laXeMK-RE-96mQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddufedgiedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhte
 etgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:6O0wZuD81ipGu2q4Crkx_nvTfUcQFoAxFPVUHmT5vD8o1Y1RFugW8g>
 <xmx:6O0wZrivfv9-3g6GbDlXSXblFjM8Ow8BCwSLHNev9JetuORs_1L8Lw>
 <xmx:6O0wZqq9Vqk2myGp7clUvOwyfdpCifYm2YZylSrHHWJr74yrKBM-4g>
 <xmx:6O0wZugOq79va1niiKWHFE8FUwvXLA4aFh9kvzMx0CPgMqQ7Umfc-Q>
 <xmx:6e0wZuv72gg2jrw5w-nNp7cBHnOedeAVkXqsWucxJAe0YXgNHnn9REwm>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 30 Apr 2024 09:11:03 -0400 (EDT)
Date: Tue, 30 Apr 2024 22:11:00 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/2] firewire: core/cdev: add tracepoints events for
 asynchronous phy packet
Message-ID: <20240430131100.GA7699@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240430001404.734657-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240430001404.734657-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 30, 2024 at 09:14:02AM +0900, Takashi Sakamoto
 wrote: > Hi, > > In IEEE 1394 bus, the type of asynchronous packet without
 any offset to > node address space is called as phy packet. The de [...] 
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
 for more information. [64.147.123.157 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1s1nGJ-00051P-AE
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

On Tue, Apr 30, 2024 at 09:14:02AM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> In IEEE 1394 bus, the type of asynchronous packet without any offset to
> node address space is called as phy packet. The destination of packet is
> IEEE 1394 phy itself. This type of packet is used for several purposes,
> mainly for selfID at the state of bus reset, to force selection of root
> node, and to adjust gap count.
> 
> This series of changes is to add tracepoints events for this kind of
> asynchronous packets.
> 
> Takashi Sakamoto (2):
>   firewire: core/cdev: add tracepoints events for asynchronous phy
>     packet
>   firewire: core: add tracepoints event for asynchronous inbound phy
>     packet
> 
>  drivers/firewire/core-cdev.c        |  7 +++
>  drivers/firewire/core-transaction.c |  8 +++
>  include/trace/events/firewire.h     | 78 +++++++++++++++++++++++++++++
>  3 files changed, 93 insertions(+)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
