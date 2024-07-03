Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AABA6926C75
	for <lists+linux1394-devel@lfdr.de>; Thu,  4 Jul 2024 01:31:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sP9RE-0000RM-9p;
	Wed, 03 Jul 2024 23:30:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sP9RD-0000RC-7n
 for linux1394-devel@lists.sourceforge.net;
 Wed, 03 Jul 2024 23:30:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Wk19BgkiX8lgErfCjZ7uFzpS8AsJuw3QkRtAF46r3yo=; b=QhDgqW90Y++inqV5reX31nAvw7
 WH8umu3nMl4Td2wvvq2jug8h72unxpbyd9z2VJihQQcC8PlYvLNozCptL1E0Tmh2B2+2/+Efvgg6r
 aO3wYelotoTvPx34B22SwttGirjBVPemKCT1gin79rk+fAqMCt9aIiU7mPjqkJKclVPM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Wk19BgkiX8lgErfCjZ7uFzpS8AsJuw3QkRtAF46r3yo=; b=BiNhPkw3eNLaFKtZ1zd0RhxeQQ
 iI34t4Qa4vpWp87zkYS+sRpCuaWLgZO14dJt7G0mmg28JZYepTIUncTbflHVf7W3GLUAU/HdK/YGb
 OtFcIjvAhX5q348mjKLnkYaLJCboE77AcbgcHmoZ6G6rfUzCP+FZiFrYrqxcJiHFPdYo=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sP9RC-0006Hf-05 for linux1394-devel@lists.sourceforge.net;
 Wed, 03 Jul 2024 23:30:58 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 846831140274;
 Wed,  3 Jul 2024 19:30:51 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Wed, 03 Jul 2024 19:30:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1720049451; x=
 1720135851; bh=Wk19BgkiX8lgErfCjZ7uFzpS8AsJuw3QkRtAF46r3yo=; b=k
 2e73T4WKwZjrZLCOCkSs5m4GWJ9t+EViJswf3KIGkqrXjSKH+cDyHC+C1FCnmrLf
 Ya+Me8DVeJR3B51pWoAlJAj/xhWsabhSCLa4uYiIc4kExhIj8iXrAME5IhXLGy3p
 8TlO0JI96hUwP5V1um/5xE6fcxtixRPZ/kX+ct2yzpwXfewwBEUayLvuGfWgX1QY
 lHZu+fhGnVpK2NENBe8AYTzYW9XB4pc3vB5Q7NVmjYXlCNqfs2BFb7di3QM7/EEr
 cJr36kdIhbfCHx1vQ0zevYUPvi0ZWnXxx8FvlRccXCd0Qg3i3BoCbWxslnjUUE02
 RHzq0OO9GlTMn3VAJ+LPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1720049451; x=1720135851; bh=Wk19BgkiX8lgErfCjZ7uFzpS8AsJ
 uw3QkRtAF46r3yo=; b=tpP7ooKBfmqDz+1Ob6MOPzzNvG7et4cDh46dNNCnnYUS
 s0mMHTme82NsYhLPUo+L2WhtMn+Swm8n4nuc4Vt86lsitL7AXXDogKfb4lfgVgz1
 x8GZc/IEVeVrQIvdveQG1n3V1q+jYIHQQvoVkKAiJZR3ZUsp+r7LY+j45fQfEVYd
 veV8vo8zjhL0EnnxXzifIyE0xUN1oDLdg9MnkWLDYgAEJgkFA7zisA2MIbIw7LFh
 GXxSffHbxJ78Omiu2t+n0GzedxMpPlQF3WbKo8NJ52YFIctXmFe0z7gFj46xxYu8
 /n7uA7Cmp9cKvc8iUiTvZaxTOqP472E++iRyxVOMnA==
X-ME-Sender: <xms:K9-FZvX9SxQqN8CC1oaGXJmyLe5rBhOllCAnD_gg45UDjXPgvGgenQ>
 <xme:K9-FZnlbV8ZGoISAaDDkrOG7kDdeau-ABw-47gXcK7u-AOoyX-VTvcRPnA9FI2MaO
 gQjsOighVjMYBokF0s>
X-ME-Received: <xmr:K9-FZrYATSixmIm8yojwRJRcRScJ7ezqoVvLl0nGkHlOEYaCUiS7mWN8vLXYB6nXNr8jnmldhnswB9lq4HZdjPYraiZZ9CXTwA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudekgddvudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfette
 fgkedvieeuffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:K9-FZqU9GBgTMmP2wZz22u1Ghj_0M9iTFsqGVYqbqgYXQW3gssCJaA>
 <xmx:K9-FZplBFDCvGdKNHGlT-JDcHTsGHsLSmZ-L0fJbSYCnpLmghs9zJw>
 <xmx:K9-FZncAglNWV63K9GkiiccQedD8hlss23ZD2AGHzZttGkR6PHPktQ>
 <xmx:K9-FZjGuFm3omMh75C4zsyBU3mTRQ1t5yffMRUiVtAamEDhCZJ0AlA>
 <xmx:K9-FZuyIQgZmju-Qg2QKlSYv06XaaumdS3wRWK0GUD8eBu0PPgp4cLX5>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 3 Jul 2024 19:30:50 -0400 (EDT)
Date: Thu, 4 Jul 2024 08:30:47 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/5] firewire: ohci: add tracepoints event for data of
 Self-ID DMA
Message-ID: <20240703233047.GA1441700@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240702222034.1378764-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240702222034.1378764-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jul 03, 2024 at 07:20:29AM +0900, Takashi Sakamoto
 wrote: > Hi, > > In IEEE 1394, Self identification process is the last step
 at > bus configuration process initiated by reset. In this step, [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.153 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.153 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.153 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.153 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sP9RC-0006Hf-05
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

On Wed, Jul 03, 2024 at 07:20:29AM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> In IEEE 1394, Self identification process is the last step at
> bus configuration process initiated by reset. In this step, all nodes at
> the bus broadcast self-ID packet according to the new topology. In 1394
> OHCI, the contents of the self-ID packet stream are transmitted to host
> system by DMA. This is Self-ID DMA, and configured by two registers,
> signaled by an interrupt, has a format of buffer.
> 
> Software handles the interrupt, then parse the contents of self-ID packet
> stream to detect all nodes in the bus. Finally it starts any type of
> operation in the bus. Both the timing to handle the interrupt and the
> data of DMA buffer are important as a first step to use the bus.
> 
> This series of patches is to add a tracepoints event to trace the
> interrupt and the data of DMA buffer. It would be useful to diagnose
> some kind of issue related to the self-ID process; e.g. hardware quirks.
> I also expect it useful to investigate the timing issue between hardIRQ
> and softIRQ contexts to process the contents of self-ID packets.
> 
> Takashi Sakamoto (5):
>   firewire: ohci: use common macro to interpret be32 data in le32 buffer
>   firewire: ohci: use static function to handle endian issue on PowerPC
>     platform
>   firewire: ohci: add static inline functions to deserialize for Self-ID
>     DMA operation
>   firewire: ohci: use inline functions to operate data of self-ID DMA
>   firewire: ohci: add tracepoints event for data of Self-ID DMA
> 
>  drivers/firewire/.kunitconfig        |  1 +
>  drivers/firewire/Kconfig             | 16 ++++++++
>  drivers/firewire/Makefile            |  1 +
>  drivers/firewire/ohci-serdes-test.c  | 56 ++++++++++++++++++++++++++
>  drivers/firewire/ohci.c              | 60 ++++++++++++++++++++--------
>  drivers/firewire/ohci.h              | 43 +++++++++++++++++++-
>  include/trace/events/firewire_ohci.h | 54 +++++++++++++++++++++++++
>  7 files changed, 213 insertions(+), 18 deletions(-)
>  create mode 100644 drivers/firewire/ohci-serdes-test.c

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
